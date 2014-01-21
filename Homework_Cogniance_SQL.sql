--create database Homework
--go

--use Homework
--go

--create table Patients (
--Id int identity (1,1) not null primary key, 
--Name nvarchar(50) not null, 
--Lastname nvarchar (50) not null, 
--telephone nvarchar (50), 
--email nvarchar(50))
--go

--insert Patients (Name, Lastname, telephone, email)
--values ('Alex', 'Bachevych', '0952724454', 'alexbacevici@gmail.com'),
--('Asya','Bachevych', '0672453354', 'abacevici@gmail.com'), 
--('Ivan', 'Ivanov', '0234567890', 'ivanov@mail.ru'),
--('Petr', 'Petrov', '0123456789', 'petrov@ukr.net'),  
--('Nikolay', 'Sidorov', '0987234454', 'sidorov@inbox.ru')
--go

--Select * from Patients

--create table Doctors(
--ID int not null identity (1,1) primary key, 
--Name nvarchar (50) not null, 
--Lastname nvarchar (50) not null,
--Telephone nvarchar (20) not null,
--Specialty nvarchar (50) not null
--)
 
 --insert Doctors (Name, Lastname, Telephone, Specialty)
 --values 
 --( 'Sergey', 'Parfeniuk', '0503302878', 'Surgeon'),
 --('Iryna', 'Parfeniuk', '0631592079', 'Neurologist'), 
 --('Kateryna', 'Astistova', '0952733885', 'Otolaryngologist'),
 --('Anatoliy', 'Kotik','0675091978', 'Ophthalmologist'),
 --('Olga', 'Goncharova', '0979530465', 'Gastroenterologist')
 
 --create table Visits
 --(Id int not null identity (1,1) primary key,
 --PatientID int not null foreign key references Patients(Id),
 --DoctorID int not null foreign key references Doctors(Id),
 --VisitDate datetime not null)
 
 --insert Visits 
 --values 
 --(1,3, '2014-01-20T09:00:00'),
 --(2,1,'2014-01-21T10:00:00'),
 --(3,2,'2014-01-21T09:00:00'),
 --(4,5,'2014-01-21T11:00:00'),
 --(2,5,'2014-01-21T12:00:00')
 
 
 --Select  p.Name + ' '+ p.Lastname as Patient,
	--	d.Name + ' ' + d.Lastname as Doctor,
	--	v.VisitDate as Data
 --from Patients as p
 --join Visits as v on v.PatientID=p.Id
 --join Doctors as d on d.ID=v.DoctorID
 --where V.VisitDate between '2014-01-21' and '2014-01-22'
	--	AND P.Name='Asya'		
	
 --Select  p.Name + ' '+ p.Lastname as Patient,
	--	d.Name + ' ' + d.Lastname as Doctor,
	--	v.VisitDate as Data,
	--	d.Specialty
 --from Patients as p
 --join Visits as v on v.PatientID=p.Id
 --join Doctors as d on d.ID=v.DoctorID
 --where V.VisitDate between '2014-01-21' and '2014-01-22'
	--	AND P.Name='Asya'
	

 --Select  p.Name,COUNT(v.id)
 --from Visits as v
 --join Patients as p on p.Id=v.PatientID
 --where V.VisitDate between '2014-01-21' and '2014-01-22'	
 --group by p.Name
 
 
 
 
 
 
 


