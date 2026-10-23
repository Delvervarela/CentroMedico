CREATE TABLE Paciente (
    idPaciente INT IDENTITY(1,1),
    dni VARCHAR(20),
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    fnacimiento DATE NOT NULL,
    domicilio VARCHAR(255),
    telefono VARCHAR(15),
    email VARCHAR(100) NOT NULL,
    observaciones VARCHAR(500),

    constraint PK_Paciente PRIMARY KEY (idPaciente),
);





