-- BANCO DE DADOS ASTRALIS

DROP DATABASE IF EXISTS astralis;
CREATE DATABASE astralis;

USE astralis;

-- TABELA DE ESTRELAS

CREATE TABLE estrelas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    constelacao VARCHAR(100) NOT NULL,
    descricao_real TEXT NOT NULL,
    caracteristicas TEXT NOT NULL,
    justificativa TEXT NOT NULL
);

-- DADOS DAS ESTRELAS

INSERT INTO estrelas
(nome,constelacao,descricao_real,caracteristicas,justificativa)

VALUES

(
'Sirius',
'Canis Major',
'Estrela mais brilhante do céu noturno.',
'confianca,destaque,lideranca',
'Seu brilho excepcional a torna facilmente reconhecivel.'
),

(
'Adhara',
'Canis Major',
'Uma das estrelas mais brilhantes da constelacao do Cao Maior.',
'estabilidade,lealdade,firmeza',
'Sua presenca marcante sugere confiabilidade e constancia.'
),

(
'Wezen',
'Canis Major',
'Supergigante amarela da constelacao do Cao Maior.',
'protecao,apoio,generosidade',
'Seu grande tamanho inspira acolhimento e suporte.'
),

(
'Canopus',
'Carina',
'Segunda estrela mais brilhante visivel da Terra.',
'sabedoria,orientacao,experiencia',
'Foi uma importante referencia de navegacao no hemisferio sul.'
),

(
'Miaplacidus',
'Carina',
'Segunda estrela mais brilhante da constelacao Carina.',
'equilibrio,serenidade,paciencia',
'Seu brilho constante foi associado a estabilidade.'
),

(
'Aspidiske',
'Carina',
'Estrela gigante da constelacao Carina.',
'perseveranca,foco,constancia',
'Sua longa evolucao estelar simboliza persistencia.'
),

(
'Alpha Centauri',
'Centaurus',
'Sistema estelar mais proximo do Sistema Solar.',
'proximidade,curiosidade,conexao',
'E nosso vizinho estelar mais proximo.'
),

(
'Hadar',
'Centaurus',
'Uma das estrelas mais brilhantes de Centaurus.',
'forca,coragem,determinacao',
'Seu intenso brilho remete a energia e firmeza.'
),

(
'Menkent',
'Centaurus',
'Gigante vermelha localizada em Centaurus.',
'independencia,autoconfianca,iniciativa',
'Sua posicao inspira autonomia e individualidade.'
),

(
'Betelgeuse',
'Orion',
'Gigante vermelha muito famosa da constelacao de Orion.',
'paixao,intensidade,forca',
'Seu tamanho e destaque inspiram intensidade.'
),

(
'Rigel',
'Orion',
'Estrela azul extremamente brilhante de Orion.',
'ambicao,coragem,determinacao',
'Seu brilho poderoso simboliza objetivos elevados.'
),

(
'Bellatrix',
'Orion',
'Uma das estrelas mais brilhantes de Orion.',
'lideranca,independencia,confianca',
'Seu nome significa guerreira.'
),

(
'Aldebaran',
'Taurus',
'Conhecida como o Olho do Touro.',
'persistencia,firmeza,lealdade',
'Sua posicao de destaque remete a resistencia.'
),

(
'Merope',
'Pleiades (Taurus)',
'Uma das estrelas do aglomerado das Pleiades.',
'sensibilidade,empatia,delicadeza',
'Sua historia mitologica inspira sensibilidade.'
),

(
'Asterope',
'Pleiades (Taurus)',
'Par de estrelas pertencentes as Pleiades.',
'criatividade,imaginacao,originalidade',
'Sua aparencia singular inspira pensamento criativo.'
),

(
'Alcyone',
'Pleiades (Taurus)',
'Estrela mais brilhante das Pleiades.',
'inspiracao,brilho,expressao',
'Destaca-se entre as demais estrelas do grupo.'
),

(
'Antares',
'Scorpius',
'Conhecida como o coracao do Escorpiao.',
'coragem,resiliencia,intensidade',
'Sua coloracao avermelhada transmite forca.'
),

(
'Shaula',
'Scorpius',
'Estrela que marca a cauda do Escorpiao.',
'estrategia,foco,determinacao',
'Sua posicao sugere precisao e direcao.'
),

(
'Sargas',
'Scorpius',
'Estrela brilhante da constelacao de Escorpiao.',
'adaptabilidade,persistencia,equilibrio',
'Sua visibilidade inspira flexibilidade.'
),

(
'Acrux',
'Crux',
'Principal estrela do Cruzeiro do Sul.',
'orientacao,esperanca,confianca',
'A constelacao e usada para localizacao no ceu.'
),

(
'Mimosa',
'Crux',
'Segunda estrela mais brilhante do Cruzeiro do Sul.',
'otimismo,sociabilidade,entusiasmo',
'Seu brilho intenso transmite energia positiva.'
),

(
'Gacrux',
'Crux',
'Gigante vermelha do Cruzeiro do Sul.',
'sabedoria,tranquilidade,maturidade',
'Sua coloracao e associada a experiencia.'
),

(
'Vega',
'Lyra',
'Uma das estrelas mais famosas e brilhantes do ceu.',
'criatividade,imaginacao,sensibilidade artistica',
'Esta associada a constelacao da Lira.'
),

(
'Polaris',
'Ursa Minor',
'Estrela Polar usada historicamente para navegacao.',
'orientacao,estabilidade,responsabilidade',
'Guiou navegadores durante seculos.'
),

(
'Spica',
'Virgo',
'Principal estrela da constelacao de Virgem.',
'inteligencia,dedicacao,organizacao',
'Seu destaque inspira precisao e disciplina.'
),

(
'Regulus',
'Leo',
'Estrela principal da constelacao de Leao.',
'carisma,lideranca,nobreza',
'Seu nome significa pequeno rei.'
),

(
'Denebola',
'Leo',
'Estrela que representa a cauda do Leao.',
'liberdade,independencia,autenticidade',
'Sua posicao simboliza autonomia.'
),

(
'Castor',
'Gemini',
'Sistema multiplo de estrelas na constelacao de Gemeos.',
'comunicacao,versatilidade,cooperacao',
'A multiplicidade do sistema inspira interacao.'
),

(
'Pollux',
'Gemini',
'Estrela mais brilhante da constelacao de Gemeos.',
'amizade,confianca,companheirismo',
'Sua associacao mitologica reforca parceria.'
),

(
'Alhena',
'Gemini',
'Estrela brilhante da constelacao de Gemeos.',
'criatividade,elegancia,expressao',
'Seu brilho inspira refinamento e expressao pessoal.'
),

(
'Altair',
'Aquila',
'Estrela principal da constelacao da Aguia.',
'ambicao,liberdade,coragem',
'Representa pessoas que buscam voar mais alto.'
),

(
'Tarazed',
'Aquila',
'Gigante laranja da constelacao Aquila.',
'sabedoria,experiencia,equilibrio',
'Seu brilho inspira maturidade.'
),

(
'Alshain',
'Aquila',
'Estrela da constelacao Aquila.',
'lealdade,apoio,amizade',
'Simboliza companheirismo.'
),

(
'Deneb',
'Cygnus',
'Uma das estrelas mais brilhantes do ceu.',
'inspiracao,criatividade,visao',
'Relacionada a grandes sonhos.'
),

(
'Sadr',
'Cygnus',
'Estrela localizada no centro da constelacao do Cisne.',
'harmonia,equilibrio,serenidade',
'Representa estabilidade emocional.'
),

(
'Gienah',
'Cygnus',
'Estrela brilhante da constelacao Cygnus.',
'expressao,adaptabilidade,comunicacao',
'Relacionada ao movimento e mudanca.'
),

(
'Fomalhaut',
'Piscis Austrinus',
'Estrela muito brilhante do hemisferio sul.',
'independencia,autenticidade,originalidade',
'Representa singularidade.'
),

(
'Capella',
'Auriga',
'Uma das estrelas mais brilhantes do ceu.',
'protecao,responsabilidade,dedicacao',
'Associada ao cuidado e lideranca.'
),

(
'Menkalinan',
'Auriga',
'Estrela binaria da constelacao Auriga.',
'cooperacao,parceria,empatia',
'Representa trabalho em equipe.'
),

(
'Elnath',
'Taurus',
'Estrela compartilhada entre Taurus e Auriga.',
'determinacao,forca,persistencia',
'Simboliza firmeza.'
),

(
'Algol',
'Perseus',
'Estrela variavel muito conhecida.',
'misterio,intuicao,transformacao',
'Representa mudancas e renovacao.'
),

(
'Mirfak',
'Perseus',
'Principal estrela da constelacao Perseus.',
'lideranca,coragem,protecao',
'Associada a herois e conquistas.'
),

(
'Hamal',
'Aries',
'Estrela principal da constelacao Aries.',
'iniciativa,energia,independencia',
'Relacionada a novos comecos.'
),

(
'Sheratan',
'Aries',
'Estrela brilhante da constelacao Aries.',
'ousadia,determinacao,autoconfianca',
'Representa acao e movimento.'
),

(
'Rasalhague',
'Ophiuchus',
'Estrela principal da constelacao Ophiuchus.',
'cura,sabedoria,empatia',
'Associada ao conhecimento e cuidado.'
),

(
'Nunki',
'Sagittarius',
'Estrela brilhante da constelacao Sagitario.',
'aventura,curiosidade,exploracao',
'Representa desejo de descobrir o mundo.'
),

(
'Kaus Australis',
'Sagittarius',
'Estrela importante de Sagitario.',
'foco,direcao,objetivos',
'Relacionada a metas e realizacoes.'
),

(
'Achernar',
'Eridanus',
'Estrela brilhante da constelacao Eridanus.',
'inovacao,adaptabilidade,velocidade',
'Representa criatividade e mudanca.'
),

(
'Arcturus',
'Bootes',
'Gigante vermelha extremamente brilhante.',
'confianca,sabedoria,lideranca',
'Historicamente usada para orientacao.'
),

(
'Izar',
'Bootes',
'Estrela dupla famosa.',
'equilibrio,cooperacao,harmonia',
'Representa complementaridade.'
);

USE astralis;

CREATE TABLE resultados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(150),
    estrela VARCHAR(100),
    perfil TEXT,
    interpretacao LONGTEXT,
    data_resultado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);