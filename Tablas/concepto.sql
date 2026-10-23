CREATE TABLE Concepto (
    idConcepto INT IDENTITY(1,1) NOT NULL,
    concepto VARCHAR(50) NOT NULL,
    
    constraint pk_concepto PRIMARY KEY (idConcepto)
);