select 
	count(*) as DcmntrsWthDltdScns
from film as f inner join film_category as fc on f.film_id=fc.film_id
	inner join category as c on c.category_id=fc.category_id
where c.name="Documentary" 
	and f.special_features like "%Deleted Scenes%";


select 
	count(*) as SciFiRntdByJon
from film as f 
    inner join film_category as fc on f.film_id=fc.film_id
	inner join category as c on c.category_id=fc.category_id
where c.name="Sci-Fi" 
	and f.film_id in 
    (select f.film_id from film as f 
		inner join inventory as i on i.film_id=f.film_id
		inner join staff as stf on stf.store_id=i.store_id
    where stf.first_name="Jon" and stf.last_name="Stephens");
    
    
    
select 
	count(*) as CountAnimation
from rental as r 
	r.inventory_id in 
	(select i.inventory_id from inventory as i
		inner join film_category as fc on fc.film_id=i.film_id
		inner join category as c on c.category_id=fc.category_id
    where c.name="Animation");


select 
	count(*) as CountRented,
    c.name
from rental as r 
	inner join inventory as i on i.inventory_id=r.inventory_id
	inner join film_category as fc on fc.film_id=i.film_id
	inner join category as c on c.category_id=fc.category_id
where r.rental_id in 
	(select r.rental_id from rental as r
		inner join customer as cst on r.customer_id=cst.customer_id
    where cst.first_name="PATRICIA" and cst.last_name="JOHNSON")
group by c.name 
order by CountRented desc 
limit 3;
    
    
select 
	count(*) as CountR
from film as f 
	where f.rating="R" and f.film_id in 
	(select i.film_id from inventory as i
		inner join rental as r on i.inventory_id=r.inventory_id
		inner join customer as cst on cst.customer_id=r.customer_id
    where cst.first_name="SUSAN" and cst.last_name="WILSON");