CREATE TABLE User (
    user_id INT PRIMARY KEY,
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255)
);

CREATE TABLE Reader (
    user_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);
CREATE TABLE Author (
    user_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    genre VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);
CREATE TABLE Book (
    book_id INT PRIMARY KEY,
    title VARCHAR(255),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Author(user_id)
);
CREATE TABLE AuthorBook (
    book_id INT,
    author_id INT,
    FOREIGN KEY (book_id) REFERENCES Book(book_id),
    FOREIGN KEY (author_id) REFERENCES Author(user_id),
    PRIMARY KEY (book_id, author_id)
);
CREATE TABLE ReaderBook (
    book_id INT,
    reader_id INT,
    FOREIGN KEY (book_id) REFERENCES Book(book_id),
    FOREIGN KEY (reader_id) REFERENCES Reader(user_id),
    PRIMARY KEY (book_id, reader_id)
);
