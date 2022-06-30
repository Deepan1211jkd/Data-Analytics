Create database LearnSqlDB;
use LearnSqlDB;

create table Events (Event_id int Not null primary key , Event_name varchar(20) Not Null ,  Fees int Not Null , 
Venue varchar(30) NOT NULL , Participant_count int Not Null); 

Insert into Events Values (1 , 'Solo Singing' , 100 , 'Auditorium' , 25);
Insert into Events Values (2 , 'Duet Singing' , 200 , 'Auditorium' , 15);
Insert into Events Values (3 , 'Solo Dance' , 150 , 'center stage' , 30);
Insert into Events Values (4 , 'Duet Dance' , 300 , 'center stage' , 10);
Insert into Events Values (5 , 'Group Dance' , 500 , 'center stage' , 7);
Insert into Events Values (6 , 'Fashion Show' , 600 , 'Ramp' , 10);
Insert into Events Values (7 , 'Short Film' , 100 , 'Theatre' , 40);

select count(*) from Events;


create table Participants (Participant_name varchar(20) Not Null primary key , 
Event_name varchar(30) NOT NULL , Fees_status varchar(10) Not Null); 

Insert into Participants Values ('Agilan' , 'Solo Dance' , 'Paid');
Insert into Participants Values ('Harish' , 'Short Film' , 'Paid');
Insert into Participants Values ('Abhi' , 'Solo Singing' , 'Not Paid');
Insert into Participants Values ('Sam' , 'Fashion Show' , 'Paid');
Insert into Participants Values ('Sanika' , 'duet Dance' , 'Not Paid');
Insert into Participants Values ('Hari' , 'Solo Singing' , 'Paid');
Insert into Participants Values ('Tanuja' , 'Solo Dance' , 'Not Paid');
Insert into Participants Values ('Vijay' , 'Solo Singin' , 'Paid');

Select count(*) from Participants;

Create View View_1 as
Select Event_name , Venue from Events where Participant_count > 10 and Venue = 'center stage';

Select * from View_2;

Create View View_2 as
Select Event_name , Venue from Events where Venue = 'Auditorium';

Create View View_3 as
Select E.Event_name , P.Participant_name from Events E , Participants P	 
where E.Event_name = P.Event_name;

Create Or Replace View View_4 as
Select E.Event_name , P.Participant_name from Participants P join Events E on  E.Event_name = P.Event_name and P.Event_name like 'Solo Singing';

Drop View View_1;

Insert into View_2 (Event_name , Venue) Values ('Solo','Theatre');