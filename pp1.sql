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
idCanton int not null,
idDistrito int not null,
sennas varchar(30) not null
)

create table profesor(
usuario varchar(15) not null,
contrasenna varchar(15) not null,
cedula varchar(9) not null,
primerNombre varchar(30) not null,
segundoNombre varchar(30) not null,
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

create table entrega(
idEntrega int not null,
fechaEntrega date not null,
idTipo int not null,
porcentaje int not null,
cedulaProfesor int not null
)

create table practica(
idPractica int not null,
idRepresentante int not null,
idEstudiante int not null,
idProfesorCurso int not null,
idEmpresa int not null, 
idEncargadoPracticas int not null,
idProfesorAsesor int not null,
anno int not null,
numeroSemestre int not null
)

create table empresa(
cedulaJuridica int not null,
nombreEmpresa varchar(30) not null,
telefono int not null,
idProvincia int not null,
idCanton int not null,
idDistrito int not null,
sennas varchar (30) not null
)

create table representanteEmpresa(
cedula int not null,
primerNombre varchar(30) not null,
segundoNombre varchar(30) not null,
primerApellido varchar(30) not null,
segundoApellido varchar(30) not null,
puesto varchar (30) not null,
correoElectronico varchar(30) not null,
telefono int not null
)

create table trabajoFinal(
estudiante int not null,
nota int not null,
profesorEP int not null
)

create table reunion(
idReunion int not null,
correoEstudiante varchar(30) not null,
idEstudiante int not null,
correoProfAsignado varchar(30) not null,
lugar varchar(30) not null,
tema varchar(20) not null
)

create table minutas(
idReunion int not null,
idMinuta int not null,
idEstudiante int not null,
titulo varchar(20) not null,
fotografia image, 
horaInicio date not null,
horaFinal date not null,
agenda varchar(30) not null
)

create table nota(
idEntrega int not null,
notaProfAsesor int not null,
notaSupervisor int not null,
fecha date not null,
comentario varchar(30) not null
)

create table provincia(
idProvincia int not null,
nombreProvincia int not null
)

create table distrito(
idDistrito int not null,
nombreDistrito int not null
)

create table canton(
idCanton int not null,
nombreCanton int not null
)

create table tipoEntrega(
idTipo int not null, 
detalleTipo varchar(20) not null
)
