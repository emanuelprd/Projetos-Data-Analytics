## Sumário
1. Análise Exploratória das empresas da Fortune 1000 com SQL
2. Análise Exploratória das Taxa Prefixada do Tesouro Nacional com Python
3. Dashboard de Curva de Crédito em Power BI

## Projetos

### 1. Análise Exploratória das empresas da Fortune 1000 com SQL

**Objetivo**: Neste projeto busquei fazer uma análise exploratória da base de dados da Fortune 1000 que é um rank que reúne as maiores empresas em receita dos Estados Unidos organizado pela revista de negócios Fortune. Foram feitas no total 16 consultas abordando desde os setores que tem o maior número de CEOs mulheres quanto as empresas de semicondutores fora do estado da California. 

**Resultado**: Os resultados foram bem interessantes, pode-se observar que alguns estados reúnem poucas mas grandes empresas como Washington que é sede da Microsoft e Amazon, já a California é lar de mais de uma centena de empresas e concentra principalmente empresas do setor de Tecnologia como Apple e Nivida, outro dado que chama atenção é o pouco número de mulheres CEOs que representa menos de 10% do total e estão concentradas principalmente no setor de artigos domésticos. Há apenas 6 empresas com valor de mercado maior que US$ 1 trilhão sendo elas Apple, Microsoft, Nvidia, Alphabet, Amazon e Meta que por sinal a maioria é do setor de tecnologia. Há muitas outras informações que podem ser acessar no script disponível. 

**Tecnologias**: 
- SQL: Para manipulação e consulta da base de dados.
- MySQL: Como Sistema de Gerenciamento de Banco de Dados (SGBD).

<p align="center">
  <img src="https://github.com/user-attachments/assets/8f43fe27-53b2-46b5-aceb-02a688e0293b" alt="Scatterplot Taxas Prefixadas" width="250">
</p>

### 2. Análise Exploratória das Taxas Prefixadas do Tesouro Nacional com Python

**Objetivo**: Este estudo busca analisar as taxas dos títulos prefixados com duração aproximada de 2 anos (entre 700 e 760 dias), que recentemente apresentaram um aumento significativo. O objetivo é investigar o quão distantes as taxas atuais estão em relação às médias históricas, identificando uma possível oportunidade de compra.

**Resultados**: Em 3 de dezembro de 2025, a taxa das LTNs zero-cupom atingiu 15,66%, acima de 80% das observações históricas (percentil 80 = 14,90%). Taxas similares foram registradas apenas em anos atípicos, como 2006, 2008 e 2025, marcados por crises econômicas. O ano de 2024 é crucial para entender a abertura da curva de juros, com uma diferença superior a 6 pontos percentuais entre as taxas mínima e máxima, refletindo a deterioração das expectativas de inflação e a perda de credibilidade fiscal. A taxa atual está próxima das máximas históricas, mas não supera os picos demonstrados nas últimas semanas. 

**Tecnologias**:
- Python: Para manipulação, análise e geração dos gráficos.

<p align="center">
  <img src="https://github.com/emanuelprd/Projetos-Data-Analytics/blob/main/Taxas%20Prefixadas%20(LTN)/Scatterplot%20Taxas%20Prefixadas.png?raw=true" alt="Scatterplot Taxas Prefixadas" width="650">
</p>

### 3. Dashboard de Curva de Crédito

**Objetivo**: Objetivo foi criar um dashboard simples contendo dados referentes a curva de juros do crédito privado com base em dados públicos disponíveis pela Anbima, podendo vizualizar o spread de crédito para cada vértice e segregado por rating (A, AA, AAA).

**Resultados**: Podemos ver o tradeoff entre duration e rating, onde prazos maiores e rating piores trazem maiores taxas entretanto com um maior risco de liquidez e de crédito respectivamente. 

**Tecnologias**: 
- Power BI: Para tratamento, modelagem de dados e vizualização de dados.

<p align="center">
  <img src="https://github.com/emanuelprd/Projetos-Data-Analytics/blob/main/Curva%20de%20Credito/dashboard_curva_credito.png?raw=true" width="800">
</p>



