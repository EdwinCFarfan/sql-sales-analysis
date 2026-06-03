# 📊 SQL Sales Analysis

Proyecto de análisis de ventas desarrollado con SQL y SQLite.

## 🎯 Objetivo

Analizar datos comerciales para identificar clientes con mayor facturación, productos más vendidos y métricas básicas de negocio mediante consultas SQL.

## 🗄️ Base de Datos

La base de datos contiene las siguientes tablas:

- clientes
- productos
- pedidos
- detalle_pedidos

## 📌 Consulta Destacada

### Total gastado por cliente

```sql
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
```

### Resultado

| Cliente | Total Gastado |
|----------|----------:|
| Juan Perez | 1250 |
| Carlos Ruiz | 1200 |
| Maria Gomez | 50 |

## 🛠️ Habilidades Demostradas

- SELECT
- INNER JOIN
- GROUP BY
- ORDER BY
- SUM()
- Diseño de bases de datos relacionales
- Análisis de datos

## 💻 Tecnologías

- SQL
- SQLite
- DB Browser for SQLite

## 👨‍💻 Autor

Edwin Carvallo Farfan

GitHub: https://github.com/EdwinCFarfan
