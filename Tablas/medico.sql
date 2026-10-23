CREATE TABLE medico (
    idMedico INT IDENTITY(1,1) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,

    constraint pk_medico PRIMARY KEY (idMedico),
);