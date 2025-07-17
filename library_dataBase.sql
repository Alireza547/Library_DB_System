CREATE DATABASE LIBRARY;

CREATE TABLE libraryMember(
libraryMember_id integer not null,
libraryMember_first_name varchar(50),
libraryMember_last_name varchar(50),
libraryMember_nation_id varchar(10) UNIQUE,
libraryMember_berth_date date,
libraryMember_phone_number integer,
libraryMember_email varchar(100),
libraryMember_address text,
membership_date date,
membership_type_id integer not null,
primary key(libraryMember_id),
foreign key(membership_type_id) references MembershipType(membership_type_id));

CREATE TABLE MembershipType(
membership_type_id integer not null,
title varchar(50),
durationDays integer not null,
fee decimal(10,2),
primary key(membership_type_id));

CREATE TABLE Joining_Group(
Joining_Group_id integer not null,
libraryMember_id integer not null,
libraryGroup_id integer not null,
Joining_Group_date date,
primary key(Joining_Group_id),
foreign key(libraryMember_id) references libraryMember(libraryMember_id),
foreign key(libraryGroup_id) references libraryGroup(libraryGroup_id));

CREATE TABLE libraryGroup(
libraryGroup_id integer not null,
libraryGroup_name varchar(50),
librarycapacity integer,
libraryGroup_formation_date date,
primary key(libraryGroup_id));

CREATE TABLE libraryEvent(
libraryEvent_id integer not null,
libraryEvent_title varchar(50),
libraryEvent_date date,
libraryEvent_place varchar(50),
libraryEvent_clock char(5),
primary key(libraryEvent_id));

CREATE TABLE JoiningEvent(
JoiningEvent_id integer not null,
JoiningEvent_date date,
libraryMember_id integer not null,
libraryEvent_id integer not null,
primary key(JoiningEvent_id),
foreign key(libraryMember_id) references libraryMember(libraryMember_id),
foreign key(libraryEvent_id) references libraryEvent(libraryEvent_id));

CREATE TABLE librarian(
librarian_id integer not null,
librarian_first_name varchar(50),
librarian_last_name varchar(50),
librarian_addres text,
librarian_email varchar(50),
librarian_nation_id integer not null,
librarian_phone_number integer,
librarian_birth_date date,
primary key(librarian_id));

CREATE TABLE Notice(
Notice_id integer not null,
Notice_information text,
Notice_date date,
librarian_id integer not null,
libraryEvent_id integer not null,
primary key(Notice_id),
foreign key(libraryEvent_id) references libraryEvent(libraryEvent_id),
foreign key(librarian_id) references librarian(librarian_id));

CREATE TABLE Book(
Book_id integer not null,
Book_title varchar(50),
primary key(Book_id));

CREATE TABLE Loan(
Loan_id integer not null,
Loan_date date,
Loan_return_date date,
Book_id integer not null,
libraryMember_id integer not null
primary key(Loan_id),
foreign key(Book_id) references Book(Book_id),
foreign key(libraryMember_id) references libraryMember(libraryMember_id));

CREATE TABLE Author(
Author_id integer not null,
Author_first_name varchar(50),
Author_last_name varchar(50),
Author_nation varchar(50),
primary key(Author_id));

CREATE TABLE Compilation(
Compilation_id integer not null,
Author_id integer not null,
Book_id integer not null,
primary key(Compilation_id),
foreign key(Author_id) references Author(Author_id),
foreign key(Book_id) references Book(Book_id));

CREATE TABLE Review(
Review_id integer not null,
Review_text text,
Review_date date,
Book_id integer not null,
primary key(Review_id),
foreign key(Book_id) references Book(Book_id));

CREATE TABLE Reservation(
Reservation_id integer not null,
Reservation_date date,
Reservation_completion_date date,
Book_id integer not null,
primary key(Reservation_id),
foreign key(Book_id) references Book(Book_id));

CREATE TABLE Penalty(
Penalty_id integer not null,
Loan_id integer not null,
Penalty_amount integer,
Penalty_date date,
Penalty_information text,
primary key(Penalty_id),
foreign key(Loan_id) references Loan(Loan_id));

CREATE TABLE Payment(
Payment_id integer not null,
Payment_way varchar(50),
Payment_date date,
Penalty_id integer not null,
primary key(Payment_id),
foreign key(Penalty_id) references Penalty(Penalty_id));

CREATE TABLE Copy(
Copy_id integer not null,
Copy_number integer,
Copy_date date,
Copy_format varchar(50),
Book_id integer not null,
Section_id integer not null,
primary key(Copy_id),
foreign key(Section_id) references Section(Section_id),
foreign key(Book_id) references Book(Book_id));

CREATE TABLE Section(
Section_id integer not null,
Section_name varchar(50),
Section_place varchar(50),
primary key(Section_id));

CREATE TABLE Shelf(
Shelf_id integer not null,
Shelf_number integer,
Section_id integer not null,
primary key(Shelf_id),
foreign key(Section_id) references Section(Section_id));

CREATE TABLE Leaflet(
Leaflet_id integer not null,
Leaflet_title varchar(50),
Leaflet_number integer,
Leaflet_date date,
Section_id integer not null,
primary key(Leaflet_id),
foreign key(Section_id) references Section(Section_id));

CREATE TABLE Publisher(
Publisher_id integer not null,
Publisher_name varchar(50),
Publisher_addres text,
Publisher_phone_number integer,
primary key(Publisher_id));

CREATE TABLE Publication(
Publication_id integer not null,
Publication_date date,
Publisher_id integer not null,
Copy_id integer not null,
primary key(Publication_id),
foreign key(Publisher_id) references Publisher(Publisher_id),
foreign key(Copy_id) references Copy(Copy_id));

show tables;

alter table Loan
add constraint pk_loan primary key(Loan_id);








