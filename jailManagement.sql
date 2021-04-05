create database jailManagement


create table officer(
       officerId int primary key ,
       fname varchar(50) not null,
	   lname varchar(50) not null,
	   password varchar(50),
	   age int  not null check (age >= 20), 
	   title varchar(50) ,   
	   phoneNo varchar(50) ,
	   noOfPrisoners int,
	   dutyShift varchar(50) ,    
	   dutyBuilding int not null 
)


ALTER TABLE officer
ADD  noOfPrisoners int Default 0;



select * from officer


--crete table staff()

create table visitor(

      visitorId int identity(1,1) primary key, 
	  visitorName varchar(50) , 
	  visitorPhone varchar(50) , 
	  vAddress varchar(100) , 
	  visitingDate Date 
	   
)

drop table building;



create table building(
       buildId int primary key,   
	   section int ,
	  
	   totalFloor int 
	 	    
)


create table cage (

	cageno int ,
	
)







create table prisonerCase(
       
	  
	   caseId int primary key ,
	   caseType varchar(100) 

)




drop table prisonerCase;




create table prisonerPerformance(
     
	  jobId int identity(1,1) primary key , 
	  jobType varchar (100) , 
	  jobArea varchar (100) , 
	
)

create table salary_job(

	jobId int foreign key references prisonerPerformance,
	salary int,

)



create table prisoners(
 
       pFname varchar(50) not null,
	   pLname varchar(50) not null,
	   pAge int  not null check (pAge >= 18) , 
	   pAddress  varchar(100) ,
	   gender varchar(20),
	   pId int IDENTITY(1,1)  primary key ,
	   officerId int foreign key references officer,
	   buildingId int foreign key references building , 
	   cageno varchar(10) default null,
	   jailed  varchar(10) default null,
	   dateofIn date ,
	   salary float default null,
	   dateofoccur date default null,
	   dateofOut date default null,
	   lawyerName varchar(50) null,
	   visitorId int  null,  
	   jobId int foreign key references prisonerPerformance, 
	   caseId int foreign key references prisonerCase ,
	   	     
)


create table visitor_prisoner(

      visitorId int foreign key references visitor , 
	  pId int foreign key references prisoners ,
	  visit_Date date , 


)

create table lawyer(

	id int IDENTITY(1,1) primary key,
	name varchar(50),
	age int,
	addr varchar(100),
	court varchar(50),
	pId int foreign key references prisoners,
	
)

create table occurs_prisoners(
	
	caseId int foreign key references prisonerCase,
	area varchar default null,
	occur_date date,

)


drop table prisonerPerformance;
select * from prisoners where pfname like 'j%';

create table adminstrator(
   
	id int primary key ,
	password varchar(50) 

)










select * from visitor_prisoner;


SELECT pId,pFname,visitorName FROM prisoners INNER JOIN visitor ON prisoners.visitorId = visitor.visitorId where pFname like 'j%';

SELECT PId as id,pFname+' '+pLname as Name ,visitorName as Visitor_Name,  visitorId as id, visitingDate as Last_Visit FROM prisoners INNER JOIN visitor ON prisoners.visitorId = visitor.visitorId

insert into adminstrator(id , password) 
values( 103104117, 'admin')

insert into lawyer(name , age,pid) 
values( 'John', 42,1)

update prisoners set lawyerName='1' WHERE pId=1;

insert into building(buildId,section,totalFloor)
values(1,4,5)

Select * from lawyer;

Select * from lawyer where id=(select max(id) from lawyer);

insert into cage(cageno)
values(201),(202),(203),(204),(205),
	  (301),(302),(303),(304),(305),
	  (401),(402),(403),(404),(405),
	  (501),(502),(503),(504),(505)



insert into prisonerCase(caseid,casetype)
values(1,'Murder'),(2,'Manslaughter'),(3,'Larceny'),(4,'Burglary'),(5,'Robbery'),(6,'Rape')




drop table lawyer;
drop table visitor_prisoner;
drop table prisoners;

insert into prisonerPerformance (jobType,jobArea)
values('Cooking','Kitchen'),('cleaning','kitchen'),('cleaning','washroom'),('cleaning','laundry'),('Agriculture','north field'),('Agriculture','South field'),('MANUFACTURE','factory')


select * from prisonerPerformance;


select * from prisoners where pId=1;

select pid,pFname+' '+pLname as Name, pAge as age ,fname+' '+lname as Officer_Name,o.officerId , age,title,PhoneNo,dutyshift 
             FROM prisoners 
            FULL JOIN 
            officer o ON prisoners.officerId = o.officerId Where o.officerId like '1%';
             Where prisoners.pId like '"+sp+"%' or pFname like '"+sp+"%' or pLname like '"+sp+"%'  or fname like '"+sp+"%'

select pid,pFname+' '+pLname as Name, pAge as age,cageno, b.buildId,b.section,b.totalfloor
             FROM prisoners 
            FULL JOIN 
            building b  ON prisoners.buildingId = b.buildId ;
			Where o.officerId like '1%';

select pId,avg(b.totalFloor) from prisoners inner join  building b  ON prisoners.buildingId = b.buildId group by pid ; 


select * from prisonerPerformance;

insert into salary_job(jobId,salary)
values(1,5000),(2,4000),(3,6500),(4,2000),(5,7000),(6,6500),(7,5500);

update prisoners set salary=(select salary from salary_job where jobId=1) WHERE pId=1



select * from visitor_prisoner;


select prisoners.jobId, AVG(salary),p.jobarea from prisoners where prisoners.jobid = ANY (select jobid from  salary_job) group by jobId FULL JOIN prisonerPerformance p on where p.jobid=prisoners.jobId;

SELECT PId as id,pFname+' '+pLname as Name ,visitorName as Visitor_Name ,visitorPhone as PhoneNo, visitingDate as Last_Visit FROM prisoners INNER JOIN visitor ON prisoners.visitorId = visitor.visitorId;


update prisoners set caseId= (Select caseid from prisonerCase where casetype=) WHERE pid= 1

select prisoners.jobId, AVG(prisoners.salary),p.jobarea+' '+p.jobType as work from prisoners  inner JOIN prisonerPerformance p ON  prisoners.jobId=p.jobid group by prisoners.jobId,p.jobarea,p.jobtype ;


select prisoners.caseId, prisonerCase.casetype, count(prisoners.caseId) as count from prisoners  inner JOIN  prisonerCase ON  prisoners.caseId=prisonerCase.caseId where prisoners.dateOfin>= '2021/04/02' and prisoners.dateOfin <= '2021/05/05'  group by prisoners.caseId,prisonerCase.casetype  ;


select prisoners.pid as id,prisoners.pFname+' '+prisoners.pLname as Name,prisoners.caseId, prisonerCase.casetype from prisoners  inner JOIN  prisonerCase ON  prisoners.caseId=prisonerCase.caseId where prisoners.dateOfin>= '2021/03/02' and prisoners.dateOfin <= '2021/05/05' ;


select p.pid, p.pFname,v.visitorName,vp.visit_Date as visiting_Date from prisoners p inner join visitor_prisoner vp on vp.pid= p.pid  inner join visitor v on v.visitorId=vp.visitorId where vp.visit_date='2021/03/01';



select p.pId as pId,p.pFname as pFname ,p.pLname as pLname,p.pAge as pAge,p.pAddress as pAddress ,p.gender as gender ,p.cageno as cageno ,p.dateofIn as dateofIn ,p.dateofout as dateofOut ,p.buildingId as buildingId, p.lawyerName as lawyerName ,v.visitorName as visitorId ,pp.jobType+' '+pp.jobArea as jobId ,pc.casetype as caseId from prisoners p Full join visitor v on p.visitorId= v.visitorId full join prisonerPerformance pp on pp.jobId=p.jobId full join prisonerCase pc on pc.caseid=p.caseId where p.pId=1;
select pid as prisoner_id, salary as present_salary from prisoners where pid=

update officer SET noOfPrisoners=1 where officerId=104;
select * from prisoners;


SELECT p.pId as Id,p.pFname+' '+p.pLname as Name ,l.name as Lawyer_Name , l.age as age,l.court  as court
            FROM prisoners p
             FULL JOIN 
            lawyer l ON p.lawyerName = l.id where p.pFname like 'k%';