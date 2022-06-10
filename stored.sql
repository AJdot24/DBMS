create database store;
use store;
create table product(pid int primary key,pname varchar(20),price varchar(20),quandity varchar(20));
delimiter //
create procedure insert_product(IN id int,IN pname varchar(20),IN price varchar(20),IN quandity varchar(20))
begin
if(price>0 && quandity >=0) then
insert into product values(id,pname,price,quandity);
end if;
end //
delimiter ;
call insert_product(1,'sample1','60','100');
call insert_product(2,'sample2','250','150');
call insert_product(3,'sample3','100','100');
call insert_product(4,'sample4','500','250');
call insert_product(5,'sample5','80','100');
call insert_product(5,'sample6','0','0');
select * from product ;