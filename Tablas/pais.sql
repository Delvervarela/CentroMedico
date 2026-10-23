CREATE TABLE Pais (
    idPais char(3)  IDENTITY (1,1) NOT NULL, 
    pais varchar(50) NOT NULL,
    
    constraint pk_pais PRIMARY KEY (idPais)
);
