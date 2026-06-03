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


-- Productos más vendidos

SELECT
    pr.nombre,
    SUM(dp.cantidad) AS unidades_vendidas
FROM productos pr
JOIN Detalle_Pedidos dp
    ON pr.id = dp.producto_id
GROUP BY pr.nombre
ORDER BY unidades_vendidas DESC;


-- Cantidad de pedidos por cliente

SELECT
    c.nombre,
    COUNT(p.id) AS cantidad_pedidos
FROM clientes c
JOIN pedidos p
    ON c.id = p.cliente_id
GROUP BY c.nombre
ORDER BY cantidad_pedidos DESC;


-- Precio promedio de productos

SELECT
    AVG(precio) AS precio_promedio
FROM productos;
