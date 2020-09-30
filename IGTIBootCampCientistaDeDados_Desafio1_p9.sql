-- Quantos empregados do departamento 5 trabalham mais de 
-- 10h por semana no projeto chamado "ProductX"?

--SELECT * FROM trabalha_em;
--SELECT * FROM departamento;
--SELECT * FROM projeto;
--SELECT * FROM empregado

SELECT COUNT(empregado) qtd_empr,empregado.dno cd_departamento
from empregado
	inner join trabalha_em on trabalha_em.essn = empregado.ssn
    inner join projeto on projeto.pnumero = trabalha_em.pno
WHERE empregado.dno = 5
and projeto.pjnome = 'ProductX'
and trabalha_em.horas > 10
GROUP BY dno