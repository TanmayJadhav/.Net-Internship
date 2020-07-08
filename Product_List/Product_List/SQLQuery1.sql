create table product(

id int primary key identity(1,1),
product_name varchar(50),
product_stock int,
product_category varchar(15)
)

select * from product	