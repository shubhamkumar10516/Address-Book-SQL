CREATE DATABASE address_book_service; #uc1 creating database

CREATE TABLE address_Book (                                #uc2 creating table
                           firstName varchar(15) not null,
                           lastName varchar(15),
                           address varchar(15),
                           city varchar(15) not null,
                           state varchar(15) not null,
                           zip int(6) not null,
                           phoneNumber bigint(10) not null,
                           email varchar(30),
                           PRIMARY KEY(email));

DESCRIBE address_Book;

#uc3 inserting table
INSERT INTO address_Book (firstName, lastName, address, city, state, zip, phoneNumber, email) VALUES 
('Shubham', 'Kumar', 'Nutan Nagar', 'Gaya', 'Bihar', 823001, 8454347223, 'shubh.kum@gmail.com'), ('Aditya', 'Kumar', 'New Area', 'Kolkata', 'WB', 711101, 7454347223, 'adi.kum@gmail.com'), ('Vinay', 'Kumar', 'Nutan Nagar', 'Gaya', 'Bihar', 823001, 8454347223, 'Vinay.kum@gmail.com');

#UC4
UPDATE address_Book SET phoneNumber = 7764528212 WHERE firstName = 'Aditya';

#UC5
DELETE FROM address_Book WHERE firstName = 'Vinay';

