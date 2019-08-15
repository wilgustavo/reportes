drop table columna if exists;
drop table reporte if exists;

create table columna (
  numero integer not null,
  reporte integer not null,
  formato varchar(255),
  nombre varchar(255),
  tipo varchar(255),
  primary key (numero, reporte));

create table reporte (
  id integer generated by default as identity,
  descripcion varchar(255),
  nombre varchar(255),
  sql clob,
  primary key (id));

alter table columna
  add constraint columna_fk1
  foreign key (reporte) references reporte;

insert  into reporte
(nombre, descripcion, sql)
values
('contactos', 'listar contactos', 'select * from contactos');

