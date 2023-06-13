
select EMBALAGEM, max(PRECO_DE_LISTA) as MAIOR_PRECO from tabela_de_produtos
group by EMBALAGEM;

select X.EMBALAGEM, X.MAIOR_PRECO from
VW_Maiores_Embalagens X where X.MAIOR_PRECO >= 10;

select a.NOME_DO_PRODUTO, a.PRECO_DE_LISTA, X.MAIOR_PRECO,
(A.PRECO_DE_LISTA / X.MAIOR_PRECO) * 100 as PERCENTUAL
from tabela_de_produtos A inner join VW_Maiores_Embalagens X
on A.EMBALAGEM = X.EMBALAGEM

