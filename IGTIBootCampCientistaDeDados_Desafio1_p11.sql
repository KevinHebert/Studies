--Considere o banco de dados do enunciado. Crie uma consulta em SQL e responda: 
--Quais os nomes de todos os empregados que são diretamente supervisionados por Franklin Wong

select pnome,ssn,superssn 
from empregado
where empregado.superssn = (select ssn from empregado where pnome = 'Franklin' and unome = 'Wong')