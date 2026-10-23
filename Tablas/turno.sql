CREATE TABLE turno (
    idTurno INT IDENTITY(1,1) NOT NULL,
    fechaTurno DATE NOT NULL,
    estadoTurno SMALLINT NOT NULL,
    observacionTurno VARCHAR(100) NULL,

    constraint pk_turno PRIMARY KEY (idTurno)
);