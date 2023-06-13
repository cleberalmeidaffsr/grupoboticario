select * from tabela_de_clientes;

select ESTADO, LIMITE_DE_CREDITO from tabela_de_clientes;

select ESTADO, sum(LIMITE_DE_CREDITO) as LIMITE_TOTAL from tabela_de_clientes
group by ESTADO;

select EMBALAGEM, max(PRECO_DE_LISTA) as MAIOR_PRECO from tabela_de_produtos
group by EMBALAGEM;

select EMBALAGEM, count(*) as CONTADOR from tabela_de_produtos
group by EMBALAGEM;

select BAIRRO, sum(LIMITE_DE_CREDITO) as LIMITE from tabela_de_clientes
group by BAIRRO;

select BAIRRO, sum(LIMITE_DE_CREDITO) as LIMITE from tabela_de_clientes
where CIDADE = 'Rio de Janeiro' group by BAIRRO;

select ESTADO, BAIRRO, sum(LIMITE_DE_CREDITO) as LIMITE from tabela_de_clientes
where CIDADE = 'Rio de Janeiro' 
group by ESTADO, BAIRRO
order by BAIRRO;