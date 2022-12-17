--Count the number of movies that Abigail Breslin was nominated for an oscar.

select count(nominee) from oscar_nominees
where nominee = 'Abigail Breslin'

