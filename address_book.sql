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

#UC6
SELECT firstName, lastName FROM address_Book WHERE city = 'Gaya' or state = 'WB'; 

#UC7
SELECT city, state, COUNT(*) FROM address_Book GROUP BY city, state;

#UC8
SELECT city, firstName FROM address_Book GROUP BY city, firstName ORDER BY firstName; 

#UC9
ALTER TABLE address_Book ADD name VARCHAR(15) NOT NULL;
ALTER TABLE address_Book ADD type VARCHAR(10) NOT NULL;

#UC10
SELECT type, COUNT(*) FROM address_Book GROUP BY type;

#UC11

INSERT INTO address_Book (firstName, lastName, address, city, state, zip, phoneNumber, email, name , type) VALUES ('Mayank', 'kumar', 'Street 5', 'Faridabad', 'Haryana', 823001, 8454347223, 'mayan.kumar@gmail.com', 'add1' , 'friend'), ('Mayank', 'kumar', 'Street 5', 'Faridabad', 'Haryana', 823001, 8454347223, 'mayan.kumar@gmail.com', 'add1' , 'family');

#creating contact table

CREATE TABLE Contact (email varchar(30) PRIMARY KEY, first_name varchar(30) NOT NULL, last_name varchar(30) NOT NULL, zip INT(6) NOT NULL);

#inserting values to Contact table

INSERT INTO Contact (email, first_name, last_name, zip) VALUES ('ram@gmail.com', 'ram', 'kumar', 121001),
                                                               ('raju@gmail.com', 'raju', 'kumar', 625001),
                                                               ('ramesh@gmail.com', 'ramesh', 'kumar', 821001);
                                                               
# creating phone_contact table

CREATE TABLE Phone_Contact (email varchar(30) NOT NULL, phone_number varchar(10));

#inserting to phone_contact table

INSERT INTO Phone_Contact (email, phone_number) VALUES ('ram@gmail.com', '9977442233'),
                                                       ('ram@gmail.com', '8977442233'),
                                                       ('raju@gmail.com', '7977442233'),
                                                       ('ramesh@gmail.com', '9877442233');



# creating city_state_contact table

CREATE TABLE City_State_Contact (email varchar(30) NOT NULL, city varchar(10), state varchar(10));

#inserting to phone_contact table

INSERT INTO City_State_Contact (email, city, state) VALUES ('ram@gmail.com', 'Delhi', 'Delhi'),
                                                           ('raju@gmail.com', 'Kolkata', 'WB'),
                                                            ('ramesh@gmail.com', 'Pune', 'Maharastra');


# creating type_contact and inserting to it

CREATE TABLE Type_Contact (email varchar(30) NOT NULL, type varchar(10));

INSERT INTO Type_Contact (email, type) VALUES  ('ram@gmail.com', 'Friend'),
                                                           ('raju@gmail.com', 'Family'),
                                                            ('ram@gmail.com', 'Family');



# creating name_contact

CREATE TABLE Name_Contact (email varchar(30) NOT NULL, name varchar(10));


INSERT INTO Name_Contact (email, type) VALUES  ('ram@gmail.com', 'book1'),
                                                           ('raju@gmail.com', 'book2'),
                                                            ('ramesh@gmail.com', 'book3');





