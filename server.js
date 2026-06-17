const express = require("express");
const mysql = require("mysql2");
const cors = require("cors");
const Groq = require("groq-sdk");
const groq = new Groq({apiKey: "----"});
const app = express();

app.use(cors());
app.use(express.json()); 

// CONEXÃO COM MYSQL
const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "1509",
  database: "astralis"
});

db.connect((err) => {
  if (err) {
    console.log("Erro ao conectar:", err);
    return;
  }
  console.log("Banco conectado!");
});

// TESTE
app.get("/", (req, res) => {
  res.send("Astralis funcionando!");
});

// LISTAR ESTRELAS
app.get("/estrelas", (req, res) => {
  db.query(
    "SELECT * FROM estrelas",
    (err, result) => {
      if (err) {
        return res.status(500).json(err);
      }
      res.json(result);
    }
  );

});

// RESULTADO DO QUESTIONÁRIO
app.post("/resultado", (req, res) => {

  const perfil = req.body.perfil || [];

  db.query(
    "SELECT * FROM estrelas",
    (err, estrelas) => {

      if (err) {
        return res.status(500).json(err);
      }

      let ranking = [];

      estrelas.forEach((estrela) => {

        let pontos = 0;

        const caracteristicasEstrela =
          estrela.caracteristicas
            .toLowerCase()
            .split(",");

        perfil.forEach((caracteristica) => {

          if (
            caracteristicasEstrela.includes(
              caracteristica.toLowerCase()
            )
          ) {
            pontos++;
          }

        });

        ranking.push({
          estrela,
          pontos
        });

      });

      ranking.sort(
        (a, b) => b.pontos - a.pontos
      );

      const melhor = ranking[0];

      const compatibilidade =
        Math.round(
          (melhor.pontos / perfil.length) * 100
        );

      res.json({
        estrela: melhor.estrela,
        pontuacao: melhor.pontos,
        compatibilidade,

        top3: [
          {
            nome: ranking[0].estrela.nome,
            pontos: ranking[0].pontos
          },
          {
            nome: ranking[1].estrela.nome,
            pontos: ranking[1].pontos
          },
          {
            nome: ranking[2].estrela.nome,
            pontos: ranking[2].pontos
          }
        ]
      });

    }
  );

});

app.post("/interpretacao", async (req, res) => {

  try {

    const estrela = req.body.estrela;
    const perfil = req.body.perfil || [];

const prompt = `
Você é o Oráculo Astralis.

Nome da estrela:
${estrela.nome}

Constelação:
${estrela.constelacao}

Características:
${estrela.caracteristicas}

Descrição:
${estrela.descricao_real}

Perfil do usuário:
${perfil.join(", ")}

Gere exatamente nesta estrutura:

🌟 RESUMO DA PERSONALIDADE

(texto)

💪 POTENCIAIS

- item
- item
- item

⚠️ DESAFIOS

- item
- item
- item

📊 COMPATIBILIDADE COM A ESTRELA

(texto curto)

🔭 CURIOSIDADE ASTRONÔMICA

Gere uma curiosidade REAL da astronomia sobre a estrela.
Evite frases genéricas como "é brilhante" ou "fica em Orion".

Prefira:
- tamanho comparado ao Sol
- temperatura
- distância da Terra
- curiosidades científicas
- fatos raros

🌠 MENSAGEM FINAL

(texto inspirador)

Escreva tudo em português.
`;

    const resposta = await groq.chat.completions.create({
      messages: [
        {
          role: "user",
          content: prompt
        }
      ],
      model: "llama-3.3-70b-versatile"
    });

    const texto =
      resposta.choices[0].message.content;

    res.json({
      interpretacao: texto
    });

  } catch (erro) {

    console.log(erro);

    res.status(500).json({
      erro: "Erro ao gerar interpretação"
    });

  }

});

app.post("/salvarResultado", (req, res) => {
  const {
    nome,
    email,
    estrela,
    perfil,
    interpretacao
  } = req.body;

    const sql = `
    INSERT INTO resultados
    (nome,email,estrela,perfil,interpretacao)
    VALUES (?,?,?,?,?)
`;

db.query(
  sql,
  [
    nome,
    email,
    estrela,
    JSON.stringify(perfil),
    interpretacao
  ],
  (err, result) =>  {
    if(err){
      console.log(err);
      return res.status(500).json(err);
    }
    res.json({
      sucesso:true
    });
    }
  );
});

app.get("/resultados",(req,res)=>{
db.query(
"SELECT * FROM resultados ORDER BY id DESC",
(err,result)=>{
  if(err){
    return res.send("Erro ao carregar");
  }

let html = `
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Astralis - Resultados</title>
    <style>

      body{
        font-family:Arial;
        background:#0f172a;
        color:white;
        padding:30px;
      }

      table{
        width:100%;
        border-collapse:collapse;
        background:#1e293b;
      }

      th,td{
        padding:12px;
        border:1px solid #334155;
      }

      th{
        background:#4f46e5;
      }

      tr:hover{
        background:#334155;
      }

    </style>
  </head>
  <body>

  <h1>🌌 Resultados Astralis</h1>

  <table>
    <tr>
    <th>ID</th>
    <th>Nome</th>
    <th>Email</th>
    <th>Estrela</th>
    <th>Data</th>
    </tr>
    `;

    result.forEach(r=>{

    html += `
    <tr>
    <td>${r.id}</td>
    <td>${r.nome}</td>
    <td>${r.email}</td>
    <td>${r.estrela}</td>
    <td>${new Date(r.data_resultado).toLocaleString()}</td>
    </tr>
    `;

    });

    html += `
  </table>
  </body>
</html>
`;

res.send(html);
});

});
// INICIAR SERVIDOR
app.listen(3001, () => {
  console.log("Servidor rodando na porta 3001");
});