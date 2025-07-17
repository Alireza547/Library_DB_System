select libraryMember.libraryMember_first_name , libraryMember.libraryMember_last_name
from libraryMember
join MembershipType on libraryMember.membership_type_id = MembershipType.membership_type_id
where MembershipType.title ='student';

select *
from libraryMember
where libraryMember_id in( 
select libraryMember_id 
from Loan 
where Book_id in (
select Book_id 
from Book 
where Book_title = '1984'));

select Copy_id
from Copy 
where Copy_format = 'pdf';

select Book.Book_title 
from Book
join Copy on Book.Book_id = Copy.Book_id
join Publication on Copy.Copy_id = Publication.Copy_id
join Publisher on Publisher.Publisher_id = Publication.Publisher_id
where Publisher.Publisher_name = 'yoshita';

select *
from libraryMember
where libraryMember_address = 'alborz_fardis'; 

( select Book_id 
from Reservation)
intersect  
( select Book_id 
from Loan );

select *
from libraryMember
where libraryMember_first_name like 'Ali%';

select librarian.librarian_first_name , librarian.librarian_last_name 
from librarian 
join Notice on librarian.librarian_id = Notice.librarian_id 
join libraryEvent on libraryEvent.libraryEvent_id = Notice.libraryEvent_id
where libraryEvent.libraryEvent_title ='reading';

( select Book_id 
from Reservation )
except all 
( select Book_id 
from Review ) ;

select libraryGroup_name
from libraryGroup
order by librarycapacity asc;

create view members_alborz_fardis as 
select libraryMember.* , Joining_Group.Joining_Group_date ,  libraryGroup.libraryGroup_name
from libraryMember
join Joining_Group on libraryMember.libraryMember_id = Joining_Group.libraryMember_id
join libraryGroup on libraryGroup.libraryGroup_id = Joining_Group.libraryGroup_id
where libraryMember.libraryMember_address = 'alborz_fardis';
select * from  members_alborz_fardis;



