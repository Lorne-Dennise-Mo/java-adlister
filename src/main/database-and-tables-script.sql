CREATE DATABASE IF NOT EXISTS badlister_db;

USE badlister_db;

CREATE TABLE IF NOT EXISTS users (
    id INT unsigned NOT NULL AUTO_INCREMENT,
    username VARCHAR(50),
    password VARCHAR(200),
    PRIMARY KEY (id)

);

DROP TABLE IF EXISTS bads;

CREATE TABLE IF NOT EXISTS bads (
    id INT unsigned NOT NULL AUTO_INCREMENT,
    user_id INT unsigned NOT NULL,
    name VARCHAR(50),
    description TEXT,
    origin TEXT,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

INSERT INTO bads (user_id, name, description, origin)
VALUES (1, 'Freddy Krueger',
        'Dream Demon - a serial child-killer who had been burnt to death by his victims parents',
        'A Nightmare on Elm Street'),
       (1,
        'Darth Vader/Anakin Skywalker',
        'Once a heroic Jedi Knight, Anakin was seduced by the dark side',
        'Star Wars'),
    (1,
     'Thanos',
     'The Mad Titan fell in love with Death and vowed to deliver as many souls to her as necessary to win her love',
     'Marvel Comics'),
       (1,
        'Leatherface',
        'Butcher and serial murderer that eats his victims and wheres their skin',
        'Texas Chainsaw Massacre');