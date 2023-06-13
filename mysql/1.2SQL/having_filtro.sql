select ESTADO, sum(LIMITE_DE_CREDITO) as SOMA_LIMITE from tabela_de_clientes
group by ESTADO;

select ESTADO, sum(LIMITE_DE_CREDITO) as SOMA_LIMITE from tabela_de_clientes
group by ESTADO having sum(LIMITE_DE_CREDITO) > 900000;

select EMBALAGEM, max(PRECO_DE_LISTA) as MAIOR_PRECO, min(PRECO_DE_LISTA) as MENOR_PRECO 
from tabela_de_produtos group by EMBALAGEM having sum(PRECO_DE_LISTA) <= 80;

select EMBALAGEM, max(PRECO_DE_LISTA) as MAIOR_PRECO, min(PRECO_DE_LISTA) as MENOR_PRECO 
from tabela_de_produtos group by EMBALAGEM 
having sum(PRECO_DE_LISTA) <= 80 and max(PRECO_DE_LISTA) > 5;