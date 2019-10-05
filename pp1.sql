CREATE DATABASE pp1;
USE pp1; 

create table estudiantePracticante(
carne int not null,
usuario varchar(20) not null,
contrasenna varchar(20) not null,
pimerNombre varchar(30) not null,
segundoNombre varchar(30) not null,
primerApellido varchar(30) not null,
segundoApellido varchar(30) not null,
fechaNacimiento date not null,
cedula varchar(9) not null,
correoElectronico varchar(30) not null,
telefono varchar(11) not null,
idProvincia int not null,
canton varchar(20) not null,
distrito varchar(20) not null,
sennas varchar(45) not null,
periodoPractica varchar (8) not null,
)

create table profesor(
idRol int not null,
usuario varchar(15) not null,
contrasenna varchar(15) not null,
cedula varchar(9) not null,
nombre varchar(30) not null,
primerApellido varchar(30) not null,
segundoApellido varchar(30) not null,
fechaNacimiento date not null, 
telefono varchar(11) not null,
correoElectronico varchar(30) not null,
idProvincia int not null,
canton varchar(20) not null,
distrito varchar(20) not null,
sennas varchar(45) not null,
)

create table minutas(
idMinutas int not null,

)