-- -----------------------------------
CREATE DATABASE BASE_DATOS_CONVENIO;
USE BASE_DATOS_CONVENIO;
-- -----------------------------------

-- ------------------
-- TABLA CURSO
-- ------------------
CREATE TABLE CURSO (
NOMBRE_CURSO VARCHAR (200) NOT NULL COMMENT 'Nombre del curso',
NOMBRE_ABREV VARCHAR (10) NOT NULL COMMENT 'Nombre abreviado del curso',
CLAVE INT NOT NULL COMMENT 'Clave del curso',
HORAS_FCT INT NOT NULL COMMENT 'Horas realizadas en FCT',
ES_PUBLICO BOOLEAN NOT NULL COMMENT 'Enseñanza publica o privada',

CONSTRAINT PK_CURSO PRIMARY KEY (NOMBRE_CURSO)

) COMMENT 'Tabla con la informacion de curso';
-- -------------------------------------------------------------------------------


-- -----------------------
-- TABLA PROFESOR
-- ----------------------

CREATE TABLE PROFESOR (
DNI_PROFESOR VARCHAR (9) NOT NULL COMMENT 'DNI del profesor',
NOMBRE VARCHAR (100) NOT NULL COMMENT 'Nombre del profesor',
CONSTRAINT PK_PROFESOR PRIMARY KEY (DNI_PROFESOR)
);

-- ---------------------
-- TABLA PRACTICA
-- ---------------------
CREATE TABLE PRACTICA (
ID_PRACTICA INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la practica',
TIPO_PRACTICA VARCHAR(3) NOT NULL COMMENT 'Tipo de practica --> (PFE - FCT)',
FECHA_INICIO DATE NOT NULL COMMENT 'Fecha inicial de la practica',
FECHA_FIN DATE NOT NULL COMMENT 'Fecha final de la practica',
FECHA_ANEXO DATE NOT NULL COMMENT 'Fecha firma anexo',
EN_PROCESO BOOLEAN NOT NULL COMMENT 'Indica si la practica esta en proceso',

NOMBRE_CURSO VARCHAR (200) NOT NULL COMMENT 'Nombre del curso asignado a las practicas',
DNI_PROFESOR VARCHAR (9) NOT NULL COMMENT 'DNI del profesor responsable de las practicas',

CONSTRAINT PK_PRACTICA PRIMARY KEY (ID_PRACTICA),
CONSTRAINT FK_PRACTICA_NOMBRE_CURSO FOREIGN KEY (NOMBRE_CURSO) REFERENCES CURSO (NOMBRE_CURSO),
CONSTRAINT FK_PRACTICA_DNI_PROFESOR FOREIGN KEY (DNI_PROFESOR) REFERENCES PROFESOR (DNI_PROFESOR)
) COMMENT 'Tabla con la infomarcion de las practicas';
-- -----------------------------------------------------------------------------------------------------


-- --------------------------
-- TABLA EMPRESA
-- --------------------------
CREATE TABLE EMPRESA (
CIF_EMPRESA VARCHAR (10) NOT NULL COMMENT 'CIF de la empresa',
NOMBRE_EMPRESA VARCHAR (100) NOT NULL COMMENT 'Nombre de la empresa',
DIRECCION_EMPRESA VARCHAR (200) NOT NULL COMMENT 'Direccion de la empresa',
TELEFONO_1 INT NOT NULL COMMENT 'Telefono 1 de la empresa',
TELEFONO_2 INT NOT NULL COMMENT 'Telefono 2 de la empresa',
EMAIL_EMPRESA VARCHAR (100) NOT NULL COMMENT 'Correo de la empresa',
FAX_EMPRESA VARCHAR (100) NOT NULL COMMENT 'Fax de la empresa',
PAGINA_WEB VARCHAR (1000) NOT NULL COMMENT 'Pagina web de la empresa',

NOMBRE_GERENTE VARCHAR(100) NOT NULL COMMENT 'Nombre del gerente de la empresa',
DNI_GERENTE VARCHAR (9) NOT NULL COMMENT 'DNI del gerente de la empresa',
PERSONA_CONTACTO VARCHAR (100) NOT NULL COMMENT 'Persona de contacto de la empresa',
CARGO_CONTACTO VARCHAR (100) NOT NULL COMMENT 'Cargo del contacto de la empresa',

FECHA_ACTUALIZACION DATE NOT NULL COMMENT 'Fecha de actualizacion de los datos de la empresa',
ORGANISMO_PUBLICO BOOLEAN NOT NULL COMMENT 'Organismo publico o privado',
OBSERVACIONES VARCHAR (500) NOT NULL COMMENT 'Observaciones',

ID_PRACTICA INT NOT NULL COMMENT 'Identificador de la empresa',
CODIGO_POSTAL INT NOT NULL COMMENT 'Codigo postal de la poblacion',

CONSTRAINT PK_EMPRESA PRIMARY KEY (CIF_EMPRESA),
CONSTRAINT FK_EMPRESA_CODIGO_POSTAL FOREIGN KEY (CODIGO_POSTAL) REFERENCES POBLACION (CODIGO_POSTAL)
) COMMENT 'Tabla con la informacion de la empresa';
-- -----------------------------------------------------------------------------------------------------

-- ----------------
-- TABLA ALUMNO
-- ----------------
CREATE TABLE ALUMNO (
NIF VARCHAR (9) NOT NULL COMMENT 'NIF del alumno',
NOMBRE_COMPLETO VARCHAR (60) NOT NULL COMMENT 'Nombre completo del alumno',
SELECCIONADO BOOLEAN NOT NULL COMMENT 'True o False',
TELEFONO INT NOT NULL COMMENT 'Telefono del alumno',
CORREO VARCHAR(100) NOT NULL COMMENT 'Correo del alumno',
FECHA_NACIMIENTO DATE NOT NULL COMMENT 'Fecha de nacimiento del alumno',

ID_PRACTICA INT NOT NULL COMMENT 'Identificador de las practicas',
NOMBRE_CURSO INT NOT NULL COMMENT 'Identificador del curso',
CODIGO_POSTAL INT NOT NULL COMMENT 'Codigo postal de la poblacion',

CONSTRAINT PK_ALUMNO PRIMARY KEY (NIF),
CONSTRAINT FK_ALUMNO_ID_PRACTICA FOREIGN KEY (ID_PRACTICA) REFERENCES PRACTICA (ID_PRACTICA),
CONSTRAINT FK_ALUMNO_NOMBRE_CURSO FOREIGN KEY (NOMBRE_CURSO) REFERENCES CURSO (NOMBRE_CURSO),
CONSTRAINT FK_ALUMNO_CODIGO_POSTAL FOREIGN KEY (CODIGO_POSTAL) REFERENCES POBLACION (CODIGO_POSTAL)
) COMMENT 'Tabla con la informacion del alumno';
-- -----------------------------------------------------------------------------------------------------

