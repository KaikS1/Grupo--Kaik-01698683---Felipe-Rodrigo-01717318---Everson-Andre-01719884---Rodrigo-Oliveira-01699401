create schema if not exists concurso1; 
use concurso1;


create table usuario(
  id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  nome VARCHAR(55) NOT NULL,
  email VARCHAR(55) NOT NULL,
  senha VARCHAR(8) NOT NULL  
);

create table questoes(
  id INT  AUTO_INCREMENT PRIMARY KEY NOT NULL,
  Enunciado VARCHAR(255) NOT NULL,
  Disciplina VARCHAR(55) NOT NULL,
  id_usuario INT NOT NULL,
  FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);

create table concursos(
  id INT AUTO_INCREMENT KEY NOT NULL,
  descrição VARCHAR(55) NOT NULL,
  status ENUM ('ativo', 'inativo') NOT NULL,
  data_inicio DATE NOT NULL
);

create table prova(
  id INT  AUTO_INCREMENT PRIMARY KEY NOT NULL,
  data_prova DATE NOT NULL,
  id_concurso INT NOT NULL, 
  id_questoes INT NOT NULL,
  FOREIGN KEY (id_concurso) REFERENCES concursos(id),
  FOREIGN KEY (id_questoes) REFERENCES questoes(id)
);

create table acessar(
  id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,	
  id_concurso INT NOT NULL,
  id_usuario INT NOT NULL,
  FOREIGN KEY(id_concurso) REFERENCES concursos(id),
  FOREIGN KEY(id_usuario) REFERENCES usuario(id)
);

show tables

select*From usuario;
INSERT INTO usuario (nome, email, senha) VALUES ('Joao Silva', 'joao.silva@gmail.com', 'senha123');
INSERT INTO usuario (nome, email, senha) VALUES ('Maria Oliveira', 'maria.oliveira@gmail.com', 'senha456');
INSERT INTO usuario (nome, email, senha) VALUES ('Pedro Costa', 'pedro.costa@gmail.com', 'senha789');
INSERT INTO usuario (nome, email, senha) VALUES ('Ana Souza', 'ana.souza@gmail.com', 'senha321');
INSERT INTO usuario (nome, email, senha) VALUES ('Carlos Pereira', 'carlos.pereira@gamil.com', 'senha654');
INSERT INTO usuario (nome, email, senha) VALUES ('Lucas Martins', 'lucas.martins@example.com', 'senha987');
INSERT INTO usuario (nome, email, senha) VALUES ('Juliana Almeida', 'juliana.almeida@example.com', 'senha159');
INSERT INTO usuario (nome, email, senha) VALUES ('Ricardo Rocha', 'ricardo.rocha@example.com', 'senha258');
INSERT INTO usuario (nome, email, senha) VALUES ('Fernanda Lima', 'fernanda.lima@example.com', 'senha369');
INSERT INTO usuario (nome, email, senha) VALUES('Gustavo Mendes', 'gustavo.mendes@example.com', 'senha741')

select*from questoes;
INSERT INTO questoes (Enunciado, Disciplina, id_usuario) VALUES	('Qual é o principal objetivo da Polícia Militar?', 'Direitos Humanos', 3);
INSERT INTO questoes (Enunciado, Disciplina, id_usuario) VALUES ('Em que data foi criado o Tribunal de Justiça do Estado de São Paulo?', 'História do Direito', 7);
INSERT INTO questoes (Enunciado, Disciplina, id_usuario) VALUES('Quais são os requisitos para ingressar no Banco do Brasil?', 'Administração', 5);
INSERT INTO questoes (Enunciado, Disciplina, id_usuario) VALUES('Quais as principais características de um concurso público para a Polícia Federal?', 'Legislação', 2);
INSERT INTO questoes (Enunciado, Disciplina, id_usuario) VALUES('Quais são as funções do Ministério Público?', 'Direito Constitucional', 9);
INSERT INTO questoes (Enunciado, Disciplina, id_usuario) VALUES('O que é necessário para ser aprovado em um concurso para a Caixa Econômica Federal?', 'Economia', 1);
INSERT INTO questoes (Enunciado, Disciplina, id_usuario) VALUES('Qual a estrutura hierárquica da Polícia Militar?', 'Legislação Penal', 4);
INSERT INTO questoes (Enunciado, Disciplina, id_usuario) VALUES('Quais são os requisitos para o cargo de analista do Banco Central?', 'Economia', 8);
INSERT INTO questoes (Enunciado, Disciplina, id_usuario) VALUES('Quais os direitos de um servidor público concursado no Tribunal de Justiça?', 'Direitos Trabalhistas', 6);
INSERT INTO questoes (Enunciado, Disciplina, id_usuario) VALUES('Quais os principais desafios enfrentados pelos profissionais do concurso para a Receita Federal?', 'Direito Tributário', 10)

select*from concursos;
INSERT INTO concursos (descrição, status, data_inicio) VALUES ('Concurso Polícia Militar', 'ativo', '2025-06-01');
INSERT INTO concursos (descrição, status, data_inicio) VALUES ('Concurso Tribunal de Justiça', 'ativo', '2025-08-15');
INSERT INTO concursos (descrição, status, data_inicio) VALUES ('Concurso Banco do Brasil', 'inativo', '2024-11-01');
INSERT INTO concursos (descrição, status, data_inicio) VALUES ('Concurso Caixa Econômica Federal', 'ativo', '2025-02-20');
INSERT INTO concursos (descrição, status, data_inicio) VALUES ('Concurso Polícia Federal', 'inativo', '2023-05-22');
INSERT INTO concursos (descrição, status, data_inicio) VALUES ('Concurso Ministério Público', 'ativo', '2025-04-30');
INSERT INTO concursos (descrição, status, data_inicio) VALUES ('Concurso Petrobras', 'ativo', '2025-07-15');
INSERT INTO concursos (descrição, status, data_inicio) VALUES ('Concurso Banco Central', 'inativo', '2024-09-05');
INSERT INTO concursos (descrição, status, data_inicio) VALUES ('Concurso Advocacia Geral da União (AGU)', 'ativo', '2025-01-10');
INSERT INTO concursos (descrição, status, data_inicio) VALUES ('Concurso Receita Federal', 'ativo', '2025-03-10')

select*from prova;
INSERT INTO prova (data_prova, id_concurso, id_questoes) VALUES ('2025-10-01', 1, 1);
INSERT INTO prova (data_prova, id_concurso, id_questoes) VALUES ('2026-02-15', 2, 2);
INSERT INTO prova (data_prova, id_concurso, id_questoes) VALUES ('2025-05-10', 3, 3);
INSERT INTO prova (data_prova, id_concurso, id_questoes) VALUES ('2025-08-15', 4, 5);
INSERT INTO prova (data_prova, id_concurso, id_questoes) VALUES ('2025-07-15', 5, 6);
INSERT INTO prova (data_prova, id_concurso, id_questoes) VALUES ('2025-09-01', 6, 4);
INSERT INTO prova (data_prova, id_concurso, id_questoes) VALUES ('2025-10-15', 7, 1);
INSERT INTO prova (data_prova, id_concurso, id_questoes) VALUES ('2025-05-05', 8, 8);
INSERT INTO prova (data_prova, id_concurso, id_questoes) VALUES ('2025-05-10', 9, 2);
INSERT INTO prova (data_prova, id_concurso, id_questoes) VALUES ('2025-08-01', 10, 10)

INSERT INTO acessar (id_concurso, id_usuario) VALUES (1, 1);
INSERT INTO acessar (id_concurso, id_usuario) VALUES (2, 2);
INSERT INTO acessar (id_concurso, id_usuario) VALUES (3, 3);
INSERT INTO acessar (id_concurso, id_usuario) VALUES (4, 4);
INSERT INTO acessar (id_concurso, id_usuario) VALUES (5, 5);
INSERT INTO acessar (id_concurso, id_usuario) VALUES (6, 6);
INSERT INTO acessar (id_concurso, id_usuario) VALUES (7, 7);
INSERT INTO acessar (id_concurso, id_usuario) VALUES (8, 8);
INSERT INTO acessar (id_concurso, id_usuario) VALUES (9, 9);
INSERT INTO acessar (id_concurso, id_usuario) VALUES (10, 10)

# 1 CONSULTA (juncao de tabela com duas tabelas)
SELECT u.id AS 'idsuario', u.nome AS 'nome', u.email AS 'email', u.senha AS 'senha', 
quest.id AS 'idquestao', quest.Enunciado AS 'Enunciado', quest.Disciplina AS 'Disciplina',quest.id AS 'id'
FROM usuario AS u,questoes AS quest
WHERE u.id = quest.id;

# 2 CONSULTA AGRUPANDO COM O GROUP BY(agrupa resultado com base em coluna)
SELECT u.id AS 'idsuario', u.nome AS 'nome', u.email AS 'email', u.senha AS 'senha', 
quest.id AS 'idquestao', quest.Enunciado AS 'Enunciado', quest.Disciplina AS 'Disciplina',quest.id AS 'id'
FROM usuario AS u,questoes AS quest
WHERE u.id = quest.id
GROUP BY u.nome,quest.id;

# 3 CONSULTA
SELECT c.id AS 'idconc', c.descrição AS 'descricao', c.status AS 'status', c.data_inicio AS 'inicio' ,p.data_prova AS 'datap', p.id AS 'id'
FROM concursos AS c, prova AS p
where c.id = p.id;

# 4 CONSULTA 
SELECT id,descrição, status, data_inicio FROM concursos ORDER BY descrição DESC;

# 5 CONSULTA (com inner join)
SELECT u.id AS 'idsuario', u.nome AS 'nome', u.email AS 'email', u.senha AS 'senha'
FROM usuario AS u
INNER JOIN acessar AS a
ON a.id_usuario = u.id;

# 6 CONSULTA (com left outer join ou left join)
SELECT * FROM usuario
LEFT OUTER JOIN questoes
ON questoes.id_usuario = usuario.id;

# 7 CONSULTA (com right outer join)
SELECT * FROM usuario
RIGHT OUTER JOIN questoes
ON questoes.id_usuario = usuario.id;

# 8 full outer join versao mysql(é uma uniao de left e right join) -- 
SELECT * FROM usuario
LEFT OUTER JOIN questoes
ON questoes.id_usuario = usuario.id
UNION
SELECT * FROM usuario
RIGHT OUTER JOIN questoes
ON questoes.id_usuario = usuario.id;

# 9 CROSS JOIN (Retorna o produto cartesiano de ambas as tabelas, ou seja, todas as combinações possíveis de linhas das duas tabelas.juncao cruzada)
SELECT u.id AS 'idsuario', u.nome AS 'nome', u.email AS 'email', u.senha AS 'senha'
FROM usuario AS u
CROSS JOIN questoes AS q;

# 10 SELF JOIN (juncao com a propria tabela)
SELECT a.nome AS 'usuario1',b.nome AS 'usuario2', a.email
FROM usuario AS a
INNER JOIN usuario AS b
ON a.id <> b.id
AND a.email = b.email;

# 11 SUBCONSULTAS 

SELECT Enunciado, Disciplina FROM questoes WHERE id_usuario
IN (SELECT id FROM usuario WHERE nome = 'Joao Silva'); 
