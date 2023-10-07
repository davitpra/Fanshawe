CREATE DATABASE Inventory;

USE Inventory;

CREATE TABLE IF NOT EXISTS Users (
    id INT NOT NULL,
    user_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Items (
    id INT NOT NULL,
    user_id INT NOT NULL,
    item_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES Users (id)
);

INSERT INTO Users (id, user_name)
VALUES (1, 'DAVID');

INSERT INTO Items (id, user_id, item_name)
VALUES 
    (1, 1, 'Laptop'),
    (2, 1, 'Phone'),
    (3, 1, 'book 1'),
    (4, 1, 'headphones'),
    (5, 1, 'bicycle');