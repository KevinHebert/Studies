--Considere o banco de dados do enunciado. Crie uma consulta em SQL e responda: 
--Qual o nome do departamento com a menor média de salário entre seus funcionários?

SELECT departamento.dnome, avg(empregado.salario) Salario_Medio
from empregado
	inner JOIN departamento on departamento.dnumero = empregado.dno
GROUP BY empregado.dno, departamento.dnome
order by Salario_Medio ASC