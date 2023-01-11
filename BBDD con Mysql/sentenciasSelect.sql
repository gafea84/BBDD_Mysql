SET @local=1;

SELECT m.*, c.* FROM restaurantes.mesas AS m
INNER JOIN restaurantes.clientes as c ON c.id = m.clientes_id
INNER JOIN restaurantes.locales as l ON l.id = m.locales_id
WHERE m.ocupada = 1 AND 
l.id = @local;


SELECT m.*, c.* FROM restaurantes.mesas AS m
INNER JOIN restaurantes.clientes as c ON c.id = m.clientes_id
INNER JOIN restaurantes.locales as l ON l.id = m.locales_id
WHERE m.ocupada = 1 AND 
l.id = (SELECT l.id FROM restaurantes.locales as l WHERE l.nombre = 'cachopower');



SELECT l.*, c.* FROM restaurantes.favoritos as f
INNER JOIN restaurantes.clientes as c ON c.id= f.clientes_id
INNER JOIN restaurantes.locales as l ON l.id = f.locales_id
WHERE c.id = 
(SELECT c.id FROM restaurantes.clientes as c WHERE c.nombre = 'Juan');