USE inmobiliaria_aranzazu;

-- 2. (6ptos) Realiza las siguientes consultas mySQL:
--  Sobre la tabla de PROPIETARIOS:
--  (0.5pto) - Contar el número total de propietarios
select count(*) total_propietarios from propietarios;

--  (0.5pto) - Seleccionar propietarios cuyo apellido es “Martínez” (u otro) --> uso también Sopela que existe
select * from propietarios where apellidos like 'Martínez'; -- no existe

select * from propietarios where apellidos like 'Sopela'; -- existe

--  (0.5pto) - Obtener el email de todos los propietarios
select id_propietarios, email as todos_emails from propietarios; -- pongo el id por saber los distintos propietarios, pero solo con email estaría

--  (0.5pto) - Seleccionar propietarios cuyo nombre empiece por “F”
select * from propietarios where nombre like 'F%'; -- no existen

select * from propietarios where nombre like 'M%'; -- existen

--  Sobre la tabla de CASAS:

-- (0.5pto) - Seleccionar casas construidas entre 1990 y 2020 (ambos incluídos)
select * from casas where anno_construccion between 1990 and 2020;

-- (0.5pto) - Seleccionar casas ordenadas por precio (la más cara, arriba en la lista)
select * from casas order by precio desc;

-- (0.5pto) - Obtener el precio promedio de las casas
select avg(precio) media_precio_casas from casas;

-- (0.5pto) - Mostrar la casa más barata de todas
select * 
from casas 
where precio in ( select min(precio) from casas);

-- Sobre ambas tablas (usando JOIN):

-- (1pto) - Seleccionar todas las casas junto con el nombre y apellido del propietario
select c.*, p.nombre, p.apellidos
from casas c
JOIN propietarios p ON p.id_propietarios = c.id_propietarios
;


-- (1pto) - Seleccionar nombre propietarios y el precio de sus casas (solo casas de más de 180.000€
select p.nombre, c.precio
from propietarios p
LEFT JOIN casas c ON c.id_propietarios = p.id_propietarios
WHERE c.precio > 180000
;