CREATE TABLE produtora_dos_jogos (
  id_produtora INTEGER PRIMARY KEY NOT NULL,
  nome_produtora VARCHAR(30) NOT NULL

);

INSERT INTO produtora_dos_jogos VALUES (
    1,
    'Naughty_Dog'
);

INSERT INTO produtora_dos_jogos VALUES (
    2,
    'Nintendo'
);

INSERT INTO produtora_dos_jogos VALUES (
    3,
    'Team_Cherry'
);

INSERT INTO produtora_dos_jogos VALUES (
    4,
    'From_Software'
);    

INSERT INTO produtora_dos_jogos VALUES (
    5,
    'Rockstar_Games'
);    

CREATE TABLE jogos (
    id_jogos INTEGER PRIMARY KEY NOT NULL,
    nome_jogo VARCHAR(80) NOT NULL,
    nome_protagonista VARCHAR(30) NOT NULL,
    ano_lancamento VARCHAR(30) NOT NULL,
    genero_jogo VARCHAR(30) NOT NULL,
    id_produtora INTEGER,
    FOREIGN KEY (id_produtora) REFERENCES produtora_dos_jogos(id_produtora)
);

INSERT INTO jogos VALUES (
    1,
    'The_Last_Of_Us_2',
    'Ellie/Abby',
    '2020',
    'Survival_Horror',
    1
);

INSERT INTO jogos VALUES (
    2,
    'The_Legend_Of_Zelda_Breath_of_The_Wild',
    'Link/Zelda',
    '2017',
    'Aventura',
    2
);

INSERT INTO jogos VALUES (
    3,
    'Hollow_Knight',
    'Cavaleiro_Vazio',
    '2017',
    'Metroidvania',
    3
);

INSERT INTO jogos VALUES (
    4,
    'Elden_Ring',
    'Tarnished',
    '2022',
    'Soulslike',
    4
);

INSERT INTO jogos VALUES (
    5,
    'Red_Dead_Redemption_2',
    'Arthur_Morgan/Jonh_Marston',
    '2018',
    'Mundo_Aberto',
    5
);

SELECT * FROM jogos;
SELECT * FROM produtora_dos_jogos
