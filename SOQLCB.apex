//Q1 Selecione nome completo, empresa, celular, todos os leads.

SELECT Id, FirstName, LastName, Phone, MobilePhone, LeadSource FROM Contact

//Q2 Selecione empresa, Origem do lead, status do lead, e-mail de todos os leads.

SELECT Company, LeadSource, Status, EmaiL FROM Lead

//Q3 Selecione nome da oportunidade, valor de todas oportunidades, Quem Criou, origem, fase.

SELECT Id, Name, StageName, TotalOpportunityQuantity, CreatedById, Type FROM Opportunity

//Q4 Selecione order number, nome da oportunidade, origem do lead, valor, fase e probabilidade de todas oportunidades.

SELECT OrderNumber__c,Name,LeadSource,Amount,StageName,Probability FROM Opportunity

//Q5 Selecione Empresa, Nome Completo, CNPJ, Endereço, Telefone, Origem do Lead, receita anual, email, status do lead, de todos os leads.

SELECT Company, Name, CNPJ__c, Address, Phone, LeadSource, 	AnnualRevenue, Email, Status   FROM Lead

//Q6 Selecione Conta, Nome, Horário de funcionamento, Setor, Telefone, FAX, tipo, CNPJ,TIPO de todas as contas

SELECT Name, OperatingHoursId, Industry, Phone, Fax, Type, Cnpj__c FROM Account 

//Q7 Os funcionários da empresa MAMACO CORP está com problemas para organizar as informações de seus contatos, para isso eles contrataram desenvolvedores para auxiliarem na tarefa.
//Realize uma busca no SOQL pelo devoleper usando a ordem dos campos igual se encontra na visualização por parte do admim.
//Em aplicação Vendas > Contatos.

SELECT Name, AccountId, Title, Phone, Email, OwnerId FROM CONTACT
