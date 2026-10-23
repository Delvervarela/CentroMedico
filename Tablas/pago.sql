CREATE TABLE Pago (
    idPago INT IDENTITY(1,1) NOT NULL,
    conceptoPago TINYINT NOT NULL,
    monto DECIMAL(10,2) NOT NULL,
    fechaPago DATE NOT NULL,
    estadoPago TINYINT NOT NULL,
    observacionPago VARCHAR(100) NULL,

    constraint pk_pago PRIMARY KEY (idPago)
);
