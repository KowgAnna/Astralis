# 🌌 Astralis

Astralis é uma aplicação web desenvolvida para associar características de personalidade dos usuários a estrelas reais do universo, combinando conceitos de astronomia, banco de dados e Inteligência Artificial Generativa.

O sistema utiliza um questionário para identificar características comportamentais do usuário. A partir das respostas, é realizado um processo de correspondência entre o perfil informado e uma base de dados contendo estrelas reais e suas características simbólicas.

Após a identificação da estrela mais compatível, uma IA Generativa (Llama 3.3 70B, via API Groq) produz uma interpretação personalizada contendo:

* Resumo da personalidade;
* Potenciais e pontos fortes;
* Possíveis desafios;
* Compatibilidade com a estrela selecionada;
* Curiosidade astronômica;
* Mensagem inspiradora final.

Além disso, o sistema apresenta um ranking com as três estrelas mais compatíveis e registra os resultados em um banco de dados MySQL para posterior análise.

## Tecnologias Utilizadas

* HTML5
* CSS3
* JavaScript
* Node.js
* Express.js
* MySQL
* API Groq (Llama 3.3 70B)
* Inteligência Artificial Generativa

## Objetivo

O objetivo do projeto é demonstrar a integração entre banco de dados, desenvolvimento web e Inteligência Artificial Generativa, utilizando informações astronômicas reais para criar uma experiência interativa e personalizada para os usuários.

## Funcionalidades

* Questionário de perfil
* Sistema de recomendação de estrelas
* Compatibilidade em percentual
* Ranking Top 3 estrelas compatíveis
* Interpretação personalizada por IA
* Curiosidades astronômicas
* Armazenamento dos resultados em banco de dados
* Dashboard de consultas dos resultados obtidos

Projeto desenvolvido para fins acadêmicos e demonstrativos.
