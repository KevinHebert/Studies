--Considere o banco de dados do enunciado. Crie uma consulta em SQL e responda: 
--Qual é a soma dos salários de todos os empregados do departamento chamado 'Research'?

select SUM(empregado.salario) salario_total
from empregado
	inner join departamento on departamento.dnumero = empregado.dno
where departamento.dnome = 'Research'
