USE Heladeria
GO
ALTER TABLE Cargo
ADD CONSTRAINT RELACION_CARGO_TIPOCARGO -- Se escribie  cualquier nombre de la relacion
FOREIGN KEY (idTipoDeCargo) REFERENCES TipoCargo (idtipoCargo)
go


ALTER TABLE Cargo
ADD CONSTRAINT RELACION_CARGO_PERSONAL -- Se escribie  cualquier nombre de la relacion
FOREIGN KEY (idPesonal) REFERENCES Personal (idPersonal)
GO