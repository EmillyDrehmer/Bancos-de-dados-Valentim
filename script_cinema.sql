create database cinema;
use cinema;

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    cpf_cliente VARCHAR(15) NOT NULL UNIQUE,
    email_cliente VARCHAR(30) NOT NULL UNIQUE,
    status_cliente ENUM('Ativo', 'Inativo')
);

CREATE TABLE categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    descrição_cat VARCHAR(30) NOT NULL
);

CREATE TABLE filme (
    id_filme INT PRIMARY KEY AUTO_INCREMENT,
    nome_filme VARCHAR(100) NOT NULL,
    faixa_etaria INT CHECK (faixa_etaria >= 0),
    duracao_filme INT NOT NULL,
    status_filme ENUM('Em cartaz', 'Fora de cartaz'),
    id_categoria_filme INT NOT NULL,
    FOREIGN KEY (id_categoria_filme)
        REFERENCES categoria (id_categoria)
);

CREATE TABLE sala (
    id_sala INT PRIMARY KEY AUTO_INCREMENT,
    descricao_sala TEXT NOT NULL,
    tipo_sala ENUM('2D', '3D', 'IMAX') DEFAULT '2D',
    capacidade_sala INT NOT NULL CHECK (capacidade_sala > 0),
    vip_sala BOOLEAN DEFAULT FALSE
);

CREATE TABLE sessao (
    id_sessao INT AUTO_INCREMENT PRIMARY KEY,
    data_hora DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    id_sala_sessao INT NOT NULL,
    id_filme_sessao INT NOT NULL,
    status_sessao ENUM('Aberta', 'Encerrada', 'Cancelada') DEFAULT 'Aberta',
    FOREIGN KEY (id_sala_sessao)
        REFERENCES sala (id_sala),
    FOREIGN KEY (id_filme_sessao)
        REFERENCES filme (id_filme)
    -- UNIQUE (data_hora , id_sala)
);

CREATE TABLE tipo_ingresso (
    id_tipo_ingresso INT PRIMARY KEY AUTO_INCREMENT,
    descricao_ingresso VARCHAR(50) NOT NULL,
    valor_ingresso DECIMAL(5 , 2 ) NOT NULL CHECK (valor_ingresso >= 0)
);

CREATE TABLE pedido (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_hora DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_cliente INT,
    status_pedido ENUM('Aberto', 'Pago', 'Cancelado') DEFAULT 'Aberto',
    FOREIGN KEY (id_cliente)
        REFERENCES cliente (id_cliente)
);

CREATE TABLE ingresso (
    id_ingresso INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido_ingresso INT NOT NULL,
    id_sessao_ingresso INT NOT NULL,
    id_tipo_ingresso INT NOT NULL,
    valor_pago DECIMAL(5 , 2 ) NOT NULL,
    status_ingresso ENUM('Reservado', 'Pago', 'Cancelado') DEFAULT 'Reservado',
    FOREIGN KEY (id_pedido_ingresso)
        REFERENCES pedido (id_pedido),
    FOREIGN KEY (id_sessao_ingresso)
        REFERENCES sessao (id_sessao),
    FOREIGN KEY (id_tipo_ingresso)
        REFERENCES tipo_ingresso (id_tipo_ingresso)
);