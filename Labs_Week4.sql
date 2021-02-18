select count(distinct last_name) from actor;

select count(distinct language_id) from language;

select count(rating) from film
where rating='PG-13';

select *, length from film
where release_year = '2006'
limit 10;

select date_format(convert(rental_date,date),'%M') as 'Rental Month', date_format(convert(rental_date, datetime), '%W') as 'Weekday' from rental
limit 20;

select date_format(convert(rental_date,date),'%M') as 'Rental Month', date_format(convert(rental_date, datetime), '%W') as 'Weekday',
case
when date_format(convert(rental_date, datetime), '%W') = 'Saturday' or 'Sunday' then 'Weekend'
else 'Workday'
end as 'Day-Type'
from rental;

select date_format(convert(rental_date, date),'%M') from rental;

select count(rental_id) from sakila.rentalwhere date_format(convert(rental_date, date), '%M') = 'February' and date_format(convert(rental_date, date), '%Y') = '2006';


