-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2023 at 03:28 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group16_comisionb`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnos`
--

CREATE TABLE `alumnos` (
  `legajo` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `cp` int(11) DEFAULT NULL,
  `domicilio` varchar(120) NOT NULL,
  `fechanacimiento` date DEFAULT NULL,
  `fechaingreso` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alumnos`
--

INSERT INTO `alumnos` (`legajo`, `nombre`, `apellido`, `cp`, `domicilio`, `fechanacimiento`, `fechaingreso`) VALUES
(1, 'Juan', 'Alvarez', 5501, 'Almirante Brown 345', '2005-10-19', '2021-10-03'),
(2, 'Ana', 'Rodriguez', 5504, 'Ballenato 123', '2002-04-23', '2021-10-03'),
(3, 'Pedro', 'Gonzalez', 5506, 'Tupac Amaru 130\r\n', '2002-11-30', '2021-10-03'),
(4, 'María', 'García', 5501, 'Calle A #123', '1999-02-10', '2021-10-29'),
(5, 'Luis', 'Fernández', 5500, 'Avenida B #456', '2000-05-15', '2021-10-29'),
(6, 'Laura', 'Martínez', 5500, 'Calle C #789', '1998-08-20', '2022-10-29'),
(7, 'Carlos', 'López', 5500, 'Calle D #1011', '1997-11-25', '2022-10-29'),
(8, 'Sofía', 'Rodríguez', 5503, 'Avenida E #1213', '1999-04-30', '2022-10-29'),
(9, 'Pablo', 'Pérez', 5506, 'Calle F #1415', '2001-07-05', '2022-10-29'),
(10, 'Carmen', 'Sánchez', 5503, 'Avenida G #1617', '2002-01-10', '2022-10-29'),
(11, 'Alejandro', 'Gómez', 5502, 'Calle H #1819', '1998-03-15', '2022-10-29'),
(12, 'Isabel', 'Díaz', 5501, 'Avenida I #2021', '1997-06-20', '2022-10-29'),
(13, 'Antonio', 'González', 5503, 'Calle J #2223', '1999-09-25', '2022-10-29'),
(14, 'Elena', 'Hernández', 5504, 'Avenida K #2425', '2000-12-30', '2022-10-29'),
(15, 'Manuel', 'Fuentes', 5502, 'Calle L #2627', '1998-02-05', '2022-10-29'),
(16, 'Juan', 'Ramírez', 5500, 'Avenida M #2829', '2001-03-10', '2022-10-29'),
(17, 'Raquel', 'Torres', 5501, 'Calle N #3031', '2002-06-15', '2022-10-29'),
(18, 'David', 'Morales', 5506, 'Avenida O #3233', '1997-09-20', '2022-10-29');

-- --------------------------------------------------------

--
-- Table structure for table `asignaturas`
--

CREATE TABLE `asignaturas` (
  `codasignatura` varchar(20) NOT NULL,
  `nombreasignatura` varchar(20) DEFAULT NULL,
  `horacatedra` int(11) DEFAULT NULL,
  `diasdictado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `asignaturas`
--

INSERT INTO `asignaturas` (`codasignatura`, `nombreasignatura`, `horacatedra`, `diasdictado`) VALUES
('ART104', 'Arte', 3, 'Viernes'),
('CIE102', 'ciencias', 4, 'jueves'),
('FIS107', 'Fisica', 8, 'Lunes'),
('HIS103', 'historia', 2, 'miercoles'),
('LAN105', 'Lenguaje', 4, 'Martes'),
('MAT101', 'matematicas', 3, 'lunes'),
('MUS106', 'Música', 2, 'Jueves'),
('QUI108', 'Quimica', 6, 'Viernes');

-- --------------------------------------------------------

--
-- Table structure for table `asignatura_alumnos`
--

CREATE TABLE `asignatura_alumnos` (
  `id` int(11) NOT NULL,
  `legajo` int(11) DEFAULT NULL,
  `codasignatura` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `asignatura_alumnos`
--

INSERT INTO `asignatura_alumnos` (`id`, `legajo`, `codasignatura`) VALUES
(1, 1, 'MAT101'),
(2, 1, 'CIE102'),
(3, 2, 'MAT101'),
(4, 2, 'HIS103'),
(5, 3, 'CIE102'),
(6, 3, 'HIS103'),
(7, 1, 'ART104'),
(8, 1, 'CIE102'),
(9, 2, 'FIS107'),
(10, 2, 'HIS103'),
(11, 3, 'LAN105'),
(12, 3, 'MAT101'),
(13, 4, 'MUS106'),
(14, 4, 'QUI108'),
(15, 5, 'ART104'),
(16, 5, 'CIE102'),
(17, 6, 'FIS107'),
(18, 6, 'HIS103'),
(19, 7, 'LAN105'),
(20, 7, 'MAT101'),
(21, 8, 'MUS106'),
(22, 8, 'QUI108'),
(23, 9, 'ART104'),
(24, 9, 'CIE102'),
(25, 10, 'FIS107'),
(26, 10, 'HIS103'),
(27, 11, 'LAN105'),
(28, 11, 'MAT101'),
(29, 12, 'MUS106'),
(30, 12, 'QUI108'),
(31, 13, 'ART104'),
(32, 13, 'CIE102'),
(33, 14, 'FIS107'),
(34, 14, 'HIS103'),
(35, 15, 'LAN105'),
(36, 15, 'MAT101'),
(37, 16, 'MUS106'),
(38, 16, 'QUI108'),
(39, 17, 'ART104'),
(40, 17, 'CIE102'),
(41, 18, 'FIS107'),
(42, 18, 'HIS103');

-- --------------------------------------------------------

--
-- Table structure for table `asignatura_profesores`
--

CREATE TABLE `asignatura_profesores` (
  `id` int(11) NOT NULL,
  `legajoprofesor` int(11) DEFAULT NULL,
  `codasignatura` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `asignatura_profesores`
--

INSERT INTO `asignatura_profesores` (`id`, `legajoprofesor`, `codasignatura`) VALUES
(1, 1, 'MAT101'),
(2, 2, 'CIE102'),
(3, 3, 'HIS103'),
(4, 4, 'ART104'),
(5, 5, 'LAN105'),
(6, 1, 'FIS107'),
(7, 2, 'QUI108'),
(8, 3, 'MUS106');

-- --------------------------------------------------------

--
-- Table structure for table `examenes`
--

CREATE TABLE `examenes` (
  `codexamen` int(11) NOT NULL,
  `codasignatura` varchar(20) DEFAULT NULL,
  `fechaexamen` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examenes`
--

INSERT INTO `examenes` (`codexamen`, `codasignatura`, `fechaexamen`) VALUES
(1, 'CIE102', '2023-10-29'),
(2, 'MUS106', '2023-05-29'),
(3, 'HIS103', '2023-04-10'),
(4, 'ART104', '2023-11-15'),
(5, 'CIE102', '2023-12-20'),
(6, 'HIS103', '2022-10-25'),
(7, 'LAN105', '2023-06-30'),
(8, 'MAT101', '2023-06-05'),
(9, 'MUS106', '2022-06-10'),
(10, 'CIE102', '2022-12-15'),
(11, 'FIS107', '2023-06-23'),
(12, 'QUI108', '2023-07-03');

-- --------------------------------------------------------

--
-- Table structure for table `examenes_alumnos`
--

CREATE TABLE `examenes_alumnos` (
  `id` int(11) NOT NULL,
  `legajo` int(11) DEFAULT NULL,
  `codexamen` int(11) DEFAULT NULL,
  `notaexamen` int(11) DEFAULT NULL,
  `aprobado` int(1) DEFAULT NULL,
  `mensaje` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examenes_alumnos`
--

INSERT INTO `examenes_alumnos` (`id`, `legajo`, `codexamen`, `notaexamen`, `aprobado`, `mensaje`) VALUES
(1, 1, 1, 7, 1, 'aprobado promociona'),
(2, 2, 2, 3, 0, 'desaprobado'),
(3, 3, 3, 5, 1, 'aprobado no promocio'),
(4, 4, 4, 6, 1, 'aprobado promociona'),
(5, 5, 5, 4, 1, 'aprobado no promocio'),
(6, 6, 6, 2, 0, 'desaprobado'),
(7, 7, 7, 1, 0, 'desaprobado'),
(8, 8, 8, 5, 1, 'aprobado no promocio'),
(9, 9, 9, 4, 1, 'aprobado no promocio'),
(10, 10, 10, 10, 1, 'aprobado promociona'),
(11, 11, 11, 9, 1, 'aprobado promociona'),
(12, 12, 12, 8, 1, 'aprobado promociona'),
(13, 1, 10, 7, 1, 'aprobado promociona'),
(14, 2, 2, 7, 1, 'aprobado en recupera'),
(15, 3, 2, 7, 1, 'aprobado promociona'),
(16, 9, 2, 3, 0, 'desaprobado'),
(17, 10, 5, 7, 1, 'aprobado promociona');

-- --------------------------------------------------------

--
-- Table structure for table `localidades`
--

CREATE TABLE `localidades` (
  `cp` int(11) NOT NULL,
  `localidad` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `localidades`
--

INSERT INTO `localidades` (`cp`, `localidad`) VALUES
(5500, 'Mendoza\r\n'),
(5501, 'Godoy Cruz '),
(5502, 'Lujan de Cuyo'),
(5503, 'Maipu'),
(5504, 'Las Heras'),
(5506, 'Rivadavia');

-- --------------------------------------------------------

--
-- Table structure for table `profesor`
--

CREATE TABLE `profesor` (
  `legajoprofesor` int(11) NOT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `domicilio` varchar(30) DEFAULT NULL,
  `fechaingreso` date DEFAULT NULL,
  `cp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profesor`
--

INSERT INTO `profesor` (`legajoprofesor`, `apellido`, `domicilio`, `fechaingreso`, `cp`) VALUES
(1, 'Perez', 'Rafael Obligado 605', '2022-10-03', 5501),
(2, 'Lopez', 'Las Toninas', '2023-03-01', 5503),
(3, 'Rodriguez', 'SuperMan 3000', '2023-03-01', 5500),
(4, 'López', 'Calle 123', '2023-10-29', 5500),
(5, 'González', 'Avenida XYZ', '2023-10-29', 5504);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`legajo`),
  ADD KEY `cp` (`cp`) USING BTREE;

--
-- Indexes for table `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`codasignatura`);

--
-- Indexes for table `asignatura_alumnos`
--
ALTER TABLE `asignatura_alumnos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `legajo` (`legajo`),
  ADD KEY `codasignatura` (`codasignatura`);

--
-- Indexes for table `asignatura_profesores`
--
ALTER TABLE `asignatura_profesores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `legajoprofesor` (`legajoprofesor`),
  ADD KEY `codasignatura` (`codasignatura`);

--
-- Indexes for table `examenes`
--
ALTER TABLE `examenes`
  ADD PRIMARY KEY (`codexamen`),
  ADD KEY `codasignatura` (`codasignatura`);

--
-- Indexes for table `examenes_alumnos`
--
ALTER TABLE `examenes_alumnos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `legajo` (`legajo`),
  ADD KEY `codexamen` (`codexamen`);

--
-- Indexes for table `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`cp`);

--
-- Indexes for table `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`legajoprofesor`),
  ADD KEY `cp` (`cp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `legajo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `asignatura_alumnos`
--
ALTER TABLE `asignatura_alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `asignatura_profesores`
--
ALTER TABLE `asignatura_profesores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `examenes`
--
ALTER TABLE `examenes`
  MODIFY `codexamen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `examenes_alumnos`
--
ALTER TABLE `examenes_alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `profesor`
--
ALTER TABLE `profesor`
  MODIFY `legajoprofesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`cp`) REFERENCES `localidades` (`cp`);

--
-- Constraints for table `asignatura_alumnos`
--
ALTER TABLE `asignatura_alumnos`
  ADD CONSTRAINT `asignatura_alumnos_ibfk_1` FOREIGN KEY (`legajo`) REFERENCES `alumnos` (`legajo`),
  ADD CONSTRAINT `asignatura_alumnos_ibfk_2` FOREIGN KEY (`codasignatura`) REFERENCES `asignaturas` (`codasignatura`);

--
-- Constraints for table `asignatura_profesores`
--
ALTER TABLE `asignatura_profesores`
  ADD CONSTRAINT `asignatura_profesores_ibfk_1` FOREIGN KEY (`legajoprofesor`) REFERENCES `profesor` (`legajoprofesor`),
  ADD CONSTRAINT `asignatura_profesores_ibfk_2` FOREIGN KEY (`codasignatura`) REFERENCES `asignaturas` (`codasignatura`);

--
-- Constraints for table `examenes`
--
ALTER TABLE `examenes`
  ADD CONSTRAINT `examenes_ibfk_1` FOREIGN KEY (`codasignatura`) REFERENCES `asignaturas` (`codasignatura`);

--
-- Constraints for table `examenes_alumnos`
--
ALTER TABLE `examenes_alumnos`
  ADD CONSTRAINT `examenes_alumnos_ibfk_1` FOREIGN KEY (`legajo`) REFERENCES `alumnos` (`legajo`),
  ADD CONSTRAINT `examenes_alumnos_ibfk_2` FOREIGN KEY (`codexamen`) REFERENCES `examenes` (`codexamen`);

--
-- Constraints for table `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `profesor_ibfk_1` FOREIGN KEY (`cp`) REFERENCES `localidades` (`cp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
