create table employee4 (eid number(6),ename varchar2(25),esal number(5),eincent number(5),ecity varchar2(20));
describe employee4;
insert into employee4 values(101,'anil',10000,2000,'pune')
insert into employee4 values(121,'nil',10000,2000,'pune')
insert into employee4 values(103,'ail',10000,2000,'latur')
insert into employee4 values(134,'anl',10000,2000,'mumbai')
insert into employee4 values(105,'il',10000,2000,'pune')
insert into employee4 values(111,'l',10000,2000,'kolhapur')
insert into employee4 values(110,'anil',10000,2000,'cakur')
select * from employee4;
select eid from employee4;
select eid,ename from employee4;
update employee4
set ename='ajay'
where eid=111;
update employee4
set ename=' anil'
where eid=101
update employee4
set ename=' anil'
where eid=101
update employee4
set ename=' sunil'
where ename='anl';
select * from employee4;
delete from employee4 where  ename='nil' 
insert into employee4 (eid,ename,esal,eincent) values(102,'nandini',12000,3000)
insert into employee4 values(107,' ',13000,3000,'beed')
select * from employee4 where ecity='null'
******************************************************************************
SQL OPERATORS
1) ARTHMATIC OPERAORS
(+,-,*,/)
select (esal+eincent) from employee4
select eid,ename,(esal+eincent) as totalsalary from employee4; 
select employee4.*,(esal+eincent) as totalsalary from employee4;
select (esal-eincent) from employee4;
select eid,ename,ecity,(esal+eincent) as totalsalary from employee4;
select employee4.*,(esal+eincent) as toalsalary from employee4;
2)CAMPARISON OPERATORS
(=,<,>,<=,>=,!=,between,not between,in, not in)
select * from employee4 where esal=12000;
select * from employee4 where esal<12000;
select * from employee4 where esal>10000
select * from employee4 where esal>=10000
select * from employee4 where esal<=13000
select * from employee4 where esal between 10000 and 150000;
select * from employee4 where esal between 10000 and 12000
select * from employee4 where esal not between 10000 and 12000
select * from employee4 where esal not between 10000 and 150000;
select * from employee4 where esal in(5000,10000,12000)
select * from employee4 where esal not in (5000,10000,12000);  
3)CONCATINITON OPERATOR(||)
select (ename|| '  '||ecity) from employee4
select eid,ename,ecity,(ename|| '  '||ecity) as city from employee4;
select employee4.*, (ename|| ',' || ecity) as citty from employee4;
4)LOGICAL OPERATOR;
(AND,OR,NOT)
SELECT * FROM EMPLOYEE4 WHERE ENAME='ANIL' AND ECITY='PUNE'
select * from employee4 where eid=101 or ename='anil'
select * from employee4 where ename='anil' or ecity='pune';
select * from employee4 where eid=101 and esal=10000
select * from employee4 where esal=10000 and ecity='pune'
select * from employee4 where ename='anil' and esal=10000
select * from employee4 where ename='ail' and ecity='latur'
select * from employee4 where not (esal=80000)
select * from employee4 where not (esal=10000)
select * from employee4 where not(ecity is null);
select * from employee4 where eid=102 and ecity='pune' or ename='ajay';
select * from employee4 where( eid=101 and ecity=null )or (ename='anil' and ecity='latur')
4)LIke ---------------------------------------------
select * from employee4 where ename like'a%'
select * from employee4 where ename like '%y'
select * from employee4 where ecity like '%r'
select * from employee4 where ecity like '%u_'
select * from employee4 where ecity like '___h%'
select * from employee4 where ename like'____'
create table employee5 (eid number(7)primary key,ename varchar2(25)not null,emob varchar2(14)unique,esal number(7)check (esal>=500000),ecity varchar2(25)default'unknown');
describe employee5
insert into employee5 values(101,'anil',9923726642,500000,'pune');
select * from employee5;
insert into employee5 values(102,'anil',9923726643,500000,'pune');
insert into employee5 values(103,'anil',9923726644,600000,' ');
insert into employee5 (eid,ename,emob,esal) values(104,'anil',9923726645,700000)

create table customer10 (eid number(7),ename varchar2(25),emob varchar2(14),esal number(7),ecity varchar2(20),primary key(eid,ename,emob,esal,ecity));
insert into customer10 values(101,'anil',9923726642,500000,'pune')
select * from customer10;
insert into customer10 values(102,'anil',9923726642,500000,'pune')
insert into customer10 values(101,'nil',9923726642,500000,'pune')
insert into customer10 values(101,'anil',9923726643,500000,'pune')
insert into customer10 values(101,'anil',9923726642,700000,'pune')
insert into customer10 values(101,'anil',9923726642,500000,'mumbai')
insert into customer10 values(101,'anil',9923726642,500000,'pune')
***************************************************************************************

SQL FUNCTION----------------
AGGREGATE FUNCTON
CHARACTER FUNCTION
DATE FUNCTION
CONVERSION FUNCTION
1) AGGREGATE FUNCTION
(min,max,avg,sum,count,distinct)
select max(esal) from customer10;
select min(esal) from customer10;
select avg (esal) from customer10;
select sum (esal) from customer10;
select count(esal) from customer10;
select count(ename) from customer10;
select count(*) from customer10;
select distinct (ename) from customer10
select * from customer10;
select distinct(esal) from customer10

select distinct(ecity) from customer10
********


************CHARACTER FUNCTIO N****************
CASE MANIPULATION/SCALAR              CHARACTER MANIPULATION
LOWER                                  LENGTH
UPPER                                  SUBSTR
INITCAP                                INSTR

select lower (ename) from customer10;
select customer10.*,upper(ename) from customer10
select initcap(ecity) from customer10
select length (ename) from customer10
select length (ecity) from customer10;
select * from customer10;
select customer10.*,length(ename) from customer10;
Substring
select substr('sangharsh',5,3) from dual;
select substr('sangharsh',-2,2) from dual;
select length ('sangars') from dual;
select substr (ecity,1,3)from customer10;
select substr (ename,-4,2) from customer10;
select substr (ename,1,4) from customer10;
INSTR:-RETURN THE LOCATION OF SUBSTRING FROM MAIN STRING 
SELECT INSTR ('SANGHARSH','G') FROM DUAL;
select instr ('sangharsh','a') from dual
select instr ('sangharsh','harsh') from dual;
select instr ('sangharsh','h',1,2) from dual;
select instr ('chandrakala','a',1,3 )from dual
select instr ('chandrakala','kala') from dual
select instr  ('chandrakala','a',4) from dual
select instr (ename,'n',2) from customer10;
select instr ('sangharshgharghargharghar','ghar',1,4) from dual;
select instr ('sangharshgharghargharghar','ghar',1,3) from dual;
