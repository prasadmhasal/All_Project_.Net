drop table Users;
--alter table cart ;
delete  cart;
select * from product;
select * from cart;
select * from user_account;
select * from PlaceOrder;
select * from Carthistory;

 create table cartHistory
 (
  cart_id int,
  pname varchar(100),
  pcat varchar (100),
  price varchar (100),
  qty int,
  pib varchar(100),
  dt varchar(100),
  suser varchar(100),
  UserId int
  )

select sum(price) from cart where UserId = 5;

select * into Carthistory from cart;

drop table Carthistory;