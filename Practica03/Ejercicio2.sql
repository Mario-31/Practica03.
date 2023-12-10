-- EJERCICIO 02

-- (a) Detalles de productos (Nombre, Precio, Color y Tamaño)
-- Bien
SELECT sNombreProducto, nPrecioProducto, sColorProducto, sTamanoProducto
FROM Productos;

-- (b) Detalles de productos (Nombre, Precio, Color y Detalles) con tamaño Mediano
-- hay que tener cuidado, en este caso se llama la columna sdescripcionproducto
SELECT sNombreProducto, nPrecioProducto, sColorProducto, sDetallesProducto
FROM Productos
WHERE sTamanoProducto = 'Mediano';

-- (c) Información de Clientes (Nombre, Género, Edad, Usuario y Contraseña)
-- Bien
SELECT sNombre, sGenero, nEdad, sUsuario, sContrasena 
FROM clientes;

-- (d) Atributos de Clientes con edad diferente a 24 años
-- Bien
SELECT * 
FROM clientes
WHERE nEdad <> 24;

-- (e) Descripción de códigos de productos
-- Bien pero se debe especificar a qué tabla de hace referencia en el ON 
SELECT nIdProducto, sDescripcion
FROM productos
JOIN CCodigosProducto ON nIdProducto = nIdProducto;

-- (f) Promedio de precios de productos Amarillos
-- Bien
SELECT AVG(productos.nPrecioProducto) AS PromedioPrecio
FROM productos
WHERE scolorproducto = 'Amarillo';

-- (j) Contar personas sin 20, 25 ni 40 años
-- Bien
SELECT COUNT(*) AS CantidadPersonas
FROM clientes
WHERE nedad NOT IN (20, 25, 40);

-- (k) Datos de Clientes cuyo apellido paterno o materno es Pérez
-- Bien
SELECT sNombre, sApellidoPaterno, sApellidoMaterno, sUsuario
FROM Clientes
WHERE sApellidoPaterno = 'Pérez' OR sApellidoMaterno = 'Pérez';

-- (l) Información de órdenes (Identificador, Fecha y Notas)
-- Bien
SELECT nIdOrden, dFecha, sNotas
FROM Ordenes;

-- Consulta (g): Contar la cantidad total de órdenes
-- Bien
SELECT COUNT(*) AS CantidadOrdenes
FROM ordenes;

-- Consulta (h): Obtener nombre y edad de clientes entre 20 y 40 años
-- Bien
SELECT sNombre, nEdad
FROM clientes
WHERE nEdad BETWEEN 20 AND 40;

