CREATE SCHEMA LibraryManagement;

USE LibraryManagement;

CREATE TABLE authors (
  author_id INT AUTO_INCREMENT PRIMARY KEY,
  author_name VARCHAR(45) );
  
  CREATE TABLE genres (
  genre_id INT AUTO_INCREMENT PRIMARY KEY,
  genre_name VARCHAR(45));
  
  CREATE TABLE books (
  book_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255),
  publication_year YEAR,
  author_id INT,
  genre_id INT,
  FOREIGN KEY (author_id) REFERENCES authors (author_id),
  FOREIGN KEY (genre_id) REFERENCES genres (genre_id));
  
  CREATE TABLE users (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  user_name VARCHAR(45),
  email VARCHAR(60));
  
  CREATE TABLE borrowed_books (
  borrowed_id INT AUTO_INCREMENT PRIMARY KEY,
  book_id INT,
  user_id INT,
  borrow_date DATE,
  return_date DATE,
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  FOREIGN KEY (book_id) REFERENCES books (book_id));
  
  INSERT INTO `librarymanagement`.`authors` (`author_name`) VALUES ('Stephen King');
INSERT INTO `librarymanagement`.`authors` (`author_name`) VALUES ('Nicholas Sparks');
INSERT INTO `librarymanagement`.`authors` (`author_name`) VALUES ('Jeffrey Archer');
INSERT INTO `librarymanagement`.`genres` (`genre_name`) VALUES ('Fiction');
INSERT INTO `librarymanagement`.`genres` (`genre_name`) VALUES ('Novel');
INSERT INTO `librarymanagement`.`genres` (`genre_name`) VALUES ('Thriller');
INSERT INTO `librarymanagement`.`genres` (`genre_name`) VALUES ('Non-fiction');
INSERT INTO `librarymanagement`.`users` (`user_name`, `email`) VALUES ('Ivan Ivanovich', 'ereg@ergr.yhj');
INSERT INTO `librarymanagement`.`users` (`user_name`, `email`) VALUES ('John Lam', 'wadwe@hf.yth');
INSERT INTO `librarymanagement`.`users` (`user_name`, `email`) VALUES ('Sam Flow', 'uyjfn@rht.yhtg');
INSERT INTO `librarymanagement`.`books` (`title`, `publication_year`, `author_id`, `genre_id`) VALUES ('PragmaticMom', 1963, '1', '1');
INSERT INTO `librarymanagement`.`books` (`title`, `publication_year`, `author_id`, `genre_id`) VALUES ('All Done Monkey', 1975, '1', '2');
INSERT INTO `librarymanagement`.`books` (`title`, `publication_year`, `author_id`, `genre_id`) VALUES ('Colours of Us', 2012, '3', '2');
INSERT INTO `librarymanagement`.`books` (`title`, `publication_year`, `author_id`, `genre_id`) VALUES ('Discovering the World Through My Son’s Eyes', 2009, '3', '3');
INSERT INTO `librarymanagement`.`borrowed_books` (`book_id`, `user_id`, `borrow_date`, `return_date`) VALUES ('1', '2', '2024-03-01', '2024-03-12');
INSERT INTO `librarymanagement`.`borrowed_books` (`book_id`, `user_id`, `borrow_date`, `return_date`) VALUES ('3', '3', '2023-12-26', '2024-02-03');
