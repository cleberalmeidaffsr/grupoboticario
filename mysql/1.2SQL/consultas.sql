use sucos_vendas;

select * from tabela_de_clientes;

select CPF, NOME from tabela_de_clientes;

select CPF as IDENTIFICADOR, NOME as CLIENTE from tabela_de_clientes;

select * from tabela_de_produtos;

select * from tabela_de_produtos where CODIGO_DO_PRODUTO = '1000889';

select * from tabela_de_produtos where SABOR = 'Laranja';

select * from tabela_de_produtos where PRECO_DE_LISTA < 10;