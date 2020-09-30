--Considere o banco de dados do enunciado. Crie uma consulta em SQL e responda: 
--Quem é a pessoa que possui mais tempo de alocação no projeto 'Newbenefits'?

select * FROM projeto;
select * from trabalha_em;

SELECT empregado.*, trabalha_em.horas
FROM empregado
	INNER JOIN trabalha_em on trabalha_em.essn = empregado.ssn
    inner join projeto on projeto.pnumero = trabalha_em.pno
WHERE 
projeto.pjnome = 'Newbenefits'
order BY trabalha_em.horas DESC

