## Análise Exploratória das empresas da Fortune 1000

### Sumário
**Objetivo**: Neste projeto busquei fazer uma análise exploratória da base de dados da Fortune 1000 que é um rank que reúne as maiores empresas em receita dos Estados Unidos organizado pela revista de negócios Fortune. Foram feitas no total 16 consultas (queries) abordando desde os setores que tem o maior número de CEOs mulheres quanto as empresas de semicondutores fora do estado da California. 

**Resultado**: Os resultados foram bem interessantes, o que me chamou atenção é como alguns estados reúnem poucas mais grandes empresas como Washington que é sede da Microsoft e Amazon, já a California é lar de mais de uma centena de empresas e concentra principalmente empresas do setor de Tecnologia como Apple e Nivida, outro dado que chamou atenção é o pouco número de mulheres CEOs que representa menos de 10% do total e estão concentradas no setor de artigos domésticos. 

**Tecnologias**: 
- SQL: Para manipulação e consulta da base de dados.
- MySQL: Como Sistema de Gerenciamento de Banco de Dados (SGBD).

- ├── LICENSE
├── README.md          <- README .
├── query              <- Code of the DB creation and queries.
│   │
│   └── retail_sales_tables_db.sql       <- DB creation.
│   └── analysis.sql                     <- Final queries.
│   └── query_data                       <- Final queries data.
├── reports            <- Folder containing the final reports/results of this project.
│   │
│   └── query_report.docx        <- Final analysis report Document.
│   └── query_report.pdf         <- Final query report in PDF for verifying data.
│   
├── src                <- Source for this project.
    │
    ├── data           <- Datasets used and collected for this project.
