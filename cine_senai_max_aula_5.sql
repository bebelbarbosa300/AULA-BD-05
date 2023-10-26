-- Excluindo banco de dados
DROP DATABASE cine_senai_max;

-- Criando banco de dados
create database cine_senai_max;

-- Ativando banco de dados
use cine_senai_max;

-- Criando tabela filmes
CREATE TABLE filmes (
	id_filme int,
    titulo VARCHAR(60),
    genero VARCHAR(45),
    duracao int,
    ano_lancamento INT,
    preco_aluguel DOUBLE,
    primary key(id_filme)
);

-- Criando tabela atores
CREATE TABLE atores (
	id_ator INT,
    nome_ator VARCHAR(60),
    ano_nascimento INT,
    nacionalidade VARCHAR(20),
    sexo VARCHAR(10),
    PRIMARY KEY(id_ator)
);

-- Crie aqui a tabela de atuações

CREATE TABLE atuacoes (
id_filme INT,
id_ator INT,
FOREIGN KEY (id_filme) REFERENCES filmes(id_filme),
FOREIGN KEY (id_ator) REFERENCES atores(id_ator)
);


DESCRIBE filmes;
DESCRIBE atores;

INSERT INTO filmes (id_filme, titulo, genero, duracao, ano_lancamento, preco_aluguel) VALUES 
(80, 'carandiru', 'drama', 145, 2003, 4.99);


INSERT INTO atores (id_ator, nome_ator, ano_nascimento, nacionalidade, sexo) VALUES 
(150, 'rodrigo santoro', 1975, 'brasileiro', 'masculino'),
(151, 'wagner moura', 1976, 'brasileiro', 'masculino');


INSERT INTO atuacoes (id_filme, id_ator) VALUES 
(80, 150);

INSERT INTO atuacoes (id_filme, id_ator) VALUES 
(80, 151);


INSERT INTO filmes (id_filme, titulo, genero, duracao, ano_lancamento, preco_aluguel) VALUES 
(100, 'O Hhomem do futuro', 'romance', '1.46', 2011, 69.90);


INSERT INTO filmes (id_filme, titulo, genero, duracao, ano_lancamento, preco_aluguel) VALUES 
(101, 'minha mae e uma peça 1', 'comedia', '85', 2013, 49.90),
(102, 'minha mae e uma peça 2', 'comedia', '2', 2016, 49.90),
(103, 'minha mae e uma peça 3', 'comedia', '1.51', 2019, 49.90);


INSERT INTO atores (id_ator, nome_ator, ano_nascimento, nacionalidade, sexo) VALUES 
(155, 'paulo gustavo', 1978, 'brasileiro', 'masculino'),
(156, 'mariana xavier', 1980, 'brasileiro', 'feminino'),
(157, 'rodrigo pandolfo', 1984, 'brasileiro', 'masculino');

INSERT INTO atuacoes (id_filme, id_ator) VALUES 
(101, 155),
(101, 156),
(101, 157);
INSERT INTO atuacoes (id_filme, id_ator) VALUES 
(102, 155),
(102, 156),
(102, 157);
INSERT INTO atuacoes (id_filme, id_ator) VALUES 
(103, 155),
(103, 156),
(103, 157);



