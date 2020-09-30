--Considere o banco de dados do enunciado. Crie uma consulta em SQL e responda: 
--Qual seria o custo do projeto com folha salarial (soma de todos os salários) 
--caso a empresa desse 10% de aumento para todos os empregados que trabalham no projeto 'ProductX'?

SELECT SUM(empregado.salario), SUM(empregado.salario)*1.1 Salario_Total_Com_Aumento
from empregado
	INNER JOIN trabalha_em on trabalha_em.essn = empregado.ssn
    inner join projeto on trabalha_em.pno = projeto.pnumero
WHERE projeto.pjnome = 'ProductX'
