--Todas las tareas (descripcion y alias de quien la tiene asignada).
SELECT descripcion as 'Descripcion de la tarea', alias as 'Persona que la debe realizar' FROM tarea inner join persona on tarea.id_persona = persona.id;

--Todas las tareas que este realizando una persona que tenga la d en su apellido.
SELECT descripcion as 'Descripcion de la tarea', alias as 'Persona que la debe realizar' FROM tarea inner join persona on tarea.id_persona = persona.id where persona.apellido like '%d%';


