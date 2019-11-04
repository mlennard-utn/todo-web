CREATE TABLE `tododb`.`tarea` ( `id` INT NOT NULL AUTO_INCREMENT , `descripcion` VARCHAR(200) NOT NULL , `fecha_limite` DATE NOT NULL , `realizada` BOOLEAN NOT NULL , `fecha_realizada` DATE NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB; 
CREATE TABLE `tododb`.`persona` ( `id` INT NOT NULL AUTO_INCREMENT , `alias` VARCHAR(25) NOT NULL , `nombre` VARCHAR(25) NOT NULL , `apellido` VARCHAR(25) NULL , `email` VARCHAR(50) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB; 
ALTER TABLE `tarea` ADD `id_persona` INT NOT NULL AFTER `fecha_realizada`; 
ALTER TABLE `tarea` ADD CONSTRAINT `persona_fk` FOREIGN KEY (`id_persona`) REFERENCES `persona`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT; 
