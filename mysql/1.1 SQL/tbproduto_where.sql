use sucos;

update tbproduto set EMBALAGEM = 'Lata', PRECO_LISTA = 2.46
where PRODUTO = '544931';

update tbproduto set EMBALAGEM = 'Garrafa'
where PRODUTO = '1078680';

select * from tbproduto;