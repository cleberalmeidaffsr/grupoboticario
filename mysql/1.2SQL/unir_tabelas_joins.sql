select * from tabela_de_vendedores;
select * from notas_fiscais;

select * from tabela_de_vendedores a 
inner join notas_fiscais b
on a.matricula = b.matricula;

select a.matricula, a.nome, count(*) as CONTADOR
from tabela_de_vendedores a 
inner join notas_fiscais b
on a.matricula = b.matricula
group by a.matricula, a.nome;
