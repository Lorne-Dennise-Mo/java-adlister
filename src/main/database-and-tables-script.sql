CREATE DATABASE IF NOT EXISTS badlister_db;

USE badlister_db;

CREATE TABLE IF NOT EXISTS users (
    id INT unsigned NOT NULL AUTO_INCREMENT,
    username VARCHAR(50),
    password VARCHAR(200),
    PRIMARY KEY (id)

);


CREATE TABLE IF NOT EXISTS bads (
    id INT unsigned NOT NULL AUTO_INCREMENT,
    user_id INT unsigned NOT NULL,
    name VARCHAR(50),
    description TEXT,
    origin TEXT,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

