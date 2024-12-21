-- Análise Setorial das Empresas da Fortune 1000

-- Dataset: https://www.kaggle.com/datasets/jeannicolasduval/2024-fortune-1000-companies/data

-- Todas as colunas da tabela
SELECT *
FROM fortune_analysis.fortune1000_2024
LIMIT 10;

-- Consulta 1: Quais setores fazem parte do Fortune 1000?
SELECT DISTINCT Sector
FROM fortune_analysis.fortune1000_2024;

-- Consulta 2: Quais industrias fazem parte do Fortune 1000?
SELECT DISTINCT Industry
FROM fortune_analysis.fortune1000_2024;

-- Consulta 3: Quais setores tem o maior número de empresas?
SELECT Sector, COUNT(Sector) AS Total_Sector
FROM fortune_analysis.fortune1000_2024
GROUP BY Sector
ORDER BY Total_Sector DESC;

-- Consulta 4: Quais setores empregam mais pessoas?
SELECT Sector, SUM(Number_of_employees) AS Total_Employees
FROM fortune_analysis.fortune1000_2024
GROUP BY Sector
ORDER BY Total_Employees DESC;

-- Consulta 5: Quais setores tem o maior receita média (bilhões)?
SELECT Sector, ROUND(AVG(Revenues_M)/1000) AS Average_Revenue
FROM fortune_analysis.fortune1000_2024
GROUP BY Sector
ORDER BY Average_Revenue DESC;

-- Consulta 6: Quais setores tem o maior valor de mercado médio (bilhões)?
SELECT Sector, ROUND(AVG(MarketCap_Updated_M)/1000) AS Average_MarketCap
FROM fortune_analysis.fortune1000_2024
GROUP BY Sector
ORDER BY Average_MarketCap DESC;

-- Consulta 7: Qual setor tem a maior margem de lucro? 
SELECT 
	Sector, 
    ROUND((AVG(Profits_M) / AVG(Revenues_M)), 2) AS Average_Margin
FROM fortune_analysis.fortune1000_2024
GROUP BY Sector
ORDER BY Average_Margin DESC;

-- Consulta 8: Quais empresas tem valor de mercado acima de US$ 1 trilhão
SELECT Company, ROUND(MarketCap_Updated_M/1000) AS MarketCap_Billions
FROM fortune_analysis.fortune1000_2024
WHERE MarketCap_Updated_M/1000 > 1000
ORDER BY MarketCap_Billions DESC;

-- Consulta 9: Qual é a proporção de homens e mulheres CEOs?
SELECT 
    (SUM(CASE WHEN FemaleCEO = 'yes' THEN 1 ELSE 0 END)/COUNT(FemaleCEO))*100 AS Female_COE,
    (SUM(CASE WHEN FemaleCEO = 'no' THEN 1 ELSE 0 END)/COUNT(FemaleCEO))*100 AS Male_COE
FROM fortune_analysis.fortune1000_2024;

-- Consulta 10: Quais setores tem o maior número de CEOs mulheres?
SELECT 
    Sector, 
    ROUND(SUM(CASE WHEN FemaleCEO = 'yes' THEN 1 ELSE 0 END) / COUNT(FemaleCEO), 2) AS Percentual_Female
FROM fortune_analysis.fortune1000_2024
GROUP BY Sector
ORDER BY Percentual_Female DESC;

-- Consulta 11: Quais estados reúne empresas com o maior valor de mercado médio (bilhões)?
SELECT 
	HeadquartersState, 
    COUNT(Company) AS Num_Company,
    ROUND((SUM(MarketCap_Updated_M) / COUNT(Company))/1000) AS Avg_MarketCap
FROM fortune_analysis.fortune1000_2024
GROUP BY HeadquartersState
ORDER BY Avg_MarketCap DESC;

-- Consulta 12: Quais as maiores empresas de Washington em valor de mercado (bilhões)?
SELECT 
	Company,
    ROUND(MarketCap_Updated_M / 1000,0) AS MarketCap
FROM fortune_analysis.fortune1000_2024
WHERE HeadquartersState = 'Washington'
ORDER BY MarketCap_Updated_M DESC;

-- Consulta 13: Quais as maiores empresas da Californa em valor de mercado (bilhões)?
SELECT 
	Company,
    ROUND(MarketCap_Updated_M / 1000,0) AS MarketCap
FROM fortune_analysis.fortune1000_2024
WHERE HeadquartersState = 'California'
ORDER BY MarketCap DESC;

-- Consulta 14: Quais os principais setores da California em receita (bilhões)? 
SELECT 
    Sector, 
    ROUND((SUM(Revenues_M)/1000),0) AS Total_Revenue
FROM fortune_analysis.fortune1000_2024
WHERE HeadquartersState = 'California'
GROUP BY Sector
ORDER BY Total_Revenue DESC;

-- Consulta 15: Quais são as industrias das empresas da California do setor de tecnologia? 
SELECT 
	Company,
    Industry
FROM fortune_analysis.fortune1000_2024
WHERE HeadquartersState = 'California' AND Sector LIKE 'Technology'
ORDER BY Industry ASC;

-- Consulta 16: Há empresas do setor de simicondutores fora da California? 
SELECT 
	Company,
    HeadquartersState
FROM fortune_analysis.fortune1000_2024
WHERE HeadquartersState != 'California' AND Industry LIKE 'Semiconductors and Other Electronic Components'
ORDER BY Company ASC;
