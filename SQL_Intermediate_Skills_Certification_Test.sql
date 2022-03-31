SELECT country.country_name, COUNT(invoice.invoice_number), AVG(invoice.total_price)
FROM country
JOIN city
ON country.id = city.country_id
JOIN customer
ON city.id = customer.city_id
JOIN invoice
ON invoice.customer_id = customer.id
GROUP BY 1
HAVING AVG(invoice.total_price) > (SELECT AVG(total_price) FROM invoice);


SELECT customer.customer_name, CAST(invoice.total_price AS DECIMAL(10,6))
FROM customer
INNER JOIN invoice
ON customer.id = invoice.customer_id
WHERE invoice.total_price <= (SELECT 0.25*AVG(total_price) FROM invoice)
ORDER BY 1 DESC;
