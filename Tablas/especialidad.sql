CREATE TABLE Especialidad (
    idEspecialidad INT IDENTITY(1,1) NOT NULL,
    especialidad VARCHAR(50) NOT NULL,

    constraint pk_especialidad PRIMARY KEY (idEspecialidad)
);