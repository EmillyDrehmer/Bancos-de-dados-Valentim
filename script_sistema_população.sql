insert into cliente(nome_cliente, email_cliente) values
('Emilly D', 'emi@gmail.com'),
('Lia R', 'li@gmail.com'),
('Umlauf', 'lauf@gmail.com'),
('Layla', 'layla@gmail.com'),
('Ster', 'ter@gmail.com'),
('Barbara R', 'barbi@gmail.com');

insert into produto(nome_produto, preco_produto) values
-- ('cheetos', 178.99),
-- ('coca cola', 99.99),
('cafe', 22.99),
('cookie', 66.99),
('esmalte', 18.99),
('tinta de cabelo', 2.99);

insert into venda(data_venda, id_cliente) values
('2025-01-01', 1),
('2026-01-10', 2),
('2025-08-17', 3),
('2026-03-10', 4),
('2025-02-16', 5),
('2026-04-29', 6);

insert into item_venda(id_venda, id_produto, quantidade_item, preco_unitario) values 
(2, 2, 5, 99.99),
(3, 3, 10, 22.99),
(4, 4, 7, 66.99),
(5, 5, 20,  18.99),
(6, 6, 99, 2.99);

