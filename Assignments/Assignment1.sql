select 
	f.film_id,
    f.title,
	fc.category_id,
    c.name,
    f.rating
from film as f inner join film_category as fc on f.film_id=fc.film_id
	inner join category as c on fc.category_id=c.category_id 
where c.name="Comedy" and f.rating="PG-13";


select 
	count(*) as CountRented,
    f.title
from rental as r 
	inner join inventory as i on i.inventory_id=r.inventory_id
    inner join film as f on f.film_id=i.film_id
	inner join film_category as fc on fc.film_id=f.film_id
	inner join category as c on c.category_id=fc.category_id
where c.name="Horror"
group by f.film_id
order by CountRented desc 
limit 3;


select 
	cst.first_name,
	cst.last_name,
    c.name,
    cntry.country
from customer as cst inner join rental as r on cst.customer_id=r.customer_id
	inner join inventory as i on r.inventory_id=i.inventory_id
    inner join film_category as fc on i.film_id=fc.film_id
    inner join category as c on fc.category_id=c.category_id
    inner join address as a on cst.address_id=cst.address_id
    inner join city as ct on ct.city_id=a.city_id
    inner join country as cntry on cntry.country_id=ct.country_id
where c.name="Sports" and cntry.country="India";


select 
	cst.first_name,
	cst.last_name,
    actr.first_name,
    actr.last_name,
    cntry.country
from customer as cst inner join rental as r on cst.customer_id=r.customer_id
	inner join inventory as i on r.inventory_id=i.inventory_id
    inner join film_actor as fa on fa.film_id=i.film_id
    inner join actor as actr on actr.actor_id=fa.actor_id
    inner join address as a on cst.address_id=cst.address_id
    inner join city as ct on ct.city_id=a.city_id
    inner join country as cntry on cntry.country_id=ct.country_id
where actr.first_name="NICK" and actr.last_name="WAHLBERG" and cntry.country="Canada";


select 
	count(*) as NumberOfFilms
from film as f inner join film_actor as fa on f.film_id=fa.film_id
	inner join actor as a on a.actor_id=fa.actor_id
where a.first_name="SEAN" and a.last_name="WILLIAMS";