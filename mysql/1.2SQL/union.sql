select distinct BAIRRO from tabela_de_clientes
union
select distinct BAIRRO from tabela_de_vendedores;

select distinct BAIRRO, NOME from tabela_de_clientes
union
select distinct BAIRRO, NOME from tabela_de_vendedores;

select distinct BAIRRO, NOME, 'CLIENTE' as TIPO from tabela_de_clientes
union
select distinct BAIRRO, NOME, 'VENDEDOR' as TIPO from tabela_de_vendedores;

select distinct BAIRRO, NOME, 'CLIENTE' as TIPO_CLIENTE from tabela_de_clientes
union
select distinct BAIRRO, NOME, 'VENDEDOR' as TIPO_VENDEDOR from tabela_de_vendedores;

select distinct BAIRRO, NOME, 'CLIENTE' as TIPO_CLIENTE, CPF from tabela_de_clientes
union
select distinct BAIRRO, NOME, 'VENDEDOR' as TIPO_VENDEDOR, MATRICULA from tabela_de_vendedores;

select tabela_de_vendedores.BAIRRO,
tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME from tabela_de_vendedores left join tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO
union
select tabela_de_vendedores.BAIRRO,
tabela_de_vendedores.NOME, DE_FERIAS,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME from tabela_de_vendedores RIGHT join tabela_de_clientes
on tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;