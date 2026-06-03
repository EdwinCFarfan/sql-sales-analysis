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


-- Total gastado por cliente

SELECT
    c.nombre,
    SUM(pr.precio * dp.cantidad) AS total_gastado
FROM clientes c
JOIN pedidos p
    ON c.id = p.cliente_id
JOIN Detalle_Pedidos dp
    ON p.id = dp.pedido_id
JOIN productos pr
    ON dp.producto_id = pr.id
GROUP BY c.nombre
ORDER BY total_gastado DESC;
