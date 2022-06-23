//Q1 Selecione o nome, valor e data de fechamento das oportunidades.

SELECT Name, Amount, CloseDate FROM Opportunity

//Q2 Selecione o nome e valor das oportunidades com data de fechamento maior que 01/06/2021.

SELECT Name, Amount, CloseDate FROM Opportunity 
   Where CloseDate > 2021-06-01

//Q3  Selecione o nome da oportunidade, valor, descrição e next step das oportunidades com fase Closed won e valor acima de 100000.

SELECT Name, Amount, Description, NextStep FROM Opportunity Where StageName = 'closed won'AND Amount > 100000

//Q4 Selecione o nome, classificação, tipo, ano de início das contas que possuam ‘Uni’ no começo do nome da conta.

SELECT Name, Rating, Type, createdDate FROM Account
WHERE Name LIKE 'Uni%' and YearStarted='YEAR'

//Q5 Selecione o nome completo, empresa e email dos leads com ‘.net’ no final do email e status do lead como Working - Contacted. 

SELECT Name, Company, Email FROM lead WHERE Email LIKE '%.net' AND Status = 'Working - Contacted'

//Q6 Selecione o nome e conte a quantidade de oportunidades agrupadas por nome.

SELECT Name, count(id) FROM Opportunity GROUP by Name

//Q7 Selecione o nome e conte a quantidade de oportunidades agrupadas por nome havendo 3 oportunidades agrupadas.

SELECT Name, COUNT(id) 
FROM Opportunity 
GROUP BY name 
HAVING COUNT(id) = 3

//Q8 Selecione o nome, valor, fase, next step e descrição das oportunidades que possuem ‘Oil’ ou ‘Gene’ em qualquer parte do nome.

SELECT Name, Amount, StageName, NextStep, Description FROM Opportunity  
WHERE name like '%Oil%' OR name like '%Gene%'

//Q9 Selecione o nome, valor, fase, data de criação e data de fechamento das oportunidades com fase ‘Closed Won’ e valor menor que 80000, exiba os valores formatados, ordenado por valor de maneira decrescente.

SELECT NAME, format (AMOUNT), STAGENAME, format(createddate), format (CLOSEDATE)
FROM OPPORTUNITY 
WHERE STAGENAME = 'CLOSED WON' AND AMOUNT < 80000
ORDER BY AMOUNT DESC 

//Q10 Selecione o nome, telefone de contas e o nome, valor e fase das oportunidades ligadas a cada conta.

Select Name, Phone, (Select Name, Amount, StageName FROM Opportunities)
FROM Account

//Q11 Selecione o nome, de contas ordenadas pelo nome da conta. E ligada a cada conta, mostre o nome e valor das oportunidades e mostre também nome dos contatos que tem nome iniciando com A, associados a cada conta.

SELECT Name, (SELECT Name, Amount FROM Opportunities), (SELECT Name FROM Contacts WHERE Name LIKE 'A%') FROM Account ORDER BY Name

//Q12 Selecione o nome, fase, next step e valor das oportunidades com valor abaixo de 100000 e com fechamento ocorrido no trimestre passado.

Select name, StageName, NextStep, amount From Opportunity Where amount<100000 AND CloseDate  = LAST_90_DAYS



