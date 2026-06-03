-- Top 5 clientes con mayor gasto

SELECT
    cliente,
    SUM(total) AS total_gastado
FROM ventas
GROUP BY cliente
ORDER BY total_gastado DESC
LIMIT 5;


-- Productos más vendidos

SELECT
    producto,
    SUM(cantidad) AS unidades_vendidas
FROM ventas
GROUP BY producto
ORDER BY unidades_vendidas DESC;


-- Venta promedio

SELECT
    AVG(total) AS venta_promedio
FROM ventas;
