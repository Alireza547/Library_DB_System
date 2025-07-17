use library;
insert into libraryMember
values( 1000 , 'Ali' , 'mousavi' , '0150871181' , '2005-05-22' , 98990099 , 'zalireza1234@gmail.com' , 'alborz_fardis' , '2021-02-03' , 2000 );

insert into libraryMember
values( 1001 , 'reza' , 'moradi' , '1234467931' , '2002-03-18' , 98910533 , 'reza234vb@gmail.com' , 'tehran_natanz' , '2022-11-01' , 2000 );

insert into libraryMember
values( 1002 , 'amir' , 'molavi' , '0159811345' , '2000-10-29' , 982355671 , 'amir197j@gamil.com' , 'alborz_fardis' , '2018-03-24' , 2001 );

insert into libraryMember
values( 1003 , 'ahmad' , 'mahmodi' , '1324561679' , '1990-09-11' , 98345772 , 'ahmad2fr@gamil.com' , 'mazandaran_aliabad' , '2015-12-02' , 2002 );

insert into MembershipType
values( 2000 , 'student' , 2 , 5 );

insert into MembershipType
values( 2003 , 'student' , 5 , 9 );

insert into MembershipType
values( 2001 , 'teacher' , 1 , 10 );

insert into MembershipType
values( 2002 , 'researcher' , 3 , 7 );

insert into libraryGroup
values( 3000 , 'students' , 30 , '2023-02-07' );

insert into libraryGroup
values( 3001 , 'jade-saveh' , 40 , '2021-07-15' );

insert into libraryGroup
values( 3002 , 'teachers' , 50 , '2014-05-21' );

insert into Joining_Group
values( 4000 , 1000 , 3000 , '2024-01-03' );

insert into Joining_Group
values( 4001 , 1001 , 3001 , '2023-08-09' );

insert into Joining_Group
values( 4002 , 1002 , 3002 , '2019-06-30' );

insert into libraryEvent
values( 5000 , 'reading' , '2023-09-29' , 'floor-2' , '15:45' );

insert into libraryEvent
values( 5001 , 'reading' , '2024-09-29' , 'floor-1' , '18:45' );

insert into libraryEvent
values( 5002 , 'recitation' , '2024-12-15' , 'floor-1' , '16:45' );

insert into JoiningEvent
values( 6000 , '2023-09-19' , 1000 , 5000 );

insert into JoiningEvent
values( 6001 , '2024-09-19' , 1001 , 5001 );
 
insert into JoiningEvent
values( 6002 , '2024-12-05' , 1002 , 5002 );

insert into JoiningEvent
values( 6003 , '2024-12-05' , 1003 , 5002 );

insert into librarian
values( 7000 , 'Ali' , 'mousavi' , 'alborz-fardis-golestan3' , 'alimou1298@gmail.com' , 149836780 , 989101102233 , '1988-04-08' );

insert into librarian
values( 7001 , 'mohammad' , 'aghai' , 'tehran-vanak' , 'mohammadagha198@gamil.com'  , 1234732687 , 989912453355 , '1980-08-22' );

insert into Notice
values( 8000 , 'reading event' , '2023-09-24' , 7000 , 5000 );

insert into Notice
values( 8001 , 'reading event' , '2024-09-24' , 7000 , 5001 );

insert into Notice
values( 8002 , 'recitation event' , '2024-12-10' , 7001 , 5002 );

insert into Book
values( 9000 , '1984' );

insert into Book
values( 9001 , 'almot castle' );

insert into Book
values( 9002 , 'black cat' );

insert into Loan
values( 1100 , '2022-04-01' , '2022-05-01' , 9000 , 1000 );

insert into Loan
values( 1101 , '2023-01-13' , '2023-02-13' , 9002 , 1001 );

insert into Author
values( 1200 , 'jorj' , 'orol' , 'indian/british' );

insert into Author
values( 1201 , 'william' , 'cooper' , 'American' );

insert into Compilation
values( 1300 , 1200 , 9000 );

insert into Compilation
values( 1301 , 1200 , 9001 );

insert into Compilation
values( 1302 , 1201 , 9001 );

insert into Compilation
values( 1303 , 1201 , 9002 );

insert into Review
values( 1400 , 'good' , '2024-09-21' , 9000 );

insert into Review
values( 1401 , 'not bad' , '2025-03-30' , 9001 );

insert into Review
values( 1402 , 'perfect' , '2025-02-19' , 9002 );

insert into Reservation
values( 1500 , '2024-06-12' , '2024-07-30' , 9001 );

insert into Reservation
values( 1501 , '2025-01-20' , '2025-02-20' , 9002 );

insert into Penalty
values( 1600 , 1100 , 30000 , '2022-05-20' , 'damage to the book' );

insert into Payment
values( 3100 , 'card' , '2022-05-22' , 1600 );

insert into Section
values( 1800 , 'novels' , 'floor1' );

insert into Section
values( 1801 , 'novels/criminal' , 'floor1' );

insert into Section
values( 1802 , 'historical' , 'floor2' );


insert into Copy
values( 1700 , 2 , '2024-05-06' , 'pdf' , 9000 , 1800 );

insert into Copy
values( 1701 , 3 , '2024-09-13' , 'pdf/audio/physical' , 9001 , 1802 );

insert into Copy
values( 1702 , 2 , '2024-02-15' , 'pdf/physical' , 9002 , 1801 );

insert into Shelf
values( 1900 , 1 , 1800 );

insert into Shelf
values( 1901 , 2 , 1800 );

insert into Shelf
values( 1902 , 1 , 1801 );

insert into Shelf
values( 1903 , 2 , 1801 );

insert into Shelf
values( 1904 , 3 , 1801 );

insert into Shelf
values( 1905 , 1 , 1802 );

insert into Leaflet
values( 2100 , 'criminal' , 1 , '2025-03-09' , 1801 );

insert into Leaflet
values( 2101 , 'historical' , 1 , '2025-02-19' , 1802 );

insert into Publisher
values( 2200 , 'nashr' , 'tehran-azadi' , 989900123355 );

insert into Publisher
values( 2201 , 'yoshita' , 'tehran-vanak' , 989900126378 );
 
insert into Publication
values( 2300 , '2025-04-12' , 2200 , 1700 );

insert into Publication
values( 2301 , '2025-05-18' , 2200 , 1701 );

insert into Publication
values( 2302 , '2025-01-11' , 2201 , 1702 );

select * from libraryMember;
select * from MembershipType;
select * from libraryGroup;
select * from Joining_Group;
select * from libraryEvent;
select * from JoiningEvent;
select * from librarian;
select * from Notice;
select * from Book;
select * from Loan;
select * from Penalty;
select * from Payment;
select * from Author;
select * from Compilation;
select * from Review;
select * from Reservation;
select * from Section;
select * from Copy;
select * from Shelf;
select * from Leaflet;
select * from Publisher;
select * from Publication;

update Section
set Section_name = 'novels/criminal'
where Section_id = 1801;

update libraryMember
set libraryMember_address ='alborz_fardis'
where libraryMember_id = 1000
