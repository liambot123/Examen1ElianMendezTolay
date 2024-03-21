CREATE DATABASE Gest_Emplead

CREATE TABLE Persona (
    IDPersona INT IDENTITY (1,1) NOT NULL,
    Nombre NVARCHAR (50) NOT NULL,
    Apellido NVARCHAR (50) NOT NULL,
    Estado NVARCHAR (20) NOT NULL,
	PRIMARY KEY (IDPersona),
);

CREATE TABLE Empleado (
    IDEmpleado INT IDENTITY (1,1) NOT NULL,
    IDPersona INT NOT NULL,
    Puesto NVARCHAR (50) NOT NULL,
    Salario MONEY NOT NULL,
    FechaContratacion DATETIME NOT NULL,
	PRIMARY KEY (IDPersona),
    FOREIGN KEY (IDPersona) REFERENCES Persona(IDPersona)
);