Q1 - Who is the senior-most employee based on the job title?
select * from employee
order by levels desc
limit 1

Q2 - Which country has the most invoices?

select count(*) as c, billing_country
from invoice
group by billing_country
order by c desc

Q3 - What are the top 3 values of total invoices?

select total from invoice
order by total desc
limit 3

Q4 - Which city has the best customers?
We would like to throw a promotional Music Festival in the city where we made the most money.
Write a query that returns one city that has the highest sum of invoice totals.
 Return both the city name & sum of all invoice totals.

select sum(total) as invoice_total, billing_city
from invoice 
group by billing_city
order by invoice_total desc

Q5 - Who is the best customer?
the customer who spent the most money will be declared the best customer.
Write a query that returns the person who has spent the most money.

select customer.customer_id, customer.first_name, customer.last_name, sum(invoice.total) as total
from customer
JOIN invoice ON customer.customer_id = invoice.customer_id
GROUP BY  customer.customer_id
ORDER BY total DESC
limit   1
