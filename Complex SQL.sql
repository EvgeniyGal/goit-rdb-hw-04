USE mydb;

SELECT * FROM orders o
INNER JOIN order_details od ON od.order_id = o.id
INNER JOIN products p ON p.id = od.product_id
INNER JOIN categories c ON p.category_id = c.id
INNER JOIN suppliers s ON p.supplier_id = s.id
INNER JOIN customers cast ON o.customer_id = cast.id
INNER JOIN  employees e ON o.employee_id = e.employee_id
INNER JOIN shippers sh ON o.shipper_id = sh.id;

SELECT COUNT(*) FROM orders o
INNER JOIN order_details od ON od.order_id = o.id
INNER JOIN products p ON p.id = od.product_id
INNER JOIN categories c ON p.category_id = c.id
INNER JOIN suppliers s ON p.supplier_id = s.id
INNER JOIN customers cast ON o.customer_id = cast.id
INNER JOIN employees e ON o.employee_id = e.employee_id
INNER JOIN shippers sh ON o.shipper_id = sh.id;

SELECT COUNT(*) FROM customers cast
INNER JOIN orders o ON o.customer_id = cast.id
INNER JOIN shippers sh ON o.shipper_id = sh.id
INNER JOIN employees e ON o.employee_id = e.employee_id
INNER JOIN order_details od ON od.order_id = o.id
INNER JOIN products p ON p.id = od.product_id
INNER JOIN categories c ON p.category_id = c.id
INNER JOIN suppliers s ON p.supplier_id = s.id;


!!!Коли використовуєьо LEFT JOIM кількість рядків збільшується з 518 до 535 томц що вибираються всі рядки зліва і 
!!!а з права якщо ключ відсутній використовцється значення NULL
SELECT COUNT(*) FROM customers cast
LEFT JOIN orders o ON o.customer_id = cast.id
LEFT JOIN shippers sh ON o.shipper_id = sh.id
LEFT JOIN employees e ON o.employee_id = e.employee_id
LEFT JOIN order_details od ON od.order_id = o.id
LEFT JOIN products p ON p.id = od.product_id
LEFT JOIN categories c ON p.category_id = c.id
LEFT JOIN suppliers s ON p.supplier_id = s.id;

SELECT COUNT(*) FROM orders o
INNER JOIN order_details od ON od.order_id = o.id
INNER JOIN products p ON p.id = od.product_id
INNER JOIN categories c ON p.category_id = c.id
INNER JOIN suppliers s ON p.supplier_id = s.id
INNER JOIN customers cast ON o.customer_id = cast.id
INNER JOIN  employees e ON o.employee_id = e.employee_id
INNER JOIN shippers sh ON o.shipper_id = sh.id
WHERE e.employee_id > 3 AND e.employee_id <= 10;

SELECT c.name, COUNT(*) AS row_count, AVG(od.quantity) AS average_quantity FROM orders o
INNER JOIN order_details od ON od.order_id = o.id
INNER JOIN products p ON p.id = od.product_id
INNER JOIN categories c ON p.category_id = c.id
INNER JOIN suppliers s ON p.supplier_id = s.id
INNER JOIN customers cast ON o.customer_id = cast.id
INNER JOIN  employees e ON o.employee_id = e.employee_id
INNER JOIN shippers sh ON o.shipper_id = sh.id
WHERE e.employee_id > 3 AND e.employee_id <= 10
GROUP BY c.name;

SELECT c.name, COUNT(*) AS row_count, AVG(od.quantity) AS average_quantity FROM orders o
INNER JOIN order_details od ON od.order_id = o.id
INNER JOIN products p ON p.id = od.product_id
INNER JOIN categories c ON p.category_id = c.id
INNER JOIN suppliers s ON p.supplier_id = s.id
INNER JOIN customers cast ON o.customer_id = cast.id
INNER JOIN  employees e ON o.employee_id = e.employee_id
INNER JOIN shippers sh ON o.shipper_id = sh.id
WHERE e.employee_id > 3 AND e.employee_id <= 10
GROUP BY c.name
HAVING average_quantity > 21;

SELECT c.name, COUNT(*) AS row_count, AVG(od.quantity) AS average_quantity FROM orders o
INNER JOIN order_details od ON od.order_id = o.id
INNER JOIN products p ON p.id = od.product_id
INNER JOIN categories c ON p.category_id = c.id
INNER JOIN suppliers s ON p.supplier_id = s.id
INNER JOIN customers cast ON o.customer_id = cast.id
INNER JOIN  employees e ON o.employee_id = e.employee_id
INNER JOIN shippers sh ON o.shipper_id = sh.id
WHERE e.employee_id > 3 AND e.employee_id <= 10
GROUP BY c.name
HAVING average_quantity > 21
ORDER BY row_count DESC;

SELECT c.name, COUNT(*) AS row_count, AVG(od.quantity) AS average_quantity FROM orders o
INNER JOIN order_details od ON od.order_id = o.id
INNER JOIN products p ON p.id = od.product_id
INNER JOIN categories c ON p.category_id = c.id
INNER JOIN suppliers s ON p.supplier_id = s.id
INNER JOIN customers cast ON o.customer_id = cast.id
INNER JOIN  employees e ON o.employee_id = e.employee_id
INNER JOIN shippers sh ON o.shipper_id = sh.id
WHERE e.employee_id > 3 AND e.employee_id <= 10
GROUP BY c.name
HAVING average_quantity > 21
ORDER BY row_count DESC
LIMIT 4 OFFSET 1;


