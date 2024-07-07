Ejemplo de uso de CASE

/*------ Sintaxis de CASE -----*/
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;
/*------ Sintaxis de CASE -----*/
SELECT CASE 1 
        WHEN 1 THEN 'uno' 
        WHEN 2 THEN 'dos' 
        ELSE 'mas' END;

SELECT CASE WHEN 1>0 
        THEN 'true' 
        ELSE 'false' END;

/*------------------------------------------*/
SELECT legajo, 
CASE
    WHEN legajo = 200 THEN "Coordinador"
    WHEN legajo in (501,502)  then "QA"
    WHEN legajo >= 103 THEN "Desarrolladores"
    ELSE "No catalogado"
END
FROM empleados
ORDER by 1;
/*--------------------------------------*/
SELECT CustomerName, City, Country FROM Customers
ORDER BY (CASE
WHEN City IS NULL THEN Country
ELSE City
END);
/********** Ejemplo Case en ORDER by ******/
SELECT apellido, cp, domicilio, seccion 
FROM empleados
ORDER BY (CASE
WHEN seccion IS NULL THEN apellido
ELSE cp
END);

/************************/
/****** uso de IF() *****/
/************************/
Sintaxis IF(condition, value_if_true, value_if_false)

/* EJEMPLO */
SELECT IF(500<1000, "YES", "NO"); //DEVUELVE SI SI LA CONDICION ES VERDADESRA Y NO SI LA CONDICION ES FALSO

Pruebe si dos cadenas son iguales y devuelva "YES" si lo son, o "NO" si no:

SELECT IF(STRCMP("hola","bye") = 0, "SI", "NO");

SELECT legajo, apellido, IF(legajo>104, "Desarrollador", "Lider")
FROM legajos;

/**************************/
/** Funciones de cadena**/
/**************************/
SELECT CONCAT('My', 'S', 'QL');
SELECT CONCAT('My', NULL, 'QL');
SELECT CONCAT(14.3);
SELECT legajo, concat(apellido, ', ',nombre) FROM `legajos`;

SELECT CONCAT_WS(',',legajo, apellido,nombre)
from legajos;
SELECT SUBSTRING('Quadratically',5,6)


Ejemplos uso de funciones fechas y horas
/* obtener fechas */
SELECT curdate(), curtime(), date(curdate());

/* adicionar un intéralo de tiempo */
SELECT DATE_ADD('2018-05-01',INTERVAL 1 DAY);
SELECT DATE_ADD(CURDATE(),INTERVAL 1 DAY);
SELECT DATE_SUB('2018-05-01',INTERVAL 1 YEAR);
       
SELECT DATE_ADD('2020-12-31 23:59:59', INTERVAL 1 SECOND);
             
SELECT DATE_ADD('2100-12-31 23:59:59', INTERVAL '1:1' MINUTE_SECOND);
        
SELECT DATE_SUB('2025-01-01 00:00:00', INTERVAL '1 1:1:1' DAY_SECOND);
       
SELECT DATE_ADD('1900-01-01 00:00:00', INTERVAL '-1 10' DAY_HOUR);
       
SELECT DATE_SUB('1998-01-02', INTERVAL 31 DAY);
       
SELECT DATE_ADD('1992-12-31 23:59:59.000002', INTERVAL '1.999999' SECOND_MICROSECOND);



/*Mostrar los legajos y hora de entrada y salida en formato de HH:MM*/
SELECT legajo, TIME_FORMAT(horaentrada, '%H:%i'), TIME_FORMAT(horasalida, '%H:%i')
FROM `hs_trabajadas`


/* Obtener la cantidad total de horas trabajadas por cada empleado*/
SELECT legajo, SUM(TIME_FORMAT(horasalida-horaentrada, '%H:%i') )
FROM `hs_trabajadas`
GROUP by legajo;