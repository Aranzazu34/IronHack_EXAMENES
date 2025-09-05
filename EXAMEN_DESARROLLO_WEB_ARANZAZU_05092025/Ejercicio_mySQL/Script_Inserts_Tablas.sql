/**
Ejercicio 2

 1. (4ptos) Crea dos tablas en WorkBench (2ptos) y relaciónalas (1pto). Las tablas son: PROPIETARIOS y CASAS (un propietario puede tener muchas casas)
 
 - La tabla PROPIETARIOS contiene estas propiedades: nombre, apellido, email.
 - La tabla CASAS contiene estas propiedades: dirección, precio, año de constrcasasucción
 
 Inserta al menos 5 registros para cada tabla (1pto)
 
 **/
 
 -- INSERTS PROPIETARIOS
 
 INSERT INTO `inmobiliaria_aranzazu`.`propietarios` (`nombre`, `apellidos`, `email`) VALUES ('Andrés', 'Cuadrado', 'acuadrado@gmail.com');
 
 INSERT INTO `inmobiliaria_aranzazu`.`propietarios` (`nombre`, `apellidos`, `email`) VALUES ('Marga', 'Rodriguez', 'mrodriguez@gmail.com');
 INSERT INTO `inmobiliaria_aranzazu`.`propietarios` (`nombre`, `apellidos`, `email`) VALUES ('Mateo', 'Sanchís', 'msanchis@idcat.cat');
 INSERT INTO `inmobiliaria_aranzazu`.`propietarios` (`nombre`, `apellidos`, `email`) VALUES ('Beatriz', 'Sopela', 'bsopela@webex.com');
 INSERT INTO `inmobiliaria_aranzazu`.`propietarios` (`nombre`, `apellidos`, `email`) VALUES ('Marian', 'Salmerón', 'msalmeron@gmail.com');
 
 -- INSERTS CASAS
 
 INSERT INTO `inmobiliaria_aranzazu`.`casas` (`direccion`, `precio`, `anno_construccion`, `id_propietarios`) VALUES ('C/ Aberastuiri, 23', '345000', '2010', '3');
 
 INSERT INTO `inmobiliaria_aranzazu`.`casas` (`direccion`, `precio`, `anno_construccion`, `id_propietarios`) VALUES ('C/ Amapolas, 2', '345000', '2010', '1');
 INSERT INTO `inmobiliaria_aranzazu`.`casas` (`direccion`, `precio`, `anno_construccion`, `id_propietarios`) VALUES ('Av/ La Castellana, 45', '500000', '2022', '3');
 INSERT INTO `inmobiliaria_aranzazu`.`casas` (`direccion`, `precio`, `anno_construccion`, `id_propietarios`) VALUES ('C/ Pomer, 4', '45000', '1998', '4');
 INSERT INTO `inmobiliaria_aranzazu`.`casas` (`direccion`, `precio`, `anno_construccion`, `id_propietarios`) VALUES ('C/ Tallers, 12', '145000', '2075', '2');