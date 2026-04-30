-- 1. Categorias
INSERT INTO categoria (descrição_cat) VALUES 
('Ação'), ('Comédia'), ('Terror'), ('Ficção Científica'), ('Animação');

-- 2. Filmes
INSERT INTO filme (nome_filme, faixa_etaria, duracao_filme, status_filme, id_categoria_filme) VALUES 
('Vingadores: Ultimato', 12, 181, 'Fora de cartaz', 1),
('O Exorcista', 18, 122, 'Fora de cartaz', 3),
('Duna: Parte 2', 14, 166, 'Em cartaz', 4),
('Kung Fu Panda 4', 0, 94, 'Em cartaz', 5),
('Deadpool & Wolverine', 18, 127, 'Em cartaz', 1);

-- 3. Salas
INSERT INTO sala (descricao_sala, tipo_sala, capacidade_sala, vip_sala) VALUES 
('Sala 01 - Standard', '2D', 150, FALSE),
('Sala 02 - Experience', '3D', 120, FALSE),
('Sala 03 - IMAX Experience', 'IMAX', 250, FALSE),
('Sala 04 - Gold Class', '2D', 40, TRUE);

-- 4. Clientes
INSERT INTO cliente (nome_cliente, cpf_cliente, email_cliente, status_cliente) VALUES 
('João Silva', '123.456.789-00', 'joao@email.com', 'Ativo'),
('Maria Oliveira', '987.654.321-11', 'maria@email.com', 'Ativo'),
('Carlos Souza', '111.222.333-44', 'carlos@email.com', 'Inativo'),
('Ana Costa', '555.666.777-88', 'ana@email.com', 'Ativo');

-- 5. Tipos de Ingresso
INSERT INTO tipo_ingresso (descricao_ingresso, valor_ingresso) VALUES 
('Inteira', 40.00),
('Meia Estudante', 20.00),
('Meia Idoso', 20.00),
('Promoção Terça-feira', 15.00);

-- 6. Sessões
INSERT INTO sessao (data_hora, id_sala_sessao, id_filme_sessao, status_sessao) VALUES 
('2024-05-01 14:00:00', 1, 4, 'Aberta'),
('2024-05-01 19:30:00', 3, 3, 'Aberta'),
('2024-05-01 21:00:00', 4, 5, 'Aberta'),
('2024-04-20 15:00:00', 2, 1, 'Encerrada');

-- 7. Pedidos
INSERT INTO pedido (id_cliente, status_pedido) VALUES 
(1, 'Pago'),
(2, 'Aberto'),
(4, 'Pago');

-- 8. Ingressos
INSERT INTO ingresso (id_pedido_ingresso, id_sessao_ingresso, id_tipo_ingresso, valor_pago, status_ingresso) VALUES 
(1, 1, 1, 40.00, 'Pago'), -- João comprou inteira para Kung Fu Panda
(1, 1, 2, 20.00, 'Pago'), -- João comprou meia para acompanhante
(2, 2, 1, 40.00, 'Reservado'), -- Maria reservou inteira para Duna
(3, 3, 1, 40.00, 'Pago'); -- Ana comprou inteira para Deadpool na sala VIP
