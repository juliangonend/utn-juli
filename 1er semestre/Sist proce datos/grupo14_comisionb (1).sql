-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2023 a las 03:31:45
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `grupo14_comisionb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actores`
--

CREATE TABLE `actores` (
  `cod_actor` int(11) NOT NULL,
  `nom_actor` varchar(255) DEFAULT NULL,
  `fechanac_actor` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actores`
--

INSERT INTO `actores` (`cod_actor`, `nom_actor`, `fechanac_actor`) VALUES
(1, 'Jennifer Lawrence', '1990-08-15'),
(2, 'Leonardo DiCaprio', '1974-11-11'),
(3, 'Meryl Streep', '1949-06-22'),
(4, 'Brad Pitt', '1963-12-18'),
(5, 'Scarlett Johansson', '1984-11-22'),
(6, 'Tom Hanks', '1956-07-09'),
(7, 'Angelina Jolie', '1975-06-04'),
(8, 'Denzel Washington', '1954-12-28'),
(9, 'Emma Watson', '1990-04-15'),
(10, 'Johnny Depp', '1963-06-09'),
(11, 'Natalie Portman', '1981-06-09'),
(12, 'Robert Downey Jr.', '1965-04-04'),
(13, 'Cate Blanchett', '1969-05-14'),
(14, 'Hugh Jackman', '1968-10-12'),
(15, 'Julia Roberts', '1967-10-28'),
(16, 'Will Smith', '1968-09-25'),
(17, 'Charlize Theron', '1975-08-07'),
(18, 'Chris Hemsworth', '1983-08-11'),
(19, 'Anne Hathaway', '1982-11-12'),
(20, 'Matt Damon', '1970-10-08'),
(21, 'Ryan Reynolds', '1976-10-23'),
(22, 'Jessica Chastain', '1977-03-24'),
(23, 'Chris Evans', '1981-06-13'),
(24, 'Viola Davis', '1965-08-11'),
(25, 'Tom Holland', '1996-06-01'),
(26, 'Amy Adams', '1974-08-20'),
(27, 'Idris Elba', '1972-09-06'),
(28, 'Eva Green', '1980-07-05'),
(29, 'Ryan Gosling', '1980-11-12'),
(30, 'Charlton Heston', '1923-10-04'),
(31, 'Naomi Watts', '1968-09-28'),
(32, 'Samuel L. Jackson', '1948-12-21'),
(33, 'Natalie Portman', '1981-06-09'),
(34, 'Benedict Cumberbatch', '1976-07-19'),
(35, 'Harrison Ford', '1942-07-13'),
(36, 'Keira Knightley', '1985-03-26'),
(37, 'Daniel Radcliffe', '1989-07-23'),
(38, 'Zoe Saldana', '1978-06-19'),
(39, 'Liam Neeson', '1952-06-07'),
(40, 'Cillian Murphy', '1976-05-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquileres`
--

CREATE TABLE `alquileres` (
  `cod_alquiler` int(11) NOT NULL,
  `cod_cliente` int(11) DEFAULT NULL,
  `cod_pelicula` int(11) DEFAULT NULL,
  `fecha_alquiler` date DEFAULT NULL,
  `hora_alquiler` time DEFAULT NULL,
  `fecha_dev` date DEFAULT NULL,
  `hora_dev` time DEFAULT NULL,
  `valor_alquiler` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alquileres`
--

INSERT INTO `alquileres` (`cod_alquiler`, `cod_cliente`, `cod_pelicula`, `fecha_alquiler`, `hora_alquiler`, `fecha_dev`, `hora_dev`, `valor_alquiler`) VALUES
(1, 6, 12, '2023-03-10', '14:30:00', '2023-03-10', '17:30:00', 350.00),
(2, 10, 14, '2023-04-22', '11:15:00', '2023-04-22', '13:15:00', 400.00),
(3, 15, 19, '2023-05-06', '09:00:00', '2023-05-06', '16:30:00', 400.00),
(4, 21, 25, '2023-06-18', '16:45:00', '2023-06-18', '22:45:00', 350.00),
(5, 27, 28, '2023-07-05', '13:00:00', '2023-07-05', '18:00:00', 350.00),
(6, 32, 31, '2023-08-14', '10:30:00', '2023-08-14', '14:30:00', 400.00),
(7, 37, 35, '2023-09-29', '15:00:00', '2023-09-29', '19:00:00', 400.00),
(8, 40, 38, '2023-10-10', '18:00:00', '2023-10-10', '22:00:00', 350.00),
(9, 3, 11, '2023-02-05', '14:30:00', '2023-02-06', '14:30:00', 350.00),
(10, 8, 15, '2023-03-12', '11:00:00', '2023-03-13', '11:00:00', 400.00),
(11, 14, 17, '2023-04-19', '09:30:00', '2023-04-19', '16:30:00', 400.00),
(12, 19, 18, '2023-05-07', '16:00:00', '2023-05-07', '22:00:00', 350.00),
(13, 22, 20, '2023-06-14', '13:15:00', '2023-06-15', '13:15:00', 350.00),
(14, 27, 21, '2023-07-28', '10:30:00', '2023-07-28', '15:30:00', 400.00),
(15, 30, 23, '2023-08-09', '15:30:00', '2023-08-10', '15:30:00', 400.00),
(16, 33, 24, '2023-09-11', '18:45:00', '2023-09-12', '18:45:00', 400.00),
(17, 4, 1, '2023-01-15', '14:00:00', '2023-01-15', '17:00:00', 350.00),
(18, 7, 2, '2023-02-10', '11:30:00', '2023-02-11', '11:30:00', 400.00),
(19, 10, 3, '2023-03-05', '09:00:00', '2023-03-05', '16:00:00', 400.00),
(20, 13, 4, '2023-04-20', '16:45:00', '2023-04-21', '16:45:00', 400.00),
(21, 16, 5, '2023-05-12', '13:15:00', '2023-05-13', '13:15:00', 350.00),
(22, 19, 6, '2023-06-08', '10:30:00', '2023-06-09', '10:30:00', 350.00),
(23, 22, 7, '2023-07-03', '15:00:00', '2023-07-04', '15:00:00', 400.00),
(24, 25, 8, '2023-08-15', '14:00:00', '2023-08-16', '14:00:00', 400.00),
(25, 28, 9, '2023-09-22', '18:00:00', '2023-09-23', '18:00:00', 400.00),
(26, 10, 11, '2023-01-06', '10:00:00', '2023-01-06', '11:00:00', 450.00),
(27, 26, 3, '2023-01-28', '13:00:00', '2023-01-28', '22:30:00', 400.00),
(28, 38, 20, '2023-02-17', '10:15:00', '2023-02-18', '08:10:00', 450.00),
(29, 15, 8, '2023-04-04', '09:00:00', '2023-04-04', '13:00:00', 400.00),
(30, 23, 8, '2023-04-04', '15:00:00', '2023-04-04', '22:00:00', 400.00),
(31, 5, 2, '2023-03-29', '16:00:00', '2023-03-30', '12:00:00', 350.00),
(32, 1, 4, '2023-06-02', '20:00:00', '2023-06-03', '13:00:00', 400.00),
(33, 8, 7, '2023-09-18', '16:30:00', '2023-09-18', '23:26:00', 400.00),
(34, 14, 12, '2023-05-15', '14:30:00', '2023-05-16', '13:00:00', 450.00),
(35, 21, 19, '2023-06-20', '11:45:00', '2023-06-20', '14:45:00', 350.00),
(36, 30, 13, '2023-07-10', '18:00:00', '2023-07-11', '18:00:00', 400.00),
(37, 2, 16, '2023-07-25', '20:00:00', '2023-07-25', '22:00:00', 350.00),
(38, 6, 5, '2023-08-05', '15:30:00', '2023-08-06', '15:40:00', 400.00),
(39, 32, 9, '2023-08-15', '10:00:00', '2023-08-16', '10:00:00', 450.00),
(40, 17, 1, '2023-09-05', '11:15:00', '2023-09-05', '16:10:00', 400.00),
(41, 35, 1, '2023-09-05', '16:45:00', '2023-09-05', '21:45:00', 400.00),
(42, 4, 18, '2023-10-13', '10:30:00', '2023-10-13', '13:20:00', 350.00),
(43, 22, 18, '2023-10-13', '17:00:00', '2023-10-13', '23:05:00', 350.00),
(44, 12, 11, '2023-10-29', '11:30:00', '2023-10-30', '11:10:00', 450.00),
(45, 27, 14, '2023-10-30', '08:00:00', '2023-10-30', '12:45:00', 400.00),
(46, 31, 15, '2023-10-30', '15:00:00', '2023-10-30', '22:00:00', 350.00),
(47, 1, 1, '2023-01-01', '10:00:00', '2023-01-02', '09:30:00', 500.00),
(48, 2, 2, '2023-01-01', '11:00:00', '2023-01-01', '23:56:00', 500.00),
(49, 3, 6, '2023-01-01', '10:00:00', '2023-01-01', '16:05:35', 500.00),
(50, 6, 6, '2023-01-01', '16:30:00', '2023-01-02', '11:32:00', 500.00),
(51, 10, 5, '2023-01-12', '21:15:00', '2023-01-13', '16:35:00', 500.00),
(52, 11, 17, '2023-03-12', '11:00:00', '2023-03-12', '23:00:00', 500.00),
(53, 4, 50, '2023-03-15', '16:00:32', '2023-03-16', '13:35:00', 500.00),
(54, 2, 48, '2023-03-15', '17:00:00', '2023-03-16', '12:32:00', 500.00),
(55, 12, 32, '2023-03-17', '09:15:00', '2023-03-17', '21:30:00', 500.00),
(56, 10, 32, '2023-04-17', '22:15:00', '2023-04-18', '15:35:00', 500.00),
(57, 18, 33, '2023-04-20', '12:28:00', '2023-04-20', '18:40:00', 500.00),
(58, 5, 48, '2023-04-22', '10:35:00', '2023-04-23', '09:40:00', 500.00),
(59, 7, 11, '2023-04-22', '11:45:00', '2023-04-24', '10:00:00', 500.00),
(60, 8, 14, '2023-05-24', '10:20:00', '2023-05-24', '17:00:00', 500.00),
(61, 9, 14, '2023-05-24', '17:15:00', '2023-05-25', '15:40:00', 500.00),
(62, 13, 14, '2023-05-25', '16:00:00', '2023-05-26', '12:15:00', 500.00),
(63, 14, 17, '2023-05-27', '13:30:00', '2023-05-27', '22:30:00', 500.00),
(64, 15, 29, '2023-05-28', '14:45:00', '2023-05-29', '10:45:00', 500.00),
(65, 16, 32, '2023-05-29', '17:15:30', '2023-05-30', '12:10:15', 500.00),
(66, 17, 32, '2023-05-30', '12:30:00', '0000-00-00', '11:30:00', 500.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `cod_cliente` int(11) NOT NULL,
  `nom_cliente` varchar(255) DEFAULT NULL,
  `dir_cliente` varchar(255) DEFAULT NULL,
  `telef_cliente` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`cod_cliente`, `nom_cliente`, `dir_cliente`, `telef_cliente`) VALUES
(1, 'Juan Pérez', 'Calle 123, Ciudad X', '123-456-7890'),
(2, 'Ana Sánchez', 'Avenida 456, Ciudad Y', '987-654-3210'),
(3, 'Carlos López', 'Carrera 789, Ciudad Z', '555-123-4567'),
(4, 'Luis Rodríguez', 'Avenida A, Ciudad W', '111-222-3333'),
(5, 'María González', 'Calle B, Ciudad X', '444-555-6666'),
(6, 'Pedro Martínez', 'Carrera C, Ciudad Y', '777-888-9999'),
(7, 'Lorena Fernández', 'Calle D, Ciudad Z', '222-333-4444'),
(8, 'Manuel Pérez', 'Avenida E, Ciudad W', '555-666-7777'),
(9, 'Sofía Ramírez', 'Carrera F, Ciudad X', '888-999-0000'),
(10, 'Andrés Silva', 'Avenida G, Ciudad Y', '111-222-3333'),
(11, 'Valentina López', 'Calle H, Ciudad Z', '444-555-6666'),
(12, 'Carlos García', 'Avenida I, Ciudad W', '777-888-9999'),
(13, 'Laura Torres', 'Carrera J, Ciudad X', '222-333-4444'),
(14, 'Ricardo Pérez', 'Calle K, Ciudad Y', '555-666-7777'),
(15, 'Isabella Rodríguez', 'Avenida L, Ciudad Z', '888-999-0000'),
(16, 'Eduardo González', 'Carrera M, Ciudad W', '111-222-3333'),
(17, 'Paula Martínez', 'Avenida N, Ciudad X', '444-555-6666'),
(18, 'Javier Fernández', 'Calle O, Ciudad Y', '777-888-9999'),
(19, 'Camila Silva', 'Avenida P, Ciudad Z', '222-333-4444'),
(20, 'Jorge Pérez', 'Carrera Q, Ciudad W', '555-666-7777'),
(21, 'Marta López', 'Calle R, Ciudad X', '111-222-3333'),
(22, 'Felipe Martínez', 'Avenida S, Ciudad Y', '444-555-6666'),
(23, 'Andrea Rodríguez', 'Carrera T, Ciudad Z', '777-888-9999'),
(24, 'Gabriel Pérez', 'Avenida U, Ciudad W', '222-333-4444'),
(25, 'Natalia González', 'Calle V, Ciudad X', '555-666-7777'),
(26, 'Antonio Silva', 'Avenida W, Ciudad Y', '888-999-0000'),
(27, 'Cecilia Ramírez', 'Carrera X, Ciudad Z', '111-222-3333'),
(28, 'Maximiliano Fernández', 'Calle Y, Ciudad W', '444-555-6666'),
(29, 'Victoria Torres', 'Avenida Z, Ciudad X', '777-888-9999'),
(30, 'Rafael Martínez', 'Calle AA, Ciudad Y', '222-333-4444'),
(31, 'Patricia Pérez', 'Avenida BB, Ciudad W', '555-666-7777'),
(32, 'Diego González', 'Carrera CC, Ciudad X', '888-999-0000'),
(33, 'Olivia Silva', 'Avenida DD, Ciudad Z', '111-222-3333'),
(34, 'Emilio López', 'Calle EE, Ciudad W', '444-555-6666'),
(35, 'Marcela Rodríguez', 'Avenida FF, Ciudad X', '777-888-9999'),
(36, 'Fernando Martínez', 'Carrera GG, Ciudad Y', '222-333-4444'),
(37, 'Lucía Pérez', 'Calle HH, Ciudad Z', '555-666-7777'),
(38, 'Sebastián Silva', 'Avenida II, Ciudad W', '888-999-0000'),
(39, 'Valentín González', 'Carrera JJ, Ciudad X', '111-222-3333'),
(40, 'Alicia López', 'Calle KK, Ciudad Y', '444-555-6666');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `cod_tipo` int(11) NOT NULL,
  `categoria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`cod_tipo`, `categoria`) VALUES
(1, 'Acción'),
(2, 'Aventura'),
(3, 'Comedia'),
(4, 'Drama'),
(5, 'Ciencia Ficción'),
(6, 'Fantasía'),
(7, 'Misterio'),
(8, 'Romance'),
(9, 'Animación'),
(10, 'Thriller'),
(11, 'Documental'),
(12, 'Musical'),
(13, 'Crimen'),
(14, 'Horror'),
(15, 'Western'),
(16, 'Biografía');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `cod_pelicula` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `cod_tipo` int(11) DEFAULT NULL,
  `cod_actor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`cod_pelicula`, `titulo`, `cod_tipo`, `cod_actor`) VALUES
(1, 'Titanic', 8, 2),
(2, 'The Shawshank Redemption', 9, 1),
(3, 'The Godfather', 12, 40),
(4, 'Pulp Fiction', 12, 12),
(5, 'Forrest Gump', 6, 3),
(6, 'The Dark Knight', 8, 36),
(7, 'Inception', 11, 22),
(8, 'Gladiator', 16, 40),
(9, 'The Lord of the Rings: The Fellowship of the Ring', 5, 32),
(10, 'The Matrix', 15, 3),
(11, 'Schindler\'s List', 7, 4),
(12, 'The Silence of the Lambs', 6, 5),
(13, 'Casablanca', 1, 8),
(14, 'Star Wars: Episode IV - A New Hope', 14, 28),
(15, 'Eternal Sunshine of the Spotless Mind', 6, 37),
(16, 'The Departed', 4, 32),
(17, 'Fight Club', 3, 33),
(18, 'The Green Mile', 12, 21),
(19, 'The Social Network', 5, 10),
(20, 'The Revenant', 9, 35),
(21, 'Goodfellas', 16, 23),
(22, 'The Pianist', 1, 27),
(23, 'Inglourious Basterds', 4, 26),
(24, 'The Grand Budapest Hotel', 12, 19),
(25, 'Saving Private Ryan', 5, 18),
(26, 'No Country for Old Men', 6, 1),
(27, 'American Beauty', 7, 2),
(28, 'The Sixth Sense', 5, 6),
(29, 'The Shining', 9, 7),
(30, 'Jurassic Park', 10, 11),
(31, 'The Godfather: Part II', 11, 18),
(32, 'The Lion King', 12, 16),
(33, 'The Breakfast Club', 14, 20),
(34, 'The Truman Show', 8, 26),
(35, 'One Flew Over the Cuckoo\'s Nest', 10, 38),
(36, 'A Beautiful Mind', 1, 29),
(37, 'Dead Poets Society', 4, 17),
(38, 'Fargo', 6, 27),
(39, 'The Wolf of Wall Street', 10, 38),
(40, 'Avatar', 5, 33),
(41, 'Interstellar', 4, 23),
(42, 'Django Unchained', 7, 30),
(43, 'La La Land', 6, 10),
(44, 'The Terminator', 1, 12),
(45, 'Memento', 2, 36),
(46, 'A Clockwork Orange', 3, 12),
(47, 'The Prestige', 5, 29),
(48, 'Blade Runner', 6, 17),
(49, 'Requiem for a Dream', 9, 27),
(50, 'The Dark Knight Rises', 11, 33),
(51, 'City of God', 12, 13);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actores`
--
ALTER TABLE `actores`
  ADD PRIMARY KEY (`cod_actor`);

--
-- Indices de la tabla `alquileres`
--
ALTER TABLE `alquileres`
  ADD PRIMARY KEY (`cod_alquiler`),
  ADD KEY `cod_cliente` (`cod_cliente`),
  ADD KEY `cod_pelicula` (`cod_pelicula`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cod_cliente`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`cod_tipo`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`cod_pelicula`),
  ADD KEY `cod_actor` (`cod_actor`),
  ADD KEY `cod_tipo` (`cod_tipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actores`
--
ALTER TABLE `actores`
  MODIFY `cod_actor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `alquileres`
--
ALTER TABLE `alquileres`
  MODIFY `cod_alquiler` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cod_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `cod_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alquileres`
--
ALTER TABLE `alquileres`
  ADD CONSTRAINT `alquileres_ibfk_1` FOREIGN KEY (`cod_cliente`) REFERENCES `clientes` (`cod_cliente`),
  ADD CONSTRAINT `alquileres_ibfk_2` FOREIGN KEY (`cod_pelicula`) REFERENCES `peliculas` (`cod_pelicula`);

--
-- Filtros para la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `peliculas_ibfk_1` FOREIGN KEY (`cod_actor`) REFERENCES `actores` (`cod_actor`),
  ADD CONSTRAINT `peliculas_ibfk_2` FOREIGN KEY (`cod_tipo`) REFERENCES `genero` (`cod_tipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
