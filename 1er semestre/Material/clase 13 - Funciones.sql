------ FUNCIONES --------
drop function if exists f_mayor;

delimiter //
create function f_mayor(
  valor1 int,
  valor2 int) 
  returns int
  deterministic
begin 
  if valor1>valor2 then
    return valor1;
  else
    return valor2;
  end if;
end //
delimiter ;

select f_mayor(50, 120);

-----***** ejmplo determinística -----
def sumar(a, b):
    return a + b

resultado = sumar(2, 3)
print(resultado)

------ Ejemplo de función ----
------ Creamos la tabla -----
drop table if exists sitios;

create table sitios (
    url varchar(100),
    cantpaginas int,
    estrellas tinyint,
    primary key(url)
);

----- Insertamos los datos -----
insert into sitios(url,cantpaginas,estrellas) values ('lanacion.com.ar',17000000,3);
insert into sitios(url,cantpaginas,estrellas) values ('clarin.com',42000000,3);
insert into sitios(url,cantpaginas,estrellas) values ('infobae.com',33000000,5);
insert into sitios(url,cantpaginas,estrellas) values ('lavoz.com.ar',25000000,2);

Implementar una función que le enviemos la cantidad de estrellas que tiene un sitio y nos devuelva un varchar con tantos '*' como indica el parámetro:

drop function if exists f_estrellas;

delimiter //
create function f_estrellas(
  cant tinyint)
  returns varchar(15)
  deterministic
 begin
   declare estrellas varchar(15) default '';
   declare x int default 0;
   while x<cant do
     set estrellas=concat(estrellas,'*');
     set x=x+1;
   end while;
   return estrellas;
 end //
 delimiter ; 

 ---- ejecutamos la función ----
  select url,f_estrellas(estrellas) from sitios;

----- PROBLEMA II ---------
----- Creamos la función ----
drop function if exists f_tipositio;
 
 delimiter //
 create function f_tipositio(
   cantidad int)
   returns varchar(20)
   deterministic
 begin
case 
    when cantidad<20000000 then
      return 'tráfico bajo';
    when cantidad>=20000000 and cantidad<40000000 then
      return 'tráfico medio';
    when cantidad>=40000000 then
      return 'tráfico alto';
  end case; 
 end //
 delimiter ;

---- Ejecutamos la función -----
 select url,f_estrellas(estrellas), cantpaginas, f_tipositio(cantpaginas) from sitios; 

 ----- PROBLEMA III ---------
 ---- Creamos la función ----
 drop function if exists f_mayor_trafico;
 
 delimiter //
 create function f_mayor_trafico()
   returns varchar(100)
   deterministic
 begin
   declare vurl varchar(100);
   select url into vurl from sitios 
    order by cantpaginas desc 
   limit 1;
   return vurl;
 end //
 delimiter ;

 ----- Ejecutamos la función -----
 select f_mayor_trafico();
  
  CREATE FUNCTION sumar_tres_numeros_enteros (a INT, b INT, c INT) RETURNS INT
BEGIN
    DECLARE suma INT;
    SET suma = a + b + c;
    RETURN suma;
END;