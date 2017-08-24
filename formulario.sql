drop database if exists Formulario;

create database Formulario;
use Formulario;

create table tabla(
Nombre nvarchar(15), 
ApellidoP nvarchar(15), 
ApellidoM nvarchar(15), 
Escuela nvarchar(15)
);

drop procedure if exists spGuardaAlumno;

delimiter **

create procedure spGuardaAlumno(in neim nvarchar(15),in neimP nvarchar(15),in neimM nvarchar(15),in scul nvarchar(15))
begin
declare msj nvarchar(20);
	insert into tabla(Nombre, ApellidoP, ApellidoM, Escuela)
    values (neim, neimP, neimM, scul);
	set msj = 'kmara';

end; **
delimiter ;

call spGuardaAlumno('Jose', 'Delgado', 'Mar', 'Batiz');
select * from tabla;