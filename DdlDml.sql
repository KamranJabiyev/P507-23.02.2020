Exec sp_rename 'Student','Stu'

Exec sp_rename 'Stu.Surname','Lastname'

select * from Stu
--where Firstname='Mubush' AND Lastname='1'
--where Id>2
--where Id>2 OR Firstname='Mubush'
--Where Id Between 2 AND 5
--where Id in(2,4,15)
--where Id>=2 AND Id<=5

update Stu set Firstname='Mubush',Lastname='Memmedzade' 
where Id=1

delete from Stu

drop table Stu

create table Student(
	Id int identity,
	Firstname nvarchar(100) not null,
	Lastname nvarchar(100),
	Email varchar(200) unique
)
select * from Student

insert into Student values('Kenan','Begeliyev','k@code.az')

insert into Student values('Kenan1','Begeliyev1','k1@code.az')

insert into Student (Firstname,Email) 
values('Sadiq','e@code.az')

insert into Student
values('Javid','Asadov','javid@code.az')

insert into Student
values('Ferid','Eliyev','ferid1@mail.az',28),
		('Nigar','Mirzeyeva','n1@mail.ru',19),
		('Abulfat','Memmedov','abulfat1@mail.biz',30)

select upper(Firstname) 'Upper'  from Student
select lower(Firstname) 'Lower' from Student

select SUBSTRING(Email,CHARINDEX('@',Email)+1,LEN(Email)) from Student

Select CHARINDEX('@',Email) from Student

select Email from Student where Email
 LIKE '%code%'

alter table Student 
add Age int

select SUM(Age) from Student
select AVG(Age) from Student

select Firstname 'ortayashli' from Student where Age=(select AVG(Age) from Student)

select MIN(Age) 'korpe' from Student

select MAX(Age) 'az qalib' from Student

select * from Student order by Lastname desc

select distinct Firstname from Student

select Firstname,Count(*) 'Count'
from Student

Group by Firstname
having Count(*)>1

select Count(*) from Student





