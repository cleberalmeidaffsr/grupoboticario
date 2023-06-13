select * from tabela_de_produtos;

select EMBALAGEM, 
case 
	when PRECO_DE_LISTA >= 12 then 'PRODUTO CARO'
	when PRECO_DE_LISTA >= 7 and PRECO_DE_LISTA < 12 then 'PRODUTO EM CONTA'
	else 'PRODUTO BARATO'
end as STATUS_PRECO, avg(PRECO_DE_LISTA) as PRECO_MEDIO
from tabela_de_produtos where SABOR = 'Manga'
group by EMBALAGEM,
case 
	when PRECO_DE_LISTA >= 12 then 'PRODUTO CARO'
	when PRECO_DE_LISTA >= 7 and PRECO_DE_LISTA < 12 then 'PRODUTO EM CONTA'
	else 'PRODUTO BARATO'
end order by EMBALAGEM;