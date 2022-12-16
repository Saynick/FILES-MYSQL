#select * from sakila.actor;
#select * from sakila.city;
#select * from sakila.customer;
#select distinct (store_id) from sakila.customer;	
#select * from sakila.payment;
#select * from sakila.country order by country ASC;
#select store_id,first_name,last_name from sakila.customer;
#select* from sakila.payment;
#select store_id as Tienda, first_name as Nombre, last_name as Apellido from sakila.customer order by Apellido desc;
#select * from sakila.actor where first_name = 'DAN';
#select * FROM sakila.inventory where film_id >50; #MAYOR
#select * FROM sakila.inventory where film_id <3; #MENOR

#select * FROM sakila.staff where staff_id <>2; DIFERENTE <>

#select * from sakila.language where name <> 'german';
#select * from sakila.language;

#select description, release_year  from sakila.film where title = 'IMPACT ALADDIN';

#select * from sakila.country where country = 'Algeria' or country_id = '12';
#select * from language;

#select distinct (rating) from sakila.film where not rating = 'R';

#select * from sakila.payment where customer_id = 36 and amount > 0.99 and staff_id = 1;

#select * from sakila.rental where not staff_id = 1 and customer_id > 250 and inventory_id < 100;

#select * FROM sakila.film_text;

#select * FROM sakila.film_text where title in ('ZORRO ARK','VIRGIN DAISY', 'UNITED PILOT');

#select * from  sakila.payment where amount not between 3 and 5;

#select * from sakila.film where (rental_rate between 0.99 and 2.99 )and length <=50 and replacement_cost < 20

#select * from sakila.actor where first_name like 'A%';

#select * from sakila.film where release_year = 2006 and title like 'ALI%';

#INNER JOIN

#select a.address as Direccion, c.city as Ciudad from sakila.address a 
#inner join  sakila.city c on (a.city_id = c.city_id);

#select max(amount)from sakila.payment;

#select * from sakila.address;
#select * from sakila.city;

#1select a.address, c.city, co.country from sakila.address a 
#2inner join sakila.city c on (a.city_id = c.city_id)
#3inner join sakila.country co on (c.country_id = co.country_id);

#1select r.rental_id,
#2s.first_name from sakila.rental r
#3inner join sakila.staff s on (r.staff_id = s.staff_id)

#FUNCIONES DE AGREGACIÓN

#select * from sakila.payment;

#select sum(amount) from sakila.payment;
#select * from sakila.film;
#select min(length) from sakila.film;

#SELECT customer_id, MAX(rental_date) FROM sakila.rental GROUP BY customer_id;

#SELECT last_name, COUNT(*) FROM sakila.actor GROUP BY last_name HAVING COUNT(*) > 3;7

#CONCATENAR
#select *, concat(first_name, " " ,last_name) as "Nombre Completo" from customer;

#SELECT CONCAT_WS(" ",cu.first_name,cu.last_name) AS Nombres_Apellidos, a.address,c.city,co.country FROM customer cu INNER JOIN address a ON cu.address_id = a.address_id INNER JOIN city c ON a.city_id = c.city_id INNER JOIN country co ON c.country_id = co.country_id ORDER BY Nombres_Apellidos ASC LIMIT 10


#insert into city (city, country_id) values ('prueba', '100');

#select * from sakila.city

#UPDATE

#select * from sakila.city;

#update city set city = 'NEW YORK' where country_id = 80;