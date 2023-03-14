select * from products;
select productname from products;
select * from products where price >= 22;
select * from products where price = 22 or price = 40;
select * from products where price < 22 and productname like 'c%';
select * from products where price < 22 and productname not like 'c%';
select * from products where price in (10, 20);
select * from products where price between 10 and 20;
select distinct price from products order by price asc;

select distinct price from products 
where price between 10 and 50
order by price asc
limit 0,5;

insert into suppliers values (30, 'Artur Testerski', 'Testowa 1', 'Kraków', 'Poland');
delete from suppliers where supplierid = 30;
insert into suppliers values (30, 'Ryszard Testerski', 'Testowa 1', 'Kraków', 'Poland');
insert into suppliers (suppliername, address, city, country) values ('Adam Testerski', 'Testowa 1', 'Kraków', 'Poland');
update suppliers set address = 'Porzeczkowa 43', city = 'Poznań' where supplierid = 31;
select count(*) from suppliers; 
select max(price) from products;
select avg(price) from products;

select products.productname, suppliers.suppliername from products inner join suppliers on products.supplierid = suppliers.supplierid;
select products.productname, suppliers.suppliername from products right join suppliers on products.supplierid = suppliers.supplierid;

select suppliers.suppliername, count(products.productname) as numberofproducts from suppliers
inner join products on suppliers.supplierid = products.supplierid
group by products.supplierid;