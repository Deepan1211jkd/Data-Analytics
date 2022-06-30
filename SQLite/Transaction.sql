use LearnSqlDB;

Select * from PArticipants;

Insert into Participants Values ('Kevin' , 'Solo Singing' , 'Paid');
Commit;

Update Participants set Event_name = 'Solo Dance' where participant_name = 'Kevin' ; 
commit;

Insert into Participants Values ('Delete' , 'Solo Singing' , 'Paid');
rollback;

Delete from Participants where participant_name = 'Kevin' ; 
Rollback;

Insert into Participants Values ('Keerthi' , 'Solo Singing' , 'Paid');
Insert into Participants Values ('Ramesh' , 'Solo Singing' , 'Paid');
Select * from PArticipants;



savepoint s1;


Delete from Participants where participant_name = 'Ramesh' ; 

Insert into Participants Values ('Ameer' , 'Solo Singing' , 'Paid');
Insert into Participants Values ('Rafeal' , 'Solo Singing' , 'Paid');
savepoint s2;

Rollback to s1;
