DROP TABLE IF EXISTS Delivery; 

CREATE TABLE Delivery (delivery_id SERIAL PRIMARY KEY, customer_id INT, order_date DATE, customer_pref_delivery_date DATE);
INSERT INTO Delivery (customer_id, order_date, customer_pref_delivery_date) 
VALUES	 
	(1, '2019-08-01', '2019-08-02'),   
	(2, '2019-08-02', '2019-08-02'), 
	(1, '2019-08-11', '2019-08-12'), 
	(3, '2019-08-24', '2019-08-24'),
	(3, '2019-08-21', '2019-08-22'), 
	(2, '2019-08-11', '2019-08-13'), 
	(4, '2019-08-09', '2019-08-09'),
	(5, '2019-08-09', '2019-08-10'),
	(4, '2019-08-10', '2019-08-12'),
	(6, '2019-08-09', '2019-08-11'), 
	(7, '2019-08-12', '2019-08-13'), 
	(8, '2019-08-13', '2019-08-13'), 
	(9, '2019-08-11', '2019-08-12'); 

SELECT * FROM DELIVERY

/*
Find the percentage of immediate orders in the first orders of all customers, rounded to 2 decimal places.
*/


SELECT
	 ROUND(SUM
			(CASE
				WHEN order_date = customer_pref_delivery_date THEN 1  
				ELSE 0 
			END)::numeric /COUNT(*) * 100, 2) AS imd_del_percentage
FROM 
	(SELECT
	DISTINCT ON(customer_id) customer_id,
				order_date,
				customer_pref_delivery_date
	FROM Delivery
ORDER BY customer_id, order_date) AS first_orders;