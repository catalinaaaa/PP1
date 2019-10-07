CREATE DATABASE pp1;
USE pp1; 

create table estudiantePracticante(
carne int not null,
pimerNombre varchar(30) not null,
segundoNombre varchar(30) not null,
primerApellido varchar(30) not null,
segundoApellido varchar(30) not null,
correoElectronico varchar(30) not null,
telefono varchar(11) not null,
idProvincia int not null,
idCanton int not null,
idDistrito int not null,
sennas varchar(30) not null
)

create table profesor(
carne int primary key not null,
usuario varchar(15) not null,
contrasenna varchar(15) not null,
primerNombre varchar(30) not null,
segundoNombre varchar(30) not null,
primerApellido varchar(30) not null,
segundoApellido varchar(30) not null,
telefono varchar(11) not null,
correoElectronico varchar(30) not null
)

create table entregable(
idEntregable int not null,
fechaEntregado date not null,
idTipo int not null,
porcentaje int not null,
cedulaProfesor int not null
)

create table practica(
idPractica int primary key not null,
carneEstudiante int not null,
idPeriodoPractica int not null,
profesorAsesor int not null,
profesorCurso int not null,
representanteEmpresa int not null
)

create table empresa(
cedulaJuridica int primary key not null,
nombreEmpresa varchar(30) not null,
telefono int not null,
idProvincia int not null,
idCanton int not null,
idDistrito int not null,
sennas varchar(30) not null
)

create table representanteEmpresa(
cedula int primary key not null,
primerNombre varchar(30) not null,
segundoNombre varchar(30) not null,
primerApellido varchar(30) not null,
segundoApellido varchar(30) not null,
puesto varchar (30) not null,
correoElectronico varchar(30) not null,
telefono int not null,
empresa int not null
)

create table trabajoFinal(
estudiante int not null,
nota int not null,
profesorEP int not null
)

create table periodoPractica(
idPeriodo int primary key not null,
numeroSemestre int not null,
anno int not null,
estudiantePracticante int not null,
encargadoPractica int not null
)

create table reunion(
idReunion int primary key not null,
carneEstudiante int not null,
profesorAsesor int not null,
lugar varchar(30) not null,
tema varchar(20) not null,
fecha date not null,
agenda varchar(30) not null
)

create table minutas(
idMinuta int not null,
idReunion int not null,
lugar varchar(30) not null,
idEstudiante int not null,
titulo varchar(20) not null,
fotografia image, 
horaInicio smalldatetime not null,
horaFinal smalldatetime not null
)

create table nota(
idEntregable int primary key not null,
notaProfAsesor int not null,
notaSupervisor int not null,
fechaRegistro30 date not null,
comentario varchar(30) not null
)

create table provincia(
idProvincia int primary key not null,
nombreProvincia int not null
)

create table distrito(
idDistrito int primary key not null,
nombreDistrito int not null
)

create table canton(
idCanton int primary key not null,
nombreCanton int not null
)

create table tipoEntregable(
idTipoEntregable int primary key not null, 
detalleTipo varchar(20) not null
)
