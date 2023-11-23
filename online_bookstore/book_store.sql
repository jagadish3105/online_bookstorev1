CREATE TABLE books (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    price FLOAT NOT NULL
);

CREATE TABLE users (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(80) NOT NULL UNIQUE,
    password VARCHAR(200) NOT NULL
);

CREATE TABLE cart_items (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT(11) NOT NULL,
    book_id INT(11) NOT NULL,
    quantity INT(11) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);

CREATE TABLE orders (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT(11) NOT NULL,
    status VARCHAR(20) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO books (id, title, author, price) VALUES
(1, 'alice in wonderland', 'lewis caroll', 100),
(3, 'Around the world in 80 days', 'Julus Verne', 200);

INSERT INTO users (id, username, password) VALUES
(1, 'Admin', 'pbkdf2:sha256:150000$otBpWTk6$29fe69d40fb804f78804d51664fba907e851cafd59701183fc67b40d0e6a4604');
