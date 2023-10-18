create database project4;
use project4;
create table cancellation(pnr_no varchar(10),cancellation_no varchar(10),ticket_id varchar(10),flight_code varchar(10));
create table flight(f_code varchar(10),f_name varchar(30), src varchar(15),dst varchar(15));
create table login(username varchar(20), password varchar(20));
create table passenger(sr_no varchar(10), pnr_no varchar(10),address varchar(20), nationality varchar(10), name varchar(30), gender varchar(10), ph_no varchar(10), passport_no varchar(10));
create table reservation(pnr_no varchar(10),ticket_id varchar(10),f_code varchar(10),jny_date varchar(10),jny_time varchar(10),src varchar(15),dst varchar(15));
create table sector(flight_code varchar(10),capacity varchar(10),class_code varchar(10), class_name varchar(25));
create table ticket(passport_no varchar(10), pnr_no varchar(10),src varchar(15),dst varchar(15),paid_amt varchar(20),pay_date varchar(10),fl_code varchar(10));

use project4;

drop table cancellation;
create table cancellation(pnr_no varchar(10),cancellation_no varchar(10),cancellation_date varchar(10),ticket_id varchar(10),flight_code varchar(10));
insert into cancellation(pnr_no,cancellation_no ,cancellation_date ,ticket_id ,flight_code ) values (45,89766,10-04-2022,9966,'AI913');
insert into flight (f_code,f_name , src ,dst) values ('AI266','AIR INDIA-9','PATANA','DELHI');
insert into flight (f_code,f_name , src ,dst) values ('AI274','AIR INDIA-3','HYDRABAD','CHENNAI');
insert into flight (f_code,f_name , src ,dst) values ('AI358','AIR INDIA-7','DELHI','PATANA');
insert into flight (f_code,f_name , src ,dst) values ('AI359','AIR INDIA-6','CHENNAI','PATANA');
insert into flight (f_code,f_name , src ,dst) values ('AI913','AIR INDIA-10','MUMBAI','HYDRABAD');
insert into flight (f_code,f_name , src ,dst) values ('AI933','AIR INDIA-8','HYDRABAD','BANGALORE');
insert into flight (f_code,f_name , src ,dst) values ('AI951','AIR INDIA-4','BANGALORE','PATANA');
insert into flight (f_code,f_name , src ,dst) values ('AI970','AIR INDIA-5','MUMBAI','CHENNAI');
insert into flight (f_code,f_name , src ,dst) values ('AI730','AIR INDIA-1','BANGALORE','MUMBAI');
insert into flight (f_code,f_name , src ,dst) values ('AI731','AIR INDIA-2','DELHI','CHENNAI');
use project4;
DELETE FROM flight where f_name='AIR INDIA-9';

insert into passenger(sr_no , pnr_no,address , nationality , name , gender, ph_no , passport_no) values ('1','44','Amravati','Indian','Aradhya Bhalerao','male','9988776655','J5465');
insert into passenger(sr_no , pnr_no,address , nationality , name , gender, ph_no , passport_no) values ('1','45','Amravati','Indian','Om Saurangpate','male','9841647824','J4545');


insert into login(username , password ) values ('admin','admin');

insert into  ticket (passport_no , pnr_no ,src ,dst,paid_amt ,pay_date,fl_code ) values ('J78945',64,'MUMBAI','CHENNAI','39,300',09-04-2022,"AI970");
insert into  ticket (passport_no , pnr_no ,src ,dst,paid_amt ,pay_date,fl_code ) values ('J45665',54,'MUMBAI','HYDRABAD','10,200',15-06-2021,"AI913");


INSERT INTO SECTOR (flight_code ,capacity,class_code, class_name ) VALUES ('AI266',550,'A','FIRST CLASS');
INSERT INTO SECTOR (flight_code ,capacity,class_code, class_name ) VALUES ('AI274',564,'B','BUSINESS CLASS');
INSERT INTO SECTOR (flight_code ,capacity,class_code, class_name ) VALUES ('AI358',726,'E','ECONOMY CLASS');
INSERT INTO SECTOR (flight_code ,capacity,class_code, class_name ) VALUES ('AI359',510,'A','FIRST CLASS');
INSERT INTO SECTOR (flight_code ,capacity,class_code, class_name ) VALUES ('AI913',556,'B','BUSINESS CLASS');
INSERT INTO SECTOR (flight_code ,capacity,class_code, class_name ) VALUES ('AI933',100,'E','ECONOMY CLASS');
INSERT INTO SECTOR (flight_code ,capacity,class_code, class_name ) VALUES ('AI266',215,'A','FIRST CLASS');
INSERT INTO SECTOR (flight_code ,capacity,class_code, class_name ) VALUES ('AI951',560,'B','BUSINESS CLASS');
INSERT INTO SECTOR (flight_code ,capacity,class_code, class_name ) VALUES ('AI970',400,'A','FIRST CLASS');
INSERT INTO SECTOR (flight_code ,capacity,class_code, class_name ) VALUES ('AI730',550,'A','ECONOMY CLASS');
INSERT INTO SECTOR (flight_code ,capacity,class_code, class_name ) VALUES ('AI731',550,'A','BUSINESS CLASS');

INSERT INTO reservation(pnr_no ,ticket_id ,f_code ,jny_date,jny_time ,src ,dst ) VALUES (49,'ID4654','AI970','03-03-2022',"1:51 AM",'MUMBAI','CHENNAI');
INSERT INTO reservation(pnr_no ,ticket_id ,f_code ,jny_date,jny_time ,src ,dst ) VALUES (49,'ID4985','AI95','03-03-2022',"1:51 AM",'DELHI','PATANA');