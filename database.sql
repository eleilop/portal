CREATE DATABASE  IF NOT EXISTS `portalacademico` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `portalacademico`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: portalacademico
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_subject`
--

DROP TABLE IF EXISTS `_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_subject` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(255) NOT NULL,
  `weekly_hours` int NOT NULL,
  `total_hours` int NOT NULL,
  `pdf` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_subject`
--

LOCK TABLES `_subject` WRITE;
/*!40000 ALTER TABLE `_subject` DISABLE KEYS */;
INSERT INTO `_subject` VALUES (1,'Programacion',8,256,'../pdf/programacion.pdf'),(2,'Entornos de Desarrollo',3,96,'../pdf/entornos_de_desarrollo.pdf'),(3,'Bases de Datos',6,192,'../pdf/bases_de_datos.pdf'),(4,'Formacion y Orientacion Laboral',3,96,'../pdf/formacion_y_orientacion_laboral.pdf'),(5,'Lenguaje de Marcas',4,128,'../pdf/lenguaje_de_marcas.pdf'),(6,'Sistemas Informaticos',6,192,'../pdf/sistemas_informaticos.pdf'),(7,'Acceso a Datos',5,0,'../pdf/acceso_a_datos.pdf'),(8,'Desarrollo de Interfaces',7,0,'../pdf/desarrollo_de_interfaces.pdf'),(9,'Programación Multimedia y Dispositivos Móviles',4,0,'../pdf/programacion_multimedia_y_dispositivos_moviles.pdf'),(10,'Programación de Servicios y Procesos',3,0,'../pdf/programacion_de_servicios_y_procesos.pdf'),(11,'Sistemas de Gestión Empresarial',4,0,'../pdf/sistemas_de_gestion_empresarial.pdf'),(12,'Empresa e Iniciativa Emprendedora',4,0,'../pdf/empresa_e_iniciativa_emprendedora.pdf'),(13,'Horas de Libre Configuración',3,0,'../pdf/horas_de_libre_configuracion.pdf'),(14,'Proyecto de Desarrollo de Aplicaciones Multiplataforma',0,40,'../pdf/proyecto_de_desarrollo_de_aplicaciones_multiplataforma.pdf'),(15,'Formación en Centros de Trabajo',0,370,'../pdf/formacion_en_centros_de_trabajo.pdf'),(16,'Desarrollo Web en Entorno Cliente',6,0,'../pdf/desarrollo_web_en_entorno_cliente.pdf'),(17,'Desarrollo Web en Entorno Servidor',8,0,'../pdf/desarrollo_web_en_entorno_servidor.pdf'),(18,'Despliegue de Aplicaciones Web',3,0,'../pdf/despliegue_de_aplicaciones_web.pdf'),(19,'Diseño de Interfaces Web',6,0,'../pdf/diseno_de_interfaces_web.pdf'),(20,'Proyecto de Desarrollo de Aplicaciones Web',0,40,'../pdf/proyecto_de_desarrollo_de_aplicaciones_web.pdf'),(21,'Implantación de Sistemas Operativos',8,0,'../pdf/implantacion_de_sistemas_operativos.pdf'),(22,'Planificación y Administración de Redes',6,0,'../pdf/planificacion_y_administracion_de_redes.pdf'),(23,'Fundamentos de Hardware',3,0,'../pdf/fundamentos_de_hardware.pdf'),(24,'Gestión de Bases de Datos',6,0,'../pdf/gestion_de_bases_de_datos.pdf'),(25,'Lenguaje de marcas y Sistemas de Gestión de la Información',4,0,'../pdf/lenguaje_de_marcas_y_sistemas_de_gestion_de_la_informacion.pdf'),(26,'Administración de Sistemas Operativos',6,0,'../pdf/administracion_de_sistemas_operativos.pdf'),(27,'Servicios de Red e Internet',6,0,'../pdf/servicios_de_red_e_internet.pdf'),(28,'Implantación de Aplicaciones Web',4,0,'../pdf/implantacion_de_aplicaciones_web.pdf'),(29,'Administración de Sistemas Gestores de Bases de Datos',3,0,'../pdf/administracion_de_sistemas_gestores_de_bases_de_datos.pdf'),(30,'Seguridad y Alta Disponibilidad',4,0,'../pdf/seguridad_y_alta_disponibilidad.pdf'),(31,'Proyecto de Administración de Sistemas Informáticos en Red',0,40,'../pdf/proyecto_de_administracion_de_sistemas_informaticos_en_red.pdf'),(32,'Aplicaciones Ofimáticas',8,0,'../pdf/aplicaciones_ofimaticas.pdf'),(33,'Montaje y Mantenimiento de Equipos',7,0,'../pdf/montaje_y_mantenimiento_de_equipos.pdf'),(34,'Redes Locales',7,0,'../pdf/redes_locales.pdf'),(35,'Sistemas Operativos Monopuesto',5,0,'../pdf/sistemas_operativos_monopuesto.pdf'),(36,'Aplicaciones Web',4,0,'../pdf/aplicaciones_web.pdf'),(37,'Seguridad Informática',5,0,'../pdf/seguridad_informatica.pdf'),(38,'Servicios en Red',7,0,'../pdf/servicios_en_red.pdf'),(39,'Sistemas Operativos en Red',7,0,'../pdf/sistemas_operativos_en_red.pdf'),(40,'Formación en Centros de Trabajo',0,410,'../pdf/formacion_en_centros_de_trabajo.pdf');
/*!40000 ALTER TABLE `_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'CFGS Desarrollo de Aplicaciones Multiplataforma','La competencia general de este título consiste en desarrollar, implantar, documentar y mantener aplicaciones informáticas multiplataforma, utilizando tecnologías y entornos de desarrollo específicos, garantizando el acceso a los datos de forma segura y cumpliendo los criterios de «usabilidad» y calidad exigidas en los estándares establecidos.'),(2,'CFGS Desarrollo de Aplicaciones Web','La competencia general de este título consiste en desarrollar, implantar, y mantener aplicaciones web, con independencia del modelo empleado y utilizando tecnologías específicas, garantizando el acceso a los datos de forma segura y cumpliendo los criterios de accesibilidad, usabilidad y calidad exigidas en los estándares establecidos.'),(3,'CFGM Sistemas Microinformáticos y Redes','La competencia general de este título consiste en instalar, configurar y mantener sistemas microinformáticos, aislados o en red, así como redes locales en pequeños entornos, asegurando su funcionalidad y aplicando los protocolos de calidad, seguridad y respeto al medio ambiente establecidos.'),(4,'CFGS Administración de Sistemas Informáticos en Red','La competencia general de este título consiste en configurar, administrar y mantener sistemas informáticos, garantizando la funcionalidad, la integridad de los recursos y servicios del sistema, con la calidad exigida y cumpliendo la reglamentación vigente.');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_subject`
--

DROP TABLE IF EXISTS `course_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_subject` (
  `course` int NOT NULL,
  `subject` int NOT NULL,
  PRIMARY KEY (`course`,`subject`),
  KEY `subject_idx` (`subject`),
  CONSTRAINT `course` FOREIGN KEY (`course`) REFERENCES `course` (`id`),
  CONSTRAINT `subject` FOREIGN KEY (`subject`) REFERENCES `_subject` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_subject`
--

LOCK TABLES `course_subject` WRITE;
/*!40000 ALTER TABLE `course_subject` DISABLE KEYS */;
INSERT INTO `course_subject` VALUES (1,1),(2,1),(1,2),(2,2),(1,3),(2,3),(1,4),(2,4),(3,4),(1,5),(2,5),(1,6),(2,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(2,12),(3,12),(4,12),(1,13),(2,13),(3,13),(4,13),(1,14),(1,15),(2,15),(4,15),(2,16),(2,17),(2,18),(2,19),(2,20),(4,21),(4,22),(4,23),(4,24),(4,25),(4,26),(4,27),(4,28),(4,29),(4,30),(4,31),(3,32),(3,33),(3,34),(3,35),(3,36),(3,37),(3,38),(3,39),(3,40);
/*!40000 ALTER TABLE `course_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credentials`
--

DROP TABLE IF EXISTS `credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credentials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credentials`
--

LOCK TABLES `credentials` WRITE;
/*!40000 ALTER TABLE `credentials` DISABLE KEYS */;
INSERT INTO `credentials` VALUES (1,'Laura@gmail.com','$2a$10$GuYsBZYvEDr18OapLN58WuqjriUtoz/SIiB4n3hhxUCWShszjvYCu'),(2,'Tania@gmail.com','$2a$10$CQE2rHI0O21C2AOD3nsi/uYBfIDidxajgGFnnqd3yzrDhsOmcLuCe'),(3,'jon@gmail.com','$2a$10$JgcLiA0DonrhMyyQj3w.U.rKCsGPFLntCBzguLpJDH6nvRek1I5Le'),(4,'Francisco@gmail.com','$2a$10$JPLdWVEyoNhQhlaU8MsNvOmIVPgVuvv4W0TA6f5.jKihNpGK8knXq'),(5,'guille@yahoo.es','$2a$10$rkNrx7AVnB1HgEcFRhyAU.FQ/wmjOlbyk13WoSWzC5DyAMBcwGaDK'),(6,'rrcastro@hotmail.com','$2a$10$gHN0/ptYuLs2Z3HfUhL43uZNBiHze1sqmgdjoKxb4c3RKoI3uU0Wi'),(7,'lorenaDoc@gmail.es','$2a$10$6tYROejoBQbaj5yO7NnxUe96iPfQ7wl2VWf/q3QyMeNaeYoezCEMW'),(11,'alejandro@gmail.com','$2a$10$axHii9QYTtZYO4XJUT6I6u4jDmJ2hvkcuwk2XrsTPwto4Yb5qVdo6'),(12,'marta@gmail.com','$2a$10$Q2rq6YVAFUT7Hk/vR4eFl.BS8NXrsg3u.TIIKeJvyMRuRN/l8Cm12'),(13,'david@gmail.com','$2a$10$z0AQXifLPZUh/RPVJvcat.uXMxFTjYaZ4p8RkFbhTv.tlVxhco2cS'),(14,'maria@gmail.com','$2a$10$jt6kbaEOBIcGUGgoTisHJOy1l5onQeITY4P2QhgxR.H33MvvU7sn6'),(32,'eloy@gmail.com','$2a$10$WwZuC1m/eI5y0DoBal/ERO3C4qIfmTGvFz.B2OCnkq6tA8zOMB/rC');
/*!40000 ALTER TABLE `credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `imagen` longtext NOT NULL,
  `pie` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL,
  `school` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `school_idx` (`school`),
  CONSTRAINT `school` FOREIGN KEY (`school`) REFERENCES `school` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Cesur detecta una alta demanda de formación en informática','Los estudiantes tienen la posibilidad de especializarse en disciplinas altamente demandadas, como ciberseguridad y \"cloud computing\"','../images/imagenNoticiaCesur.png','Centro de Cesur. / CESUR','<p> Cesur ha detectado una alta demanda de formación en líneas relacionadas con la informática</p><p> Hace unos días se celebraba el día internacional de la informática, concretamente el 9 de diciembre, en honor al nacimiento de Grace Murray Hopper, pionera en el mundo de las Ciencias de la Computación. La informática ha influenciado en el avance de la transmisión de datos e información, manteniendo a personas de cualquier parte del mundo conectadas entre sí.</p><p>Los estudios en torno a la informática son de los más demandados no solo a nivel académico, sino también en el ámbito laboral debido a las nuevas tecnologías que están en auge y en constante evolución. De hecho, la Informática es la tercera familia profesional con más estudiantes matriculados, después de Sanidad, y Administración y Gestión, según las estadísticas del alumnado de FP del curso 2021-2022, publicadas recientemente por el MEFP. </p><p>El Desarrollador de Aplicaciones Web (DAW) se destaca como un experto en la creación y optimización de aplicaciones informáticas específicamente diseñadas para entornos web. Este profesional, ya sea como empleado en empresas públicas o privadas o como trabajador independiente, se especializa en programación web, abordando lenguajes como PHP, JavaScript, entre otros. </p><p>	Desarrollo de Aplicaciones Multiplataforma (DAM) abarca una gama más amplia de plataformas, incluyendo aplicaciones para dispositivos móviles y ordenadores. Aunque comparten una base común, DAM se enfoca más intensamente en el desarrollo de aplicaciones móviles a partir del segundo año de formación, utilizando herramientas específicas y continuando con el uso de JAVA. </p>',1),(2,'Estudiante del IES Pablo Picasso, segundos clasificados en un campeonato de talento empresarial','Son alumnos del ciclo de grado Superior en Desarrollo de Aplicaciones Multiplataforma','../images/imagenNoticiaPabloPicasso1.png','De izquierda a derecha, los alumnos Jonathan Ruiz Oliva, Pablo Jiménez Aguayo y Javier de la Torre Barranco, con su profesor de Empresa e Iniciativa Emprendedora David Nicolás Ros. SUR','<p>Tres estudiantes del instituto Pablo Picasso de la capital han quedado segundos clasificados en un campeonato sobre talento empresarial celebrado en Madrid. Se trata de los jóvenes Javier de la Torre, Jonathan Ruiz y Pablo Jiménez, que han participado en la II edición de Business Talent, un campeonato educativo organizado por Herbalife Nutrition y Praxis MMT. Son alumnos del ciclo Superior de Desarrollo de Aplicaciones Multiplataforma y durante el curso han estado desarrollando en clase con su profesor de Empresa e Iniciativa Emprendedora David Nicolás Ros este proyecto que ha merecido un segundo premio  </p><p>En primer lugar, han resultado ganadores Iria Piñeiro, Ismael Martínez, Jorge Fernández y Sara Gómez, alumnos del IES A Guía de Vigo; mientras que en tercer puesto han quedado tres alumnos de la Universidad de Vigo.</p><p>El profesor David Nicolás Ros explicó que este curso incluyó el simulador empresarial de Business Talent para hacer la materia de Empresa «lo más práctica posible». Y encontró en este grupo de alumnos, que se denominaron a sí mismos RSS, una muy buena disposición a trabajar en el proyecto. Después de pasar por octavos, cuartos y semifinales se clasificaron para la final nacional. Han quedado segundo de España, pero campeones de su grupo de simulación. El profesor destacó que, incluso cuando estaban en las prácticas de empresa, «seguían tomándose el trabajo muy en serio».</p>',2),(3,'Juan rescata a Fernando de la mafia del IES Belén','Un acto heróico que marcó un antes y un después en los estudiantes','../images/imagenNoticiaBelen1.png','Juan, icono actual del IES Belén','<p>Juan Esteban Arboleda, un estudiante del Ciclo de Grado Superior en Diseño de Aplicaciones Multiplataforma ha realizado una azaña inolvidable para todos los estudiantes y personal del centro.</p><p>Su compañero de clase, Fernando, se vio forzado hace unos años a enrolarse en la mafia más peligrosa de la región, la temida mafia del IES Belén. Este, ahogado por las deudas y en acto de desespero, decidió ir y pedir ayuda a estos.</p><p>Para su mala suerte, estos tenían otros planes para él hasta que su compañero Juan, con el corazón en la mano, salvó a su amigo de las garras de la mafia.</p>',3),(4,'Charla de Ciberseguridad','Son alumnos del master de ciberseguridad explicando a sus compañeros de FP','../images/noticiaAlanTuring.jpg','CPIFP Alan Turing','<p>Como fruto del grupo de trabajo del CEP de Málaga titulado «PROTGT: Por un mundo más ciberseguro»  que ha sido conformado por profesorado del curso de CE en Ciberseguridad del CPIFP Alan Turing, la Residencia Escolar Andalucía y el IES La Orden se ha celebrado en nuestro Centro el Taller de Concienciación en Ciberseguridad titulado «(In)seguridad en nuestros datos» que ha sido preparado e impartido en dos turnos por nuestro alumnado del CE en Ciberseguridad. </p><p>Asistieron más de 100 alumnos/as repartidos entre los cursos de 1º DAM, 1º DAW y 1º ASIR de nuestro centro así como alumnado de la etapa de formación profesional de la Residencia Escolar Andalucía y del IES La Orden.</p><p>El alumnado asistente pudo comprobar de manera práctica e interactiva la relativa facilidad con la que los atacantes pueden hacerse con nuestros datos, así como herramientas para evitarlo basándose principalmente en el uso de hábitos ciberseguros.</p><p>Nuestros visitantes de Huelva que eran en su mayoría del Ciclo Superior de Integración Social pudieron contar también con una pequeña charla a cargo de Inmaculada Reina, Marta Ariza y Francisco Javier Alcántara del CPFPE Remedios Rojo con las posibilidades e Itinerarios formativos que ofrece Empleo para ayudar a personas en situaciones desfavorecidas.</p>',4),(5,'Semana Ignaciana y Fiestas Patronales 2024','Semana de fiesta llena de juegos, concursos y eventos especiales','../images/sanJoseNoticia.jpg','IES San José','<p>Un año hicimos coincidir en fecha la Semana Ignaciana y las que son ya nuestras 49ª Fiestas Patronales, cercanos a la fiesta de San José. Así se está haciendo desde el COVID. En esta ocasión, a nivel de EDUCSI se ha vuelto a pedir la celebración de la Semana Ignaciana en toda España desde el 11 de marzo.</p><p>Por ello, como eje central e importante estos días para mostrar nuestra identidad, desde Pastoral se dispondrá de una Carpa Ignaciana donde poder conocer la vida de San Ignacio de una manera lúdica. Se complementarán con actividades festivas desde el martes 12 con el pregón de bachillerato y las prolongamos hasta el viernes día 15.</p><p>El martes 12 a las 13:30h se realiza el pregón de Bachillerato. Y el miércoles a las 11h se realizará una introducción a las Fiestas Patronales y Semana Ignaciana por parte del profesor jesuita del centro Crisanto Abeso y el coordinador de Pastoral, Antonio J. Reyes antes de vivir el cañonazo de inicio de los días de fiesta.</p>',5);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school` (
  `id` int NOT NULL AUTO_INCREMENT,
  `school_name` varchar(100) NOT NULL,
  `tel` char(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `secretarySchedule` varchar(40) NOT NULL,
  `loc` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `mapLink` longtext NOT NULL,
  `color` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (1,'Cesur Málaga Este','+34952598720','info@cesurformacion.com','08:00-14:00','Málaga','./images/logos/LOGOTIPO-CESUR.png','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d10757.374130614628!2d-4.372041717464043!3d36.71808277803187!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd7259120bfc4db3%3A0xec0ecedd8dc61902!2sCESUR%20M%C3%A1laga%20Este%20Formaci%C3%B3n%20Profesional!5e0!3m2!1ses!2ses!4v1715334512514!5m2!1ses!2ses','244AA4'),(2,'IES Pablo Picasso','+34951298666','info@fpiespablopicasso.es','8:30-14:30','Málaga','./images/logos/LOGOTIPO-IES-PABLO-PICASSO.png','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6395.717928363966!2d-4.455162806420868!3d36.725948300000006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd72f70c3d574e37%3A0x67343146876c734b!2sIES%20Pablo%20Picasso!5e0!3m2!1ses!2ses!4v1715335018709!5m2!1ses!2ses','461B70'),(3,'IES Belén','+34951298425','29010201.edu@juntadeandalucia.es','08:15-14:45','Málaga','./images/logos/LOGOTIPO-IES-BELEN.png','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3199.124902411609!2d-4.459761523439527!3d36.69553637227712!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd72f9dee2ea3131%3A0xe00a7d745fb8b2e3!2sIES%20Bel%C3%A9n!5e0!3m2!1ses!2ses!4v1715335056310!5m2!1ses!2ses','FF8005'),(4,'CPIFP Alan Turing','+34951040449','29020231.info@g.educaand.es','09:00-14:00','Málaga','./images/logos/LOGOTIPO-ALAN-TURING.png','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3197.2394272377824!2d-4.554430616275409!3d36.740823696739334!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd72f10963ce0f3d%3A0x310ae7d4bb2e8f7b!2sCPIFP%20Alan%20Turing!5e0!3m2!1ses!2ses!4v1715335096355!5m2!1ses!2ses','43A7DB'),(5,'IES San José','+34952305100','sanjose@fundacionloyola.es','09:00-13:00','Málaga','./images/logos/LOGOTIPO-IES-SAN-JOSE.png','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d60854.997797710945!2d-4.459410649332534!3d36.715431468654785!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd72f711c56e8bed%3A0x6de2361e88593aeb!2sColegio%20Diocesano%20San%20Jos%C3%A9%20Obrero!5e0!3m2!1ses!2ses!4v1715335137121!5m2!1ses!2ses','006B99');
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_obj`
--

DROP TABLE IF EXISTS `user_obj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_obj` (
  `id` int NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_surname` varchar(255) NOT NULL,
  `birthDate` date NOT NULL,
  `dnie` char(9) NOT NULL,
  `user_type` varchar(3) DEFAULT '01',
  `school_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dnie` (`dnie`),
  KEY `foreign_key_course_id` (`course_id`),
  KEY `foreign_key_school_id` (`school_id`),
  CONSTRAINT `foreign_key_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `foreign_key_id` FOREIGN KEY (`id`) REFERENCES `credentials` (`id`),
  CONSTRAINT `foreign_key_school_id` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_obj`
--

LOCK TABLES `user_obj` WRITE;
/*!40000 ALTER TABLE `user_obj` DISABLE KEYS */;
INSERT INTO `user_obj` VALUES (1,'Laura','Gasset Vargas','1990-04-23','12345678A','03',NULL,NULL),(2,'Tania','La Rubia Alvarez','1975-04-29','09876543D','03',NULL,NULL),(3,'Jon','Garcia Gimenez','1985-04-29','83745924U','02',1,NULL),(4,'Francisco','Perez Trabuco','1982-11-12','98736410L','02',2,NULL),(5,'Guillermo','Huertas Romero','1990-05-01','47739814W','02',3,NULL),(6,'Rosa','Rivas Castro','1985-05-01','75047168P','02',4,NULL),(7,'Lorena','Montiel Frias','1987-03-19','68797512G','02',5,NULL),(11,'Alejandro','López Fernández','2005-03-15','36026990C','01',1,2),(12,'Marta','Sánchez González','2004-07-22','29634244D','01',2,2),(13,'David','Pérez Morales','2003-10-08','64351717V','01',3,1),(14,'María','Ruiz Jiménez','2006-12-30','60495134M','01',5,1),(32,'Eloy','Leiva López','2005-10-11','79361937T','01',4,1);
/*!40000 ALTER TABLE `user_obj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'portalacademico'
--

--
-- Dumping routines for database 'portalacademico'
--
/*!50003 DROP FUNCTION IF EXISTS `checkIfExistsUserCredentials` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `checkIfExistsUserCredentials`(user_email varchar(255), user_pass varchar(255)) RETURNS tinyint(1)
    NO SQL
begin
	declare isInTable bool;

	if (select id from credentials where email = user_email and pass = user_pass) then
		set isInTable := true;
	else
		set isInTable := false;
	end if;

	return isInTable;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `checkIfStudentExists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `checkIfStudentExists`(user_dnie varchar(10)) RETURNS tinyint(1)
    NO SQL
begin
	declare isInTable bool;
    
    if (select id from student where id = (select id from user_obj where dnie = user_dnie)) then
		set isInTable := true;
	else 
		set isInTable := false;
    end if;
    
    return isInTable;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertUser`(user_name_input varchar(255), user_surname_input varchar(255), birthDate_input date, dnie_input char(9), user_type varchar(3) , user_email varchar(255), user_pass varchar(255), school_id int, course_id int)
begin
	declare user_id int;
	declare credentials_exists bool;
    
    set credentials_exists := (select checkIfExistsUserCredentials(user_email, user_pass));
    
    
	if credentials_exists then 
		set user_id := (select id from credentials where email = user_email and pass = user_pass);
		insert into user_obj values (user_id, user_name_input, user_surname_input, birthDate_input, dnie_input, user_type, school_id, course_id);
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertUserCredentials` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertUserCredentials`(user_email varchar(255), user_pass varchar(255))
begin
	declare isInTable bool;
	set isInTable = (select checkIfExistsUserCredentials(user_email, user_pass));

	if not isInTable then
		insert into credentials (email, pass) values (user_email, user_pass);
	end if;  

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-23 15:38:32
