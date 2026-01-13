
/* Ejericicio 1 - Top clientes con mas facturas */
SELECT
c.id,
c.nombre,
c.apellido,
COUNT (f.id) as total_facturas
FROM public.cliente c 
JOIN public.factura f on f.cliente_id  = c.id 
group by c.id , c.nombre , c.apellido 
order by total_facturas desc;




/*Ejercicio 2 - Top clientes que mas gastaron */
SELECT
   c.id,
   c.nombre,
   c.apellido,
   SUM(f.factura_tipo_id ) AS total_gastado
FROM cliente c  
JOIN factura f ON F.cliente_id  = c.id 
GROUP BY c.id , c.nombre , c.apellido 
ORDER BY  total_gastado  DESC
LIMIT 10;

