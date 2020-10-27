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

