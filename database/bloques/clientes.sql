use carmotors;
-- Bloque: Clientes (Marilud) | Depende de: vehiculos (Crisbely)

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    documento_identidad VARCHAR(20) NOT NULL UNIQUE,
    telefono VARCHAR(20),
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE recordatorios_mantenimiento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vehiculo_id INT NOT NULL,
    servicio_origen_id INT NULL,
    fecha_proximo_mantenimiento DATE NOT NULL,
    descripcion VARCHAR(255),
    notificado BOOLEAN NOT NULL DEFAULT FALSE,
    CONSTRAINT fk_recordatorio_vehiculo
        FOREIGN KEY (vehiculo_id) REFERENCES vehiculos(id)
);


ALTER TABLE recordatorios_mantenimiento
ADD CONSTRAINT fk_recordatorio_servicio
    FOREIGN KEY (servicio_origen_id) REFERENCES servicios(id);