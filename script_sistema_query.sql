-- buscar por produto dentro da venda
-- query - select - leitura
-- * todas as colunas
-- select nomes de tables(filtra)
select id_produto, preco_unitario
from  item_venda
where id_venda = 1 and id_produto =1;   


-- pesquisando por nome

select iv.preco_unitario, p.nome_produto
from item_venda as iv -- as= apelido
join produto as p on iv.id_produto = p.id_produto  -- juntar
where iv.id_venda =1 and p.nome_produto like'%cheetos%';

-- buscando todas as vendas de um cliente

select *
from venda
where id_cliente = 3;

-- buscar produto mais vendido
select p.nome_produto, sum(iv.quantidade_item) as total_vendido
from item_venda as iv
join produto p on p. id_produto = iv.id_produto
group by p.nome_produto;