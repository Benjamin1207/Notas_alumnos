-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE DATABASE EstudiantesUDB;
USE EstudiantesUDB;

-- Tabla estudiantes
CREATE TABLE Estudiantes (
  Carnet VARCHAR(8) NOT NULL PRIMARY KEY,
  Nombre VARCHAR(50) NOT NULL,
  Apellido VARCHAR(50) NOT NULL,
);

-- Tabla materias
CREATE TABLE Materias (
  Materias INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  Nombre VARCHAR(50) NOT NULL,
  Descripcion VARCHAR(255)
);

-- Tabla Notas
CREATE TABLE Notas_udb (
    Carnet VARCHAR(8) NOT NULL,
    Materias INT NOT NULL,
    Notas FLOAT NOT NULL,
    PRIMARY KEY (Carnet, Materias),
    FOREIGN KEY (Carnet) REFERENCES Estudiantes(Carnet),
    FOREIGN KEY (Materias) REFERENCES Materias(Materias),
);
--Insert into
INSERT INTO Materias (Nombre) VALUES 
('Diseño y Programación de Software Multiplataforma'),
('Interconexión de Redes de Datos'),
('Cálculo Integral'),
('Lenguajes Interpretados en el Servidor');

INSERT INTO Estudiantes (Nombre, Apellido, Carnet) VALUES 
('Yesenia', 'Velasquez', 'NV210134'),
('Diego', 'Zelaya', 'GZ210369');
('Juan', 'Flores', 'FS142078');
('Dennis', 'Rivas', 'RF140580');

INSERT INTO Notas_udb Materia, Carnet, Nota) VALUES 
('Diseño y Programación de Software Multiplataforma', 'GZ210369', '9.1'),
('Cálculo Integral', 'FS142078', '7.1'),
('Lenguajes Interpretados en el Servidor', 'RF140580', '8.2'),
('Interconexión de Redes de Datos', 'NV210134', '7.9');