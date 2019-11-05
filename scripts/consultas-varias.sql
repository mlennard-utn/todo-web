SELECT descripcion as 'Descripcion de la tarea', alias as 'Persona que la debe realizar' FROM tarea inner join persona on tarea.id_persona = persona.id;
