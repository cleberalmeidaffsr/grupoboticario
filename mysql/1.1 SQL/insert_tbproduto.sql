use sucos;

insert into tbproduto(
PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA
) values (
'1037797', 'Clean - 2 litros - Laranja', 'Pet', 
'2 litros', 'Laranja', 16.01);

insert into tbproduto(
PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA
) values (
'1000889', 'Sabor da Montanha - 700ml - Uva', 'Garrafa', 
'700ml', 'Uva', '6.31');

insert into tbproduto(
PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA
) values (
'1004327', 'Videira do campo - 1,5 litros - Melancia', 'Pet', 
'1,5 Litros', 'Melancia', 19.51);

select * from tbproduto;