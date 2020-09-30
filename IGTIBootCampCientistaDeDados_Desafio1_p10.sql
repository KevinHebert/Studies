--PERGUNTA 10
--Quantos empregados possuem um dependente com o mesmo primeiro nome que o deles?

SELECT COUNT(empregado) 
FROM empregado
	INNER JOIN dependente on dependente.essn = empregado.ssn
WHERE empregado.pnome = dependente.nome_dependente;
