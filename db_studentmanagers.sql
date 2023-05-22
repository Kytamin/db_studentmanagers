create database StudentManagers;
use StudentManagers;
create table Class(
classID int primary key auto_increment,
className varchar(60) not null,
startDate Datetime not null,
status bit 
);
create table Student(
studentID int primary key auto_increment,
studentName varchar(30) not null,
address varchar(50),
phone varchar(20),
status bit,
classID int not null,
foreign key(classID) references Class(classID)
);
create table Subject(
  subID int primary key auto_increment,
  subName varchar(30) not null,
  credit tinyint not null default 1 check(credit >=1),
  status bit default 1
  );
  create table Mark(
  markID int primary Key auto_increment,
  subID int,
  foreign key(subID) references Subject(subID),
  studentID int,
  foreign key (studentID) references Student(studentID),
  UNIQUE (subId, studentId),
  mark float default 0 check (mark between 0 and 100),
  examTimes tinyint default 1
  )