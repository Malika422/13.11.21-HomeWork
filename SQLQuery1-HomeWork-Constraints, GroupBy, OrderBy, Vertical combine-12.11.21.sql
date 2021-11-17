CREATE DATABASE PersonDB
CREATE TABLE Students(
  Id INT PRIMARY KEY IDENTITY,
  Name nvarchar (50) NOT NULL,
  Surname nvarchar (100),
  Phone int unique,
  Score int default 50,
  Comment nvarchar (500),
  IsGraduated int default 0
)

INSERT INTO Students(Name,Surname,Phone,Score,IsGraduated)
  VALUES ('Malika','Suleymanova',000,70,1),
         ('Gulchin','Isayeva',001,85,1),
         ('Jale','Rzayeva',085,90,1),
         ('Gunay','Valiyeva',008,100,1),
         ('Murad','Isayev',854,65,1),
         ('Nazrin','Mammadova',077,81,1)

INSERT INTO Students(Name,Surname,Phone,Score)
  VALUES ('Melek','Suleymanova',088,49),
         ('Leman','Isayeva',044,40),
         ('Arzu','Rzayeva',025,36),
         ('Leyla','Valiyeva',800,12)

 Update  SET Comment = 'Congratulations' WHERE Score > (SELECT AVG(Score) FROM Students)
 Update Students SET Comment = 'So bad' WHERE Score < (SELECT AVG(Score) FROM Students)
 SELECT * FROM Students
 SELECT Name  + ' ' + Surname 'FullName' , Phone, Score, Comment, IsGraduated FROM Students

--Yeni bir 'GraduatedStudents' table yaradib, Students table'ndan 'IsGraduated' data'si 'True' olan telebeleri 'GraduatedStudents' table'na elave etmek.
 CREATE TABLE GraduatedStudents  (
  Id INT PRIMARY KEY IDENTITY,
  Name nvarchar (50) NOT NULL,
  Surname nvarchar (100),
  Phone int unique,
  Score int default 50,
  Comment nvarchar (500),
  IsGraduated int default 0
 )

 INSERT INTO GraduatedStudents (Name, Surname, Phone, Score, Comment, IsGraduated)
 SELECT Name, Surname, Phone, Score, Comment, IsGraduated
 FROM Students
 WHERE IsGraduated = 1

 --'Students' table'dan 'IsGraduated' data'si 'True' olan telebeleri silmek.
 DELETE FROM Students WHERE IsGraduated=1


 

 


        



