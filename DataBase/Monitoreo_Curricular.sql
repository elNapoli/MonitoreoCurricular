USE [master]
GO
/****** Object:  Database [Monitoreo_Curricular]    Script Date: 09/29/2015 18:04:58 ******/
CREATE DATABASE [Monitoreo_Curricular] ON  PRIMARY 
( NAME = N'Monitoreo_Curricular', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Monitoreo_Curricular.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Monitoreo_Curricular_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Monitoreo_Curricular_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Monitoreo_Curricular] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Monitoreo_Curricular].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Monitoreo_Curricular] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Monitoreo_Curricular] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Monitoreo_Curricular] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Monitoreo_Curricular] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Monitoreo_Curricular] SET ARITHABORT OFF
GO
ALTER DATABASE [Monitoreo_Curricular] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Monitoreo_Curricular] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Monitoreo_Curricular] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Monitoreo_Curricular] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Monitoreo_Curricular] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Monitoreo_Curricular] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Monitoreo_Curricular] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Monitoreo_Curricular] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Monitoreo_Curricular] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Monitoreo_Curricular] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Monitoreo_Curricular] SET  DISABLE_BROKER
GO
ALTER DATABASE [Monitoreo_Curricular] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Monitoreo_Curricular] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Monitoreo_Curricular] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Monitoreo_Curricular] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Monitoreo_Curricular] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Monitoreo_Curricular] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Monitoreo_Curricular] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Monitoreo_Curricular] SET  READ_WRITE
GO
ALTER DATABASE [Monitoreo_Curricular] SET RECOVERY FULL
GO
ALTER DATABASE [Monitoreo_Curricular] SET  MULTI_USER
GO
ALTER DATABASE [Monitoreo_Curricular] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Monitoreo_Curricular] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Monitoreo_Curricular', N'ON'
GO
USE [Monitoreo_Curricular]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 09/29/2015 18:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[rut] [int] NULL,
	[idres] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Table_1] ([rut], [idres]) VALUES (NULL, NULL)
INSERT [dbo].[Table_1] ([rut], [idres]) VALUES (180, 180)
INSERT [dbo].[Table_1] ([rut], [idres]) VALUES (NULL, 182)
INSERT [dbo].[Table_1] ([rut], [idres]) VALUES (0, 191)
INSERT [dbo].[Table_1] ([rut], [idres]) VALUES (181, 181)
/****** Object:  Table [dbo].[FACULTAD]    Script Date: 09/29/2015 18:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FACULTAD](
	[IDFACULTAD] [smallint] NOT NULL,
	[NOMFACULTAD] [varchar](60) NOT NULL,
	[FONO] [char](15) NOT NULL,
	[CAMCODIGO] [smallint] NOT NULL,
	[AGNOCREACION] [smallint] NOT NULL,
	[AGNOTERMINO] [smallint] NOT NULL,
 CONSTRAINT [PK_FACULTAD] PRIMARY KEY CLUSTERED 
(
	[IDFACULTAD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[FACULTAD] ([IDFACULTAD], [NOMFACULTAD], [FONO], [CAMCODIGO], [AGNOCREACION], [AGNOTERMINO]) VALUES (1, N'Facultad deArquitectura y Artes', N'0              ', 0, 0, 0)
INSERT [dbo].[FACULTAD] ([IDFACULTAD], [NOMFACULTAD], [FONO], [CAMCODIGO], [AGNOCREACION], [AGNOTERMINO]) VALUES (2, N'Facultad de Ciencias', N'0              ', 0, 0, 0)
INSERT [dbo].[FACULTAD] ([IDFACULTAD], [NOMFACULTAD], [FONO], [CAMCODIGO], [AGNOCREACION], [AGNOTERMINO]) VALUES (3, N'Facultad de Ciencias Agraria', N'0              ', 0, 0, 0)
INSERT [dbo].[FACULTAD] ([IDFACULTAD], [NOMFACULTAD], [FONO], [CAMCODIGO], [AGNOCREACION], [AGNOTERMINO]) VALUES (4, N'Facultad de Ciencias Económicas y Administrativas', N'0              ', 0, 0, 0)
INSERT [dbo].[FACULTAD] ([IDFACULTAD], [NOMFACULTAD], [FONO], [CAMCODIGO], [AGNOCREACION], [AGNOTERMINO]) VALUES (5, N'Facultad de Ciencias Forestales y Recursos Naturales', N'0              ', 0, 0, 0)
INSERT [dbo].[FACULTAD] ([IDFACULTAD], [NOMFACULTAD], [FONO], [CAMCODIGO], [AGNOCREACION], [AGNOTERMINO]) VALUES (6, N'Facultad de Ciencias Jurídicas y Sociales', N'0              ', 0, 0, 0)
INSERT [dbo].[FACULTAD] ([IDFACULTAD], [NOMFACULTAD], [FONO], [CAMCODIGO], [AGNOCREACION], [AGNOTERMINO]) VALUES (7, N'Facultad de Ciencias Veterinarias', N'0              ', 0, 0, 0)
INSERT [dbo].[FACULTAD] ([IDFACULTAD], [NOMFACULTAD], [FONO], [CAMCODIGO], [AGNOCREACION], [AGNOTERMINO]) VALUES (8, N'Facultad de Ciencias de la Ingeniería', N'0              ', 0, 0, 0)
INSERT [dbo].[FACULTAD] ([IDFACULTAD], [NOMFACULTAD], [FONO], [CAMCODIGO], [AGNOCREACION], [AGNOTERMINO]) VALUES (9, N'Facultad de Filosofía y Humanidades ', N'0              ', 0, 0, 0)
INSERT [dbo].[FACULTAD] ([IDFACULTAD], [NOMFACULTAD], [FONO], [CAMCODIGO], [AGNOCREACION], [AGNOTERMINO]) VALUES (10, N'Facultad de Medicina ', N'0              ', 0, 0, 0)
INSERT [dbo].[FACULTAD] ([IDFACULTAD], [NOMFACULTAD], [FONO], [CAMCODIGO], [AGNOCREACION], [AGNOTERMINO]) VALUES (11, N'NO TENGO IDEA', N'0              ', 0, 0, 0)
/****** Object:  Table [dbo].[INSTITUTOS]    Script Date: 09/29/2015 18:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INSTITUTOS](
	[IDINSTITUTO] [smallint] NOT NULL,
	[NOMINSTITUTO] [varchar](50) NOT NULL,
	[FONO] [char](15) NOT NULL,
	[AGNOCREACION] [smallint] NOT NULL,
	[AGNOTERMINO] [smallint] NOT NULL,
	[CAMCODIGO] [smallint] NOT NULL,
	[IDFACTULTAD] [smallint] NOT NULL,
	[TIPOINSTITUTO] [char](1) NOT NULL,
 CONSTRAINT [PK_INSTITUTOS] PRIMARY KEY CLUSTERED 
(
	[IDINSTITUTO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (1, N'Instituto de Acústica', N'0              ', 0, 0, 0, 8, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (2, N'Instituto de Ciencias Navales y Marítimas', N'0              ', 0, 0, 0, 8, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (3, N'Instituto de Diseño y Métodos Industriales', N'0              ', 0, 0, 0, 8, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (4, N'Instituto de Electricidad y Electrónica', N'0              ', 0, 0, 0, 8, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (5, N'Instituto de Informática', N'0              ', 0, 0, 0, 8, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (6, N'Instittuto de Materiales y Procesos Termomecánicos', N'0              ', 0, 0, 0, 8, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (7, N'Instituto de Obras Civiles ', N'0              ', 0, 0, 0, 8, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (8, N'Ciencias Básicas ', N'0              ', 0, 0, 0, 8, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (9, N'Anatomía, Histología y Patología', N'0              ', 0, 0, 0, 10, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (10, N'Aparato Locomotor y Rehabilitación', N'0              ', 0, 0, 0, 10, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (11, N'Cirugía', N'0              ', 0, 0, 0, 10, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (12, N'Enfermería', N'0              ', 0, 0, 0, 10, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (13, N'Especialidades', N'0              ', 0, 0, 0, 10, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (14, N'Fisiología', N'0              ', 0, 0, 0, 10, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (15, N'Inmunología', N'0              ', 0, 0, 0, 10, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (16, N'Medicina', N'0              ', 0, 0, 0, 10, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (17, N'Microbiología Clínica', N'0              ', 0, 0, 0, 10, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (18, N'Neurociencias Clínicas', N'0              ', 0, 0, 0, 10, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (19, N'Odontoestomatología', N'0              ', 0, 0, 0, 10, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (20, N'Obstetricia y Ginecología', N'0              ', 0, 0, 0, 10, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (21, N'Parasitología', N'0              ', 0, 0, 0, 10, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (22, N'Pediatría', N'0              ', 0, 0, 0, 10, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (23, N'Salud Pública', N'0              ', 0, 0, 0, 10, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (24, N'Salud Sexual y Reproductiva', N'0              ', 0, 0, 0, 10, N'I')
INSERT [dbo].[INSTITUTOS] ([IDINSTITUTO], [NOMINSTITUTO], [FONO], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACTULTAD], [TIPOINSTITUTO]) VALUES (25, N'NO TENGO IDEA', N'0              ', 0, 0, 0, 11, N'I')
/****** Object:  Table [dbo].[REGISTRO]    Script Date: 09/29/2015 18:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REGISTRO](
	[IDREGISTRO] [int] IDENTITY(1,1) NOT NULL,
	[CodigoError] [varchar](10) NOT NULL,
	[MensajeError] [varchar](500) NOT NULL,
	[FechaError] [datetime] NOT NULL,
	[Rut] [int] NOT NULL,
	[OrigenError] [varchar](255) NOT NULL,
	[idObjetos] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[REGISTRO] ON
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (44, N'1', N'Se ha guardado el registro exitosamente', CAST(0x0000A51D00DA71E0 AS DateTime), 0, N'Controller/GuardarHistorial', 191)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (51, N'-2', N'No se encontró el procedimiento almacenado ''delAsignaturasByHistorial''.', CAST(0x0000A51E015A9D34 AS DateTime), 0, N'Controller/EliminarAsignaturasPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (52, N'1', N'Se ha guardado la asignatura exitosamente', CAST(0x0000A51E015B1138 AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (53, N'1', N'Se ha guardado la asignatura exitosamente', CAST(0x0000A51E015BB7A0 AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (54, N'1', N'Se ha guardado la asignatura exitosamente', CAST(0x0000A51E015BCCB8 AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (55, N'1', N'Se ha guardado la asignatura exitosamente', CAST(0x0000A51E015CC780 AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (56, N'1', N'Se ha guardado la asignatura exitosamente', CAST(0x0000A51E015E3FAC AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (60, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A51F00B0F52C AS DateTime), 0, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (61, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A51F00B18B2C AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (62, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A51F00B1D758 AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (63, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A51F00B20638 AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (64, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A51F00B23068 AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (65, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A51F00B254BC AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (66, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A51F00B2B3A8 AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (67, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A51F00B2E030 AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (68, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A51F00B336E8 AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (69, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A51F00B3649C AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (70, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A51F00B4DCC8 AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (71, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A51F00B5AD60 AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (72, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A51F00B609F4 AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (73, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A51F00B6D5DC AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (74, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A51F00B711A0 AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (75, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A51F00BF08B0 AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (89, N'1', N'Se ha actualizado el registro exitosamente', CAST(0x0000A52101737E58 AS DateTime), 17536925, N'Controller/ActualizarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (96, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A521017586A8 AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (106, N'1', N'Se ha Actualizado la asignatura correctamente', CAST(0x0000A522000FFFB4 AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (107, N'1', N'Se ha actualizado el registro exitosamente', CAST(0x0000A5220010C944 AS DateTime), 17536925, N'Controller/ActualizarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (108, N'1', N'Se ha Actualizado la asignatura correctamente', CAST(0x0000A5220010C944 AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (109, N'1', N'Se ha Actualizado la asignatura correctamente', CAST(0x0000A5220010C944 AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (110, N'1', N'Se ha Actualizado la asignatura correctamente', CAST(0x0000A5220010C944 AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (111, N'1', N'Se ha guardado el registro exitosamente', CAST(0x0000A522011E2CF0 AS DateTime), 17536925, N'Controller/GuardarHistorial', 198)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (112, N'1', N'Se ha guardado el registro con id=199exitosamente', CAST(0x0000A522011F3DFC AS DateTime), 17536925, N'Controller/GuardarHistorial', 199)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (115, N'1', N'Se ha guardado el registro con id= 201 exitosamente', CAST(0x0000A5220121A664 AS DateTime), 17536925, N'Controller/GuardarHistorial', 201)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (116, N'1', N'Se ha guardado la asignatura con código =INFO013   exitosamente', CAST(0x0000A5220121A664 AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (117, N'1', N'Se ha guardado la asignatura con código =INFO015   exitosamente', CAST(0x0000A5220121A664 AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (118, N'1', N'Se ha guardado el registro con id= 202 exitosamente', CAST(0x0000A5220121B348 AS DateTime), 17536925, N'Controller/GuardarHistorial', 202)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (119, N'1', N'Se ha guardado la asignatura con código =INFO013   exitosamente', CAST(0x0000A5220121B348 AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (120, N'1', N'Se ha guardado la asignatura con código =INFO015   exitosamente', CAST(0x0000A5220121B348 AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (121, N'1', N'Se ha guardado el registro con id= 203 exitosamente', CAST(0x0000A52201240C74 AS DateTime), 17536925, N'Controller/GuardarHistorial', 203)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (122, N'1', N'Se ha guardado la asignatura con código =INFO013   exitosamente', CAST(0x0000A52201240C74 AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (57, N'1', N'Se ha actualizado el registro exitosamente', CAST(0x0000A51E016318B0 AS DateTime), 17536925, N'Controller/ActualizarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (95, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A52101753248 AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (97, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A5210175C4C4 AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (113, N'1', N'Se ha guardado el registro con id= 200 exitosamente', CAST(0x0000A52201209684 AS DateTime), 17536925, N'Controller/GuardarHistorial', 200)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (114, N'1', N'Se ha guardado el registro con id= 200 exitosamente', CAST(0x0000A52201209684 AS DateTime), 17536925, N'Controller/GuardarHistorial', 200)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (123, N'1', N'Se ha guardado el registro con id= 204 exitosamente', CAST(0x0000A5220124A5F8 AS DateTime), 17536925, N'Controller/GuardarHistorial', 204)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (124, N'1', N'Se ha guardado la asignatura con código =INFO013   exitosamente', CAST(0x0000A5220124A5F8 AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (125, N'1', N'Se ha guardado el registro con id= 205 exitosamente', CAST(0x0000A52201251EAC AS DateTime), 17536925, N'Controller/GuardarHistorial', 205)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (126, N'1', N'Se ha guardado la asignatura con código =INFO012   exitosamente', CAST(0x0000A52201251EAC AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (127, N'1', N'Se ha guardado el registro con id= 206 exitosamente', CAST(0x0000A52201255B9C AS DateTime), 17536925, N'Controller/GuardarHistorial', 206)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (128, N'1', N'Se ha guardado la asignatura con código =INFO012   exitosamente', CAST(0x0000A52201255B9C AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (129, N'1', N'Se ha guardado el registro con id= 207 exitosamente', CAST(0x0000A52201272E04 AS DateTime), 17536925, N'Controller/GuardarHistorial', 207)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (130, N'1', N'Se ha guardado la asignatura con código =INFO013   exitosamente', CAST(0x0000A52201272E04 AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (90, N'1', N'Se ha Actualizado la asignatura correctamente', CAST(0x0000A52101737F84 AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (91, N'1', N'Se ha eliminado la asignatura INFO023    exitosamente', CAST(0x0000A5210173B1E8 AS DateTime), 17536925, N'Controller/EliminarAsignaturasPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (92, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A5210173B1E8 AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (93, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A52101741B60 AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (94, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A52101743B04 AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (45, N'1', N'Se ha guardado el registro exitosamente', CAST(0x0000A51D00DF3824 AS DateTime), 0, N'Controller/GuardarHistorial', 192)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (46, N'1', N'Se ha guardado el registro exitosamente', CAST(0x0000A51D00DFA2C8 AS DateTime), 0, N'Controller/GuardarHistorial', 193)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (47, N'1', N'Se ha guardado el registro exitosamente', CAST(0x0000A51D00E35DDC AS DateTime), 17536925, N'Controller/GuardarHistorial', 194)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (48, N'1', N'Se ha guardado el registro exitosamente', CAST(0x0000A51D00E39874 AS DateTime), 17536925, N'Controller/GuardarHistorial', 195)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (49, N'1', N'Se ha guardado el registro exitosamente', CAST(0x0000A51D00E59D40 AS DateTime), 17536925, N'Controller/GuardarHistorial', 196)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (50, N'1', N'Se ha guardado el registro exitosamente', CAST(0x0000A51D00E63B74 AS DateTime), 17536925, N'Controller/GuardarHistorial', 197)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (76, N'1', N'Se ha actualizado el registro exitosamente', CAST(0x0000A51F00C03CE4 AS DateTime), 17536925, N'Controller/ActualizarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (77, N'1', N'Se ha actualizado el registro exitosamente', CAST(0x0000A51F00C0489C AS DateTime), 17536925, N'Controller/ActualizarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (78, N'1', N'Se ha Actualizado la asignatura correctamente', CAST(0x0000A51F00C0489C AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (79, N'1', N'Se ha Actualizado la asignatura correctamente', CAST(0x0000A51F00C0489C AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (80, N'1', N'Se ha Actualizado la asignatura correctamente', CAST(0x0000A51F00C0489C AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (81, N'1', N'Se ha actualizado el registro exitosamente', CAST(0x0000A51F00C108CC AS DateTime), 17536925, N'Controller/ActualizarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (82, N'1', N'Se ha Actualizado la asignatura correctamente', CAST(0x0000A51F00C108CC AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (83, N'1', N'Se ha Actualizado la asignatura correctamente', CAST(0x0000A51F00C108CC AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (84, N'1', N'Se ha Actualizado la asignatura correctamente', CAST(0x0000A51F00C108CC AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (85, N'1', N'Se ha eliminado la asignatura INFO013    exitosamente', CAST(0x0000A51F00C12618 AS DateTime), 17536925, N'Controller/EliminarAsignaturasPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (86, N'1', N'Se ha eliminado la asignatura INFO025    exitosamente', CAST(0x0000A51F00C12618 AS DateTime), 17536925, N'Controller/EliminarAsignaturasPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (87, N'1', N'Se ha eliminado la asignatura INFO173    exitosamente', CAST(0x0000A51F00C12618 AS DateTime), 17536925, N'Controller/EliminarAsignaturasPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (88, N'547', N'Instrucción DELETE en conflicto con la restricción REFERENCE "FK_RESOLUCI_REFERENCE_HISTORIA". El conflicto ha aparecido en la base de datos "Monitoreo_Curricular", tabla "dbo.RESOLUCIONES", column ''IDHISTORIALCURRICULAR''.', CAST(0x0000A51F00C12618 AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (58, N'1', N'Se ha Actualizado la asignatura correctamente', CAST(0x0000A51E016318B0 AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (59, N'1', N'Se ha Actualizado la asignatura correctamente', CAST(0x0000A51E016318B0 AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (131, N'1', N'Se ha guardado el registro con id= 208 exitosamente', CAST(0x0000A522012954CC AS DateTime), 17536925, N'Controller/GuardarHistorial', 208)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (132, N'1', N'Se ha guardado la asignatura con código =INFO013   exitosamente', CAST(0x0000A522012954CC AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (133, N'1', N'Se ha guardado la asignatura con código =INFO025   exitosamente', CAST(0x0000A522012954CC AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (134, N'1', N'Se ha guardado la asignatura con código =INFO035   exitosamente', CAST(0x0000A522012954CC AS DateTime), 17536925, N'Controller/GuardarAsignaturaPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (135, N'1', N'Se ha guardado la resolucion con id= 88 exitosamente', CAST(0x0000A5220129597C AS DateTime), 17536925, N'Controller/GuardarResolucionPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (136, N'1', N'Se ha guardado la resolucion con id= 89 exitosamente', CAST(0x0000A52201295D00 AS DateTime), 17536925, N'Controller/GuardarResolucionPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (98, N'1', N'Se ha eliminado la resolucion MartinRivas.pdf exitosamente', CAST(0x0000A52101769FE8 AS DateTime), 17536925, N'Controller/EliminarResolucionPorHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (99, N'1', N'Se ha eliminado el registro exitosamente', CAST(0x0000A5210176ADF8 AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (100, N'1', N'Se ha guardado el usuario18427160 exitosamente', CAST(0x0000A521018212C4 AS DateTime), 17536925, N'Controller/GuardarHistorial', 1)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (101, N'1', N'Se ha eliminado el registro con id=0 exitosamente', CAST(0x0000A52200097C20 AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (102, N'1', N'Se ha eliminado el registro con id=0 exitosamente', CAST(0x0000A5220009BB68 AS DateTime), 17536925, N'Controller/EliminarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (103, N'1', N'Se ha eliminado el registro con rut=18427160 exitosamente', CAST(0x0000A522000A08C0 AS DateTime), 17536925, N'Controller/EliminarUsuario', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (104, N'1', N'Se ha actualizado el registro exitosamente', CAST(0x0000A522000F6AE0 AS DateTime), 17536925, N'Controller/ActualizarHistorial', 0)
INSERT [dbo].[REGISTRO] ([IDREGISTRO], [CodigoError], [MensajeError], [FechaError], [Rut], [OrigenError], [idObjetos]) VALUES (105, N'1', N'Se ha actualizado el registro exitosamente', CAST(0x0000A522000FFFB4 AS DateTime), 17536925, N'Controller/ActualizarHistorial', 0)
SET IDENTITY_INSERT [dbo].[REGISTRO] OFF
/****** Object:  Table [dbo].[ROLES]    Script Date: 09/29/2015 18:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ROLES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NULL,
 CONSTRAINT [PK_ROLES] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ROLES] ON
INSERT [dbo].[ROLES] ([ID], [Nombre]) VALUES (1, N'Administrador')
INSERT [dbo].[ROLES] ([ID], [Nombre]) VALUES (2, N'User')
INSERT [dbo].[ROLES] ([ID], [Nombre]) VALUES (3, N'asdf')
SET IDENTITY_INSERT [dbo].[ROLES] OFF
/****** Object:  Table [dbo].[USUARIOS]    Script Date: 09/29/2015 18:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USUARIOS](
	[Rut] [int] NOT NULL,
	[Nombre] [varchar](100) NULL,
	[ApPaterno] [varchar](100) NULL,
	[ApMaterno] [varchar](100) NULL,
	[Password] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[LastLoginDate] [datetime] NULL,
	[Rol] [int] NOT NULL,
 CONSTRAINT [PK_USUARIOS] PRIMARY KEY CLUSTERED 
(
	[Rut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[USUARIOS] ([Rut], [Nombre], [ApPaterno], [ApMaterno], [Password], [Email], [CreatedDate], [LastLoginDate], [Rol]) VALUES (17536925, N'baldomero', N'aguila', N'napoli', N'175369', N'baldomero.napoli@gmail.com', CAST(0x0000A50E015E976C AS DateTime), CAST(0x0000A52201270A2D AS DateTime), 1)
INSERT [dbo].[USUARIOS] ([Rut], [Nombre], [ApPaterno], [ApMaterno], [Password], [Email], [CreatedDate], [LastLoginDate], [Rol]) VALUES (123456789, N'hola', N'hola', N'hola', N'123456', N'hola', CAST(0x0000A50E01602C40 AS DateTime), NULL, 2)
/****** Object:  Table [dbo].[ASIGNATURAS]    Script Date: 09/29/2015 18:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ASIGNATURAS](
	[IDASIGNATURA] [char](10) NOT NULL,
	[NOMASIGNATURA] [varchar](200) NOT NULL,
	[PARASIGTIPO] [smallint] NOT NULL,
	[DESCASIGNATURA] [varchar](255) NOT NULL,
	[AGNOINICIO] [smallint] NOT NULL,
	[AGNOTERMINO] [smallint] NOT NULL,
	[PARASIGREG] [smallint] NOT NULL,
	[IDINSTITUTO] [smallint] NOT NULL,
	[TIPOASIGNATURA] [char](1) NOT NULL,
	[CREDITOS] [smallint] NOT NULL,
	[PARASIGTIPASIG] [smallint] NOT NULL,
	[HORASTEORICAS] [smallint] NOT NULL,
	[HORASPRACTICAS] [smallint] NOT NULL,
	[PARTIPOAPRENDIZAJE] [tinyint] NOT NULL,
	[NIVELCODIGO] [tinyint] NOT NULL,
	[CREDITOSTRANSFERIBLES] [tinyint] NOT NULL,
	[HORASNOPRESENCIALES] [tinyint] NOT NULL,
	[USAUAPRENDIZAJE] [bit] NOT NULL,
	[REGINTERNO] [smallint] NOT NULL,
 CONSTRAINT [PK_ASIGNATURAS] PRIMARY KEY CLUSTERED 
(
	[IDASIGNATURA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ADMI100   ', N'ADMINISTRACION DE EMPRESAS ', 0, N'0', 0, 0, 0, 25, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ADMI109   ', N'ADMINISTRACION DE EMPRESAS', 0, N'0', 0, 0, 0, 25, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'BAIN009   ', N'COMUNICACION: IDIOM  ESPANOL ', 0, N'0', 0, 0, 0, 8, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'BAIN012   ', N'GEOMETRIA PARA INGENIERIA ', 0, N'0', 0, 0, 0, 8, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'BAIN017   ', N'ALGEBRA PARA INGENIERIA ', 0, N'0', 0, 0, 0, 8, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'BAIN019   ', N'QUIMICA PARA INGENIERIA ', 0, N'0', 0, 0, 0, 8, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'BAIN036   ', N'ALGEBRA LINEAL PARA INGENIERIA ', 0, N'0', 0, 0, 0, 8, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'BAIN037   ', N'CALCULO I PARA INGENIERIA ', 0, N'0', 0, 0, 0, 8, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'BAIN038   ', N'FISICA I PARA INGENIERIA ', 0, N'0', 0, 0, 0, 8, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'BAIN039   ', N'COMUNICACION: IDIOMA INGLES ', 0, N'0', 0, 0, 0, 8, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'BAIN041   ', N'ECUACIONES DIFERENCIALES PARA INGENIERIA ', 0, N'0', 0, 0, 0, 8, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'BAIN042   ', N'CALCULO II PARA INGENIERIA ', 0, N'0', 0, 0, 0, 8, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'BAIN043   ', N'FISICA II PARA INGENIERIA ', 0, N'0', 0, 0, 0, 8, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'BAIN052   ', N'ESTADISTICA Y PROBABILIDADES PARA INGENIERIA ', 0, N'0', 0, 0, 0, 8, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'BAIN053   ', N'METODOS NUMERICOS PARA INGENIERIA ', 0, N'0', 0, 0, 0, 8, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'BAIN054   ', N'FISICA III PARA INGENIERIA ', 0, N'0', 0, 0, 0, 8, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'CAEV111   ', N'GEOLOGIA GENERAL ', 0, N'0', 0, 0, 0, 25, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'CIDI100   ', N'INGLES INSTRUMENTAL II ', 0, N'0', 0, 0, 0, 25, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'CIDI108   ', N'INGLES FUNCIONAL ', 0, N'0', 0, 0, 0, 25, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'DMIB041   ', N'METODOS GRAFICOS PARA INGENIERIA II ', 0, N'0', 0, 0, 0, 3, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'DYRE060   ', N'EDUCACION FISICA Y SALUD ', 0, N'0', 0, 0, 0, 25, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'EICI245   ', N'TALLER DE SOFTWARE- PROYECTO INTEGRACIÓN DE TIC ', 0, N'0', 0, 0, 0, 25, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'EICI246   ', N'ARQUITECTURA DE SISTEMAS', 0, N'0', 0, 0, 0, 25, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'EICI247   ', N'REALIDAD TECNOLOGICA NACIONAL', 0, N'0', 0, 0, 0, 25, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'EICI255   ', N'ADMINISTRACION DE TIC', 0, N'0', 0, 0, 0, 25, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'EICI261   ', N'ESTRATEGIA Y SI ', 0, N'0', 0, 0, 0, 25, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'EICI297   ', N'PRACTICA PROFESIONAL ', 0, N'0', 0, 0, 0, 25, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'EICI298   ', N'PROYECTO DE TITULO ', 0, N'0', 0, 0, 0, 25, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ELECT01   ', N'OPTATIVO 1 ', 0, N'0', 0, 0, 0, 25, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ELECT02   ', N'OPTATIVO 2 ', 0, N'0', 0, 0, 0, 25, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ELECT20   ', N'OPTATIVO PROFESIONAL 1 ', 0, N'0', 0, 0, 0, 25, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ELECT21   ', N'OPTATIVO PROFESIONAL 2 ', 0, N'0', 0, 0, 0, 25, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ELECT22   ', N'OPTATIVO PROFESIONAL 3', 0, N'0', 0, 0, 0, 25, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ELEL251   ', N'ELECTRICIDAD Y ELECTRONICA PARA INGENIERIA', 0, N'0', 0, 0, 0, 25, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA010   ', N'ETICA', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA031   ', N'BASES TEORICAS DE LA DISCIPLINA I', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA050   ', N'PRIMEROS AUXILIOS', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA060   ', N'ELEMENTOS DE ENFERMERIA', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA101   ', N'NECESIDADES HUMANAS II', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA112   ', N'ATENCION DE ENFERMERIA MATERNO INFANTIL I', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA121   ', N'ATENCION DE ENFERMERIA DEL ADULTO Y SENESCENTE I', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA132   ', N'BASES TEORICAS DE LA DISCIPLINA II', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA201   ', N'ENFERMERIA EN NEONATOLOGIA', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA202   ', N'ENFERMERIA EN NEONATOLOGIA II', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA212   ', N'ATENCION DE ENFERMERIA DEL NIÑO Y ADOLESCENTE II', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA222   ', N'ATENCION DE ENFERMERIA DE ADULTO Y SENESCENTE II', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA230   ', N'COMUNICACION Y ENFERMERIA', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA232   ', N'ADMINISTRACION Y ENFERMERIA', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA234   ', N'TEORIAS Y MODELOS DE ENFERMERIA', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA236   ', N'INVESTIGACION CUALITATIVA EN ENFERMERIA', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA240   ', N'ATENCION EN ENFERMERIA EN ALTO RIESGO Y URGENCIA', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA241   ', N'LIDERAZGO DE LA ATENCION DE ENFERMERIA EN SALUD', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA296   ', N'AVANCE DE TESIS', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA297   ', N'TENDENCIAS Y PROYECCIONES DE LA DISCIPLINA II', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA298   ', N'TESIS', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA330   ', N'EDUCACION Y AUTOCUIDADO EN SALUD', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA331   ', N'PLANIFICACION ESTRATEGICA EN ENFERMERIA', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA332   ', N'PLANIFICACION ESTRATEGICA Y GESTION EN ENFERMERIA', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA340   ', N'ENFERMERIA EN SALUD FAMILIAR Y COMUNITARIA', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA341   ', N'INTERVENCION DE ENFERMERIA COMO ESPECIALISTA', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'ENFA344   ', N'SEMINARIO DE INVESTIGACION', 0, N'0', 0, 0, 0, 12, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'FSCA151   ', N'FISICA CONTEMPORANEA', 0, N'0', 0, 0, 0, 25, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IDMI031   ', N'METODOS GRAFICOS PARA INGENIERIA ', 0, N'0', 0, 0, 0, 3, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IECO102   ', N'ECONOMIA GENERAL ', 0, N'0', 0, 0, 0, 25, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IMPT043   ', N'MATERIALES DE INGENIERIA', 0, N'0', 0, 0, 0, 6, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IMPT207   ', N'MECANICA RACIONAL II ', 0, N'0', 0, 0, 0, 6, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IMPT210   ', N'MECANICA DE FLUIDOS ', 0, N'0', 0, 0, 0, 6, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO012   ', N'PROGRAMACION I ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO013   ', N'INTRODUCCION A LA PROGRAMACION ', 0, N'z', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO015   ', N'TALLER DE INGENIERIA I ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO023   ', N'PROGRAMACION', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO025   ', N'TALLER DE INGENIERIA II ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO033   ', N'PROGRAMACION ORIENTADA A OBJETOS ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO035   ', N'TALLER DE INGENIERIA III ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO043   ', N'ESTRUCTURAS DISCRETAS ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO045   ', N'TALLER', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO053   ', N'ESTRUCTURAS DE DATOS Y ALGORITMOS ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO152   ', N'PROGRAMACION Y COMPUTACION PARA INGENIERIA CIVIL', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO163   ', N'PROGRAMACION CONCURRENTE ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO164   ', N'TEORIA DE AUTOMATAS ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO165   ', N'COMPILADORES', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO172   ', N'INVESTIGACION OPERATIVA I ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO173   ', N'INVESTIGACION OPERATIVA II ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO175   ', N'TALLER DE CONSTRUCCION DE SOFTWARE ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO182   ', N'SISTEMA OPERATIVO', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO183   ', N'ANALISIS DE SISTEMAS LINEALES ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO184   ', N'RQUITECTURA DE COMPUTADORES ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO185   ', N'COMUNICACIONES', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO189   ', N'SOFTWARE DE INGENIERIA ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO251   ', N'SEMINARIO DE ETICA PROFESIONAL', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO252   ', N'PROYECTO I ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO253   ', N'ANTEPROYECTO DE TITULO', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO261   ', N'BASES DE DATOS ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO263   ', N'FUNDAMENTOS DE INGENIERIA DE SOFTWARE ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO264   ', N'TALLER INGENIERIA DE SOFTWARE', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO265   ', N'COMPUTACION GRAFICA ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO266   ', N'INTERFAZ HUMANO - COMPUTADOR ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO267   ', N'INTELIGENCIA ARTIFICIAL', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO268   ', N'TALLER DE BASE DE DATOS ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO270   ', N'INGENIERIA DE SISTEMAS ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO271   ', N'SISTEMAS DE INFORMACION ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO272   ', N'INGENIERIA ECONOMICA ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO273   ', N'EVALUACION DE DESEMPEÑO', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO274   ', N'SIMULACION', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO275   ', N'SISTEMAS DE GESTION ESTRATEGICOS', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO276   ', N'SISTEMAS DE GESTION TACTICOS', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO279   ', N'METODOS DE OPTIMIZACION ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO281   ', N'REDES', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'INFO284   ', N'TALLER DE INTEGRACION DE TIC ', 0, N'0', 0, 0, 0, 5, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC016   ', N'TALLER DE INGENIERIA I ', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC026   ', N'IOCC026', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC036   ', N'TALLER DE INGENIERIA III ', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC046   ', N'TALLER DE DISEÐO EN INGENERIA', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC053   ', N'MECANICA RACIONAL I ', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC117   ', N'MECANICA DE SOLIDOS', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC132   ', N'ANALISIS DE ESTRUCTURAS I ', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC133   ', N'ANALISIS DE ESTRUCTURAS II', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC134   ', N'DINAMICA DE ESTRUCTURAS ', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC173   ', N'TOPOGRAFIA GENERAL ', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC211   ', N'INGENIERIA SISMORESISTENTE', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC221   ', N'TALLER DE FUNDACIONES ', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC225   ', N'TALLER DE METODOLOGIA DE LA INVESTIGACION ', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC233   ', N'TALLER DE DISEÑO ESTRUCTURAL', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC236   ', N'HORMIGON ARMADO I ', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC237   ', N'HORMIGON ARMADO II', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC238   ', N'ESTRUCTURAS DE ACERO I', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC239   ', N'ESTRUCTURAS DE ACERO II ', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC246   ', N'IOCC246 ', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC250   ', N'INTRODUCCION A LA CONSTRUCCION', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC254   ', N'HIDRAULICA', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC257   ', N'INGENIERIA AMBIENTAL ', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC259   ', N'TALLER DE REDES DE AGUA POTABLE Y ALCANTARILLADO ', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC260   ', N'IOCC260 ', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC263   ', N'MECANICA DE SUELOS II ', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC268   ', N'INGENIERIA DE TRANSPORTE', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC279   ', N'CONSTRUCCION PESADA BASICA', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC280   ', N'DISEÑO ESTRUCTURAL DE PAVIMENTO', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC281   ', N'COMPUTACION PARA INGENIERIA ESTRUCTURAL ', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC288   ', N'METODOS MATEMATICOS PARA INGENIERIA ', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC290   ', N'EVALUACION DE PROYECTOS', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC294   ', N'PROGRAMACION Y ADMINISTRACION DE OBRAS ', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'IOCC298   ', N'TESIS', 0, N'0', 0, 0, 0, 7, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[ASIGNATURAS] ([IDASIGNATURA], [NOMASIGNATURA], [PARASIGTIPO], [DESCASIGNATURA], [AGNOINICIO], [AGNOTERMINO], [PARASIGREG], [IDINSTITUTO], [TIPOASIGNATURA], [CREDITOS], [PARASIGTIPASIG], [HORASTEORICAS], [HORASPRACTICAS], [PARTIPOAPRENDIZAJE], [NIVELCODIGO], [CREDITOSTRANSFERIBLES], [HORASNOPRESENCIALES], [USAUAPRENDIZAJE], [REGINTERNO]) VALUES (N'MATM271   ', N'MATEMATICA AVANZADA PARA INGENIERIA', 0, N'0', 0, 0, 0, 25, N'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
/****** Object:  StoredProcedure [dbo].[getFacultad]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getFacultad]

AS
BEGIN

SELECT IDFACULTAD, NOMFACULTAD FROM FACULTAD
END
GO
/****** Object:  Table [dbo].[ESCUELAS]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ESCUELAS](
	[IDESCUELA] [smallint] NOT NULL,
	[NOMESCUELA] [varchar](250) NOT NULL,
	[FONO] [char](15) NOT NULL,
	[ESCFAX] [char](15) NOT NULL,
	[AGNOCREACION] [smallint] NOT NULL,
	[AGNOTERMINO] [smallint] NOT NULL,
	[CAMCODIGO] [smallint] NOT NULL,
	[IDFACULTAD] [smallint] NOT NULL,
	[TIPOESCUELA] [char](1) NOT NULL,
	[COMCODIGO] [smallint] NULL,
 CONSTRAINT [PK_ESCUELAS] PRIMARY KEY CLUSTERED 
(
	[IDESCUELA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ESCUELAS] ([IDESCUELA], [NOMESCUELA], [FONO], [ESCFAX], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACULTAD], [TIPOESCUELA], [COMCODIGO]) VALUES (1, N'Ingeniería Civil Industrial', N'0              ', N'0              ', 0, 0, 0, 8, N'C', 0)
INSERT [dbo].[ESCUELAS] ([IDESCUELA], [NOMESCUELA], [FONO], [ESCFAX], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACULTAD], [TIPOESCUELA], [COMCODIGO]) VALUES (2, N'Ingeniería Naval', N'0              ', N'0              ', 0, 0, 0, 8, N'C', 0)
INSERT [dbo].[ESCUELAS] ([IDESCUELA], [NOMESCUELA], [FONO], [ESCFAX], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACULTAD], [TIPOESCUELA], [COMCODIGO]) VALUES (3, N'Ingeniería en Contrucción', N'0              ', N'0              ', 0, 0, 0, 8, N'C', 0)
INSERT [dbo].[ESCUELAS] ([IDESCUELA], [NOMESCUELA], [FONO], [ESCFAX], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACULTAD], [TIPOESCUELA], [COMCODIGO]) VALUES (4, N'Ingeniería Civil Electrónica', N'0              ', N'0              ', 0, 0, 0, 8, N'C', 0)
INSERT [dbo].[ESCUELAS] ([IDESCUELA], [NOMESCUELA], [FONO], [ESCFAX], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACULTAD], [TIPOESCUELA], [COMCODIGO]) VALUES (5, N'Ingeniería Civil Mecánica', N'0              ', N'0              ', 0, 0, 0, 8, N'C', 0)
INSERT [dbo].[ESCUELAS] ([IDESCUELA], [NOMESCUELA], [FONO], [ESCFAX], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACULTAD], [TIPOESCUELA], [COMCODIGO]) VALUES (6, N'Ingeniería Civil en Acústica', N'0              ', N'0              ', 0, 0, 0, 8, N'C', 0)
INSERT [dbo].[ESCUELAS] ([IDESCUELA], [NOMESCUELA], [FONO], [ESCFAX], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACULTAD], [TIPOESCUELA], [COMCODIGO]) VALUES (7, N'Ingeniería Civil en Obras Civiles', N'0              ', N'0              ', 0, 0, 0, 8, N'C', 0)
INSERT [dbo].[ESCUELAS] ([IDESCUELA], [NOMESCUELA], [FONO], [ESCFAX], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACULTAD], [TIPOESCUELA], [COMCODIGO]) VALUES (8, N'Ingeniería Civil en Informática', N'0              ', N'0              ', 0, 0, 0, 8, N'C', 0)
INSERT [dbo].[ESCUELAS] ([IDESCUELA], [NOMESCUELA], [FONO], [ESCFAX], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACULTAD], [TIPOESCUELA], [COMCODIGO]) VALUES (9, N'Bachillerato en Cs. de la Ingeniería', N'0              ', N'0              ', 0, 0, 0, 8, N'C', 0)
INSERT [dbo].[ESCUELAS] ([IDESCUELA], [NOMESCUELA], [FONO], [ESCFAX], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACULTAD], [TIPOESCUELA], [COMCODIGO]) VALUES (10, N'Medicina', N'0              ', N'0              ', 0, 0, 0, 10, N'C', 0)
INSERT [dbo].[ESCUELAS] ([IDESCUELA], [NOMESCUELA], [FONO], [ESCFAX], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACULTAD], [TIPOESCUELA], [COMCODIGO]) VALUES (11, N'Odontología', N'0              ', N'0              ', 0, 0, 0, 10, N'C', 0)
INSERT [dbo].[ESCUELAS] ([IDESCUELA], [NOMESCUELA], [FONO], [ESCFAX], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACULTAD], [TIPOESCUELA], [COMCODIGO]) VALUES (12, N'Kinesiología', N'0              ', N'0              ', 0, 0, 0, 10, N'C', 0)
INSERT [dbo].[ESCUELAS] ([IDESCUELA], [NOMESCUELA], [FONO], [ESCFAX], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACULTAD], [TIPOESCUELA], [COMCODIGO]) VALUES (13, N'Tecnología Médica', N'0              ', N'0              ', 0, 0, 0, 10, N'C', 0)
INSERT [dbo].[ESCUELAS] ([IDESCUELA], [NOMESCUELA], [FONO], [ESCFAX], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACULTAD], [TIPOESCUELA], [COMCODIGO]) VALUES (14, N'Enfermería', N'0              ', N'0              ', 0, 0, 0, 10, N'C', 0)
INSERT [dbo].[ESCUELAS] ([IDESCUELA], [NOMESCUELA], [FONO], [ESCFAX], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACULTAD], [TIPOESCUELA], [COMCODIGO]) VALUES (15, N'Obstetricia y Puericultura', N'0              ', N'0              ', 0, 0, 0, 10, N'C', 0)
INSERT [dbo].[ESCUELAS] ([IDESCUELA], [NOMESCUELA], [FONO], [ESCFAX], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACULTAD], [TIPOESCUELA], [COMCODIGO]) VALUES (16, N'Terapia Ocupacional ', N'0              ', N'0              ', 0, 0, 0, 10, N'C', 0)
INSERT [dbo].[ESCUELAS] ([IDESCUELA], [NOMESCUELA], [FONO], [ESCFAX], [AGNOCREACION], [AGNOTERMINO], [CAMCODIGO], [IDFACULTAD], [TIPOESCUELA], [COMCODIGO]) VALUES (17, N'Psicología', N'0              ', N'0              ', 0, 0, 0, 10, N'C', 0)
/****** Object:  StoredProcedure [dbo].[setLog]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[setLog]
	@codigo varchar(10),
	@Mensaje varchar(255),
	@Fecha varchar(20),
	@rut VARCHAR(10),
	@origen varchar(255),
	@idObjetos integer
AS
BEGIN try


insert into REGISTRO(CodigoError,MensajeError,FechaError,Rut,OrigenError,idObjetos) 
values(@codigo,@Mensaje,@Fecha,@rut,@origen,@idObjetos)
select 1 ErrorNumber
END TRY
BEGIN CATCH
	SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_MESSAGE() AS ErrorMessage
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[setUsuario]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[setUsuario]
	@Rut int,
	@Nombre varchar(100),
	@apPaterno varchar(100),
	@apMaterno varchar(100),
	@pass varchar(255),
	@Email varchar(255),
	@Rol int
AS
BEGIN TRY
	insert into USUARIOS(Rut,Nombre,ApPaterno,ApMaterno,[Password],Email,CreatedDate,Rol) 
	values(@Rut,@Nombre,@apPaterno,@apMaterno,@pass,@Email,GETDATE(),@Rol)
	SELECT 1 as ErrorNumber,
			'Se ha guardado el usuario'+CONVERT(varchar(10), @Rut)+' exitosamente' AS ErrorMessage,
			getdate() as ErrorDate
END TRY
BEGIN CATCH
    SELECT  ERROR_NUMBER() AS ErrorNumber,
			ERROR_MESSAGE() AS ErrorMessage,
			getdate() as ErrorDate
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[validarUsuario]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[Validate_User] 'Mudassar', '12345'
CREATE PROCEDURE [dbo].[validarUsuario]
	@Username NVARCHAR(20),
	@Password NVARCHAR(20)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @Rut INT,@Nombre Varchar(50), @LastLoginDate DATETIME, @RoleId INT
	
	SELECT @Rut = Rut, @Nombre = Nombre, @LastLoginDate = LastLoginDate, @RoleId = Rol 
	FROM USUARIOS WHERE Rut = @Username AND [Password] = @Password
	
	IF @Rut IS NOT NULL
	BEGIN
		update USUARIOS set LastLoginDate = GETDATE() where Rut = @Rut
			SELECT @Rut [Rut], @Nombre [Nombre],
					(SELECT Nombre FROM ROLES 
					 WHERE ID = @RoleId) [Rol] -- User Valid
					 
		
	END
	ELSE
	BEGIN
		SELECT -1 [Rut],'' [Nombre], '' [Rol] -- User invalid.
	END
END
GO
/****** Object:  StoredProcedure [dbo].[delUsuario]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delUsuario]
	@Rut int
AS
BEGIN TRY
DELETE FROM USUARIOS where Rut = @Rut
	
	SELECT 1 as ErrorNumber,
			'Se ha eliminado el registro con rut='+CONVERT(varchar(10), @Rut)+' exitosamente' AS ErrorMessage,
			getdate() as ErrorDate
END TRY
BEGIN CATCH
    SELECT  ERROR_NUMBER() AS ErrorNumber,
			ERROR_MESSAGE() AS ErrorMessage,
			getdate() as ErrorDate
END CATCH
GO
/****** Object:  Table [dbo].[CARRERAS]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CARRERAS](
	[IDCARRERA] [int] NOT NULL,
	[NOMCARRERA] [varchar](250) NOT NULL,
	[AGNOCREACION] [smallint] NOT NULL,
	[AGNOTERMINO] [smallint] NOT NULL,
	[IDESCUELA] [smallint] NOT NULL,
	[CODTIPCARRERA] [smallint] NOT NULL,
	[CODTIPPLAN] [smallint] NOT NULL,
	[CARCODMINISTERIO] [int] NOT NULL,
	[EMAIL] [varchar](100) NULL,
	[CODDEMRE] [int] NULL,
	[CODAREA] [smallint] NULL,
	[REGACADAFECTA] [tinyint] NULL,
	[AGNOAFECTAINI] [smallint] NULL,
 CONSTRAINT [PK_CARRERAS] PRIMARY KEY CLUSTERED 
(
	[IDCARRERA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CARRERAS] ([IDCARRERA], [NOMCARRERA], [AGNOCREACION], [AGNOTERMINO], [IDESCUELA], [CODTIPCARRERA], [CODTIPPLAN], [CARCODMINISTERIO], [EMAIL], [CODDEMRE], [CODAREA], [REGACADAFECTA], [AGNOAFECTAINI]) VALUES (1, N'Ingeniería Civil Industrial(Valdivia)', 0, 0, 1, 0, 0, 0, NULL, 0, 0, 0, 0)
INSERT [dbo].[CARRERAS] ([IDCARRERA], [NOMCARRERA], [AGNOCREACION], [AGNOTERMINO], [IDESCUELA], [CODTIPCARRERA], [CODTIPPLAN], [CARCODMINISTERIO], [EMAIL], [CODDEMRE], [CODAREA], [REGACADAFECTA], [AGNOAFECTAINI]) VALUES (2, N'Ingeniería Naval', 0, 0, 2, 0, 0, 0, NULL, 0, 0, 0, 0)
INSERT [dbo].[CARRERAS] ([IDCARRERA], [NOMCARRERA], [AGNOCREACION], [AGNOTERMINO], [IDESCUELA], [CODTIPCARRERA], [CODTIPPLAN], [CARCODMINISTERIO], [EMAIL], [CODDEMRE], [CODAREA], [REGACADAFECTA], [AGNOAFECTAINI]) VALUES (3, N'Ingeniería en Contrucción', 0, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 0)
INSERT [dbo].[CARRERAS] ([IDCARRERA], [NOMCARRERA], [AGNOCREACION], [AGNOTERMINO], [IDESCUELA], [CODTIPCARRERA], [CODTIPPLAN], [CARCODMINISTERIO], [EMAIL], [CODDEMRE], [CODAREA], [REGACADAFECTA], [AGNOAFECTAINI]) VALUES (4, N'Ingeniería Civil Electrónica', 0, 0, 4, 0, 0, 0, NULL, 0, 0, 0, 0)
INSERT [dbo].[CARRERAS] ([IDCARRERA], [NOMCARRERA], [AGNOCREACION], [AGNOTERMINO], [IDESCUELA], [CODTIPCARRERA], [CODTIPPLAN], [CARCODMINISTERIO], [EMAIL], [CODDEMRE], [CODAREA], [REGACADAFECTA], [AGNOAFECTAINI]) VALUES (5, N'Ingeniería Electrónica', 0, 0, 4, 0, 0, 0, NULL, 0, 0, 0, 0)
INSERT [dbo].[CARRERAS] ([IDCARRERA], [NOMCARRERA], [AGNOCREACION], [AGNOTERMINO], [IDESCUELA], [CODTIPCARRERA], [CODTIPPLAN], [CARCODMINISTERIO], [EMAIL], [CODDEMRE], [CODAREA], [REGACADAFECTA], [AGNOAFECTAINI]) VALUES (6, N'Ingeniería Mecánica ', 0, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 0)
INSERT [dbo].[CARRERAS] ([IDCARRERA], [NOMCARRERA], [AGNOCREACION], [AGNOTERMINO], [IDESCUELA], [CODTIPCARRERA], [CODTIPPLAN], [CARCODMINISTERIO], [EMAIL], [CODDEMRE], [CODAREA], [REGACADAFECTA], [AGNOAFECTAINI]) VALUES (7, N'Ingeniería Civil Mecánica', 0, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 0)
INSERT [dbo].[CARRERAS] ([IDCARRERA], [NOMCARRERA], [AGNOCREACION], [AGNOTERMINO], [IDESCUELA], [CODTIPCARRERA], [CODTIPPLAN], [CARCODMINISTERIO], [EMAIL], [CODDEMRE], [CODAREA], [REGACADAFECTA], [AGNOAFECTAINI]) VALUES (8, N'Ingeniería de Ejecución en Calefacción, Refrigeracón y Aire acondicionado', 0, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 0)
INSERT [dbo].[CARRERAS] ([IDCARRERA], [NOMCARRERA], [AGNOCREACION], [AGNOTERMINO], [IDESCUELA], [CODTIPCARRERA], [CODTIPPLAN], [CARCODMINISTERIO], [EMAIL], [CODDEMRE], [CODAREA], [REGACADAFECTA], [AGNOAFECTAINI]) VALUES (9, N'Ingeniería Civil Acústica', 0, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 0)
INSERT [dbo].[CARRERAS] ([IDCARRERA], [NOMCARRERA], [AGNOCREACION], [AGNOTERMINO], [IDESCUELA], [CODTIPCARRERA], [CODTIPPLAN], [CARCODMINISTERIO], [EMAIL], [CODDEMRE], [CODAREA], [REGACADAFECTA], [AGNOAFECTAINI]) VALUES (10, N'Ingeniería Acústica', 0, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 0)
INSERT [dbo].[CARRERAS] ([IDCARRERA], [NOMCARRERA], [AGNOCREACION], [AGNOTERMINO], [IDESCUELA], [CODTIPCARRERA], [CODTIPPLAN], [CARCODMINISTERIO], [EMAIL], [CODDEMRE], [CODAREA], [REGACADAFECTA], [AGNOAFECTAINI]) VALUES (11, N'Ingeniería Civil en Obras Civiles', 0, 0, 7, 0, 0, 0, NULL, 0, 0, 0, 0)
INSERT [dbo].[CARRERAS] ([IDCARRERA], [NOMCARRERA], [AGNOCREACION], [AGNOTERMINO], [IDESCUELA], [CODTIPCARRERA], [CODTIPPLAN], [CARCODMINISTERIO], [EMAIL], [CODDEMRE], [CODAREA], [REGACADAFECTA], [AGNOAFECTAINI]) VALUES (12, N'Ingeniería Civil en Informática', 0, 0, 8, 0, 0, 0, NULL, 0, 0, 0, 0)
INSERT [dbo].[CARRERAS] ([IDCARRERA], [NOMCARRERA], [AGNOCREACION], [AGNOTERMINO], [IDESCUELA], [CODTIPCARRERA], [CODTIPPLAN], [CARCODMINISTERIO], [EMAIL], [CODDEMRE], [CODAREA], [REGACADAFECTA], [AGNOAFECTAINI]) VALUES (13, N'Bachillerato en Ciencias de la ingeniería plan comun', 0, 0, 9, 0, 0, 0, NULL, 0, 0, 0, 0)
/****** Object:  StoredProcedure [dbo].[getUsuarios]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getUsuarios]
AS
BEGIN
	select Rut,usuarios.Nombre,ApPaterno,ApMaterno,Email, roles.Nombre  from USUARIOS, ROLES
	where roles.ID = usuarios.Rol
END
GO
/****** Object:  StoredProcedure [dbo].[getUsuarioByRut]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getUsuarioByRut]
	@Rut int
AS
BEGIN

	select Nombre,ApPaterno,ApMaterno,Email,Rol from USUARIOS where Rut = @Rut
END
GO
/****** Object:  StoredProcedure [dbo].[getEscuelaByFacultad]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getEscuelaByFacultad]

  @idFacultad smallint
AS
BEGIN

select IDESCUELA,NOMESCUELA from ESCUELAS where IDFACULTAD = @idFacultad
END
GO
/****** Object:  StoredProcedure [dbo].[getAsignatura]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getAsignatura]

AS
BEGIN

select IDASIGNATURA,NOMASIGNATURA,INSTITUTOS.NOMINSTITUTO from ASIGNATURAS,INSTITUTOS
where INSTITUTOS.IDINSTITUTO = ASIGNATURAS.IDINSTITUTO
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateUsuario]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateUsuario]
	-- Add the parameters for the stored procedure here
	@rut integer,
	@Nombre varchar(255),
	@ApPaterno varchar(255),
	@ApMaterno varchar(255),
	@email varchar(255),
	@rol integer
AS


BEGIN TRY
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   update USUARIOS set Nombre =@Nombre, ApPaterno= @ApPaterno, ApMaterno = @ApMaterno, Email = @email, Rol = @rol
   
   where Rut =@rut
   
	SELECT 1 as ErrorNumber,
			'Se ha actualizado el usuario con rut='+CONVERT(varchar(10), @Rut)+' exitosamente' AS ErrorMessage,
			getdate() as ErrorDate
END TRY
BEGIN CATCH
    SELECT  ERROR_NUMBER() AS ErrorNumber,
			ERROR_MESSAGE() AS ErrorMessage,
			getdate() as ErrorDate
END CATCH
GO
/****** Object:  Table [dbo].[PLANESTUDIO]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLANESTUDIO](
	[IDPLAN] [smallint] NOT NULL,
	[IDCARRERA] [int] NOT NULL,
	[PARASIGREG] [smallint] NOT NULL,
	[DURACION] [tinyint] NOT NULL,
	[AGNOINICIO] [smallint] NOT NULL,
	[AGNOTERMINO] [smallint] NOT NULL,
	[NOMTITULO] [varchar](200) NOT NULL,
	[NOMGRADO] [varchar](200) NOT NULL,
	[PLANMENSIRVE] [char](1) NOT NULL,
	[PLANREQGRA] [varchar](250) NOT NULL,
	[PLANREQTIT] [varchar](250) NOT NULL,
	[REGTIPO] [tinyint] NOT NULL,
	[PARCODTIT] [smallint] NOT NULL,
	[PLANNOMBACHICHERATO] [varchar](255) NOT NULL,
	[BACHILLERATO] [tinyint] NOT NULL,
	[PLANREQBACHILLERATO] [varchar](250) NOT NULL,
	[USACREDPLANOPT] [tinyint] NULL,
	[MINCREDPLANOPT] [smallint] NULL,
	[MAXCREDPLANOPT] [smallint] NULL,
 CONSTRAINT [PK_PLANESTUDIO] PRIMARY KEY CLUSTERED 
(
	[IDPLAN] ASC,
	[IDCARRERA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PLANESTUDIO] ([IDPLAN], [IDCARRERA], [PARASIGREG], [DURACION], [AGNOINICIO], [AGNOTERMINO], [NOMTITULO], [NOMGRADO], [PLANMENSIRVE], [PLANREQGRA], [PLANREQTIT], [REGTIPO], [PARCODTIT], [PLANNOMBACHICHERATO], [BACHILLERATO], [PLANREQBACHILLERATO], [USACREDPLANOPT], [MINCREDPLANOPT], [MAXCREDPLANOPT]) VALUES (2015, 11, 2, 0, 0, 0, N'algo', N'algo', N'0', N'algo', N'algo', 0, 0, N'algo', 0, N'0', 0, 0, 0)
INSERT [dbo].[PLANESTUDIO] ([IDPLAN], [IDCARRERA], [PARASIGREG], [DURACION], [AGNOINICIO], [AGNOTERMINO], [NOMTITULO], [NOMGRADO], [PLANMENSIRVE], [PLANREQGRA], [PLANREQTIT], [REGTIPO], [PARCODTIT], [PLANNOMBACHICHERATO], [BACHILLERATO], [PLANREQBACHILLERATO], [USACREDPLANOPT], [MINCREDPLANOPT], [MAXCREDPLANOPT]) VALUES (2015, 12, 2, 0, 0, 0, N'Ingeniero Civil en Informática', N'Bachiller en Ciencias de la Ingeniería. Licenciado en Ciencias de la Ingeniería', N'0', N'Bachiller en Ciencias de la Ingeniería: CUATRO PRIMEROS SEMESTRES', N'PLAN DE ESTUDIOS APROBADOS', 0, 0, N'Bachiller en Ciencias de la Ingeniería', 0, N'0', 0, 0, 0)
/****** Object:  StoredProcedure [dbo].[getCarreraByEscuela]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getCarreraByEscuela]
	@idEscuela smallint
AS
BEGIN
	select IDCARRERA,NOMCARRERA from CARRERAS where IDESCUELA = @idEscuela
END
GO
/****** Object:  StoredProcedure [dbo].[getCarreraByPlan]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getCarreraByPlan]
	@idPlan smallint
AS
BEGIN
	
	select PLANESTUDIO.IDCARRERA,CARRERAS.NOMCARRERA from PLANESTUDIO,CARRERAS
	where planestudio.IDPLAN = @idPlan and PLANESTUDIO.IDCARRERA = CARRERAS.IDCARRERA
END
GO
/****** Object:  StoredProcedure [dbo].[getPlan]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getPlan]
AS
BEGIN
	
	select DISTINCT  IDPLAN,IDPLAN from PLANESTUDIO
	
END
GO
/****** Object:  Table [dbo].[HISTORIAL_CURRICULAR]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HISTORIAL_CURRICULAR](
	[IDHISTORIALCURRICULAR] [smallint] IDENTITY(1,1) NOT NULL,
	[IDPLAN] [smallint] NULL,
	[IDCARRERA] [int] NULL,
	[FECHARESOLUCION] [date] NULL,
	[HITO] [varchar](30) NULL,
	[DESCRIPCIONCAMBIO] [varchar](255) NULL,
	[ANTES] [varchar](255) NULL,
	[DESPUES] [varchar](255) NULL,
 CONSTRAINT [PK_HISTORIAL_CURRICULAR] PRIMARY KEY CLUSTERED 
(
	[IDHISTORIALCURRICULAR] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[HISTORIAL_CURRICULAR] ON
INSERT [dbo].[HISTORIAL_CURRICULAR] ([IDHISTORIALCURRICULAR], [IDPLAN], [IDCARRERA], [FECHARESOLUCION], [HITO], [DESCRIPCIONCAMBIO], [ANTES], [DESPUES]) VALUES (192, 2015, 11, CAST(0x783A0B00 AS Date), N'Modificación mayor', N'cacaasdfasdf', N'ertasdfasdf', N'ert')
INSERT [dbo].[HISTORIAL_CURRICULAR] ([IDHISTORIALCURRICULAR], [IDPLAN], [IDCARRERA], [FECHARESOLUCION], [HITO], [DESCRIPCIONCAMBIO], [ANTES], [DESPUES]) VALUES (193, 2015, 12, CAST(0x783A0B00 AS Date), N'Modificación mayor', N'r', N'r', N'r')
INSERT [dbo].[HISTORIAL_CURRICULAR] ([IDHISTORIALCURRICULAR], [IDPLAN], [IDCARRERA], [FECHARESOLUCION], [HITO], [DESCRIPCIONCAMBIO], [ANTES], [DESPUES]) VALUES (194, 2015, 12, CAST(0x723A0B00 AS Date), N'Innovación curricular', N'y', N'yy', N'y')
INSERT [dbo].[HISTORIAL_CURRICULAR] ([IDHISTORIALCURRICULAR], [IDPLAN], [IDCARRERA], [FECHARESOLUCION], [HITO], [DESCRIPCIONCAMBIO], [ANTES], [DESPUES]) VALUES (195, 2015, 11, CAST(0x783A0B00 AS Date), N'Modificación menor', N'r', N'r', N'r')
INSERT [dbo].[HISTORIAL_CURRICULAR] ([IDHISTORIALCURRICULAR], [IDPLAN], [IDCARRERA], [FECHARESOLUCION], [HITO], [DESCRIPCIONCAMBIO], [ANTES], [DESPUES]) VALUES (196, 2015, 12, CAST(0x783A0B00 AS Date), N'Modificación mayor', N'h', N'h', N'h')
INSERT [dbo].[HISTORIAL_CURRICULAR] ([IDHISTORIALCURRICULAR], [IDPLAN], [IDCARRERA], [FECHARESOLUCION], [HITO], [DESCRIPCIONCAMBIO], [ANTES], [DESPUES]) VALUES (197, 2015, 11, CAST(0x783A0B00 AS Date), N'Modificación menor', N'r', N'r', N'r')
INSERT [dbo].[HISTORIAL_CURRICULAR] ([IDHISTORIALCURRICULAR], [IDPLAN], [IDCARRERA], [FECHARESOLUCION], [HITO], [DESCRIPCIONCAMBIO], [ANTES], [DESPUES]) VALUES (198, 2015, 12, CAST(0x723A0B00 AS Date), N'Modificación mayor', N'tete', N'tete', N'teete')
INSERT [dbo].[HISTORIAL_CURRICULAR] ([IDHISTORIALCURRICULAR], [IDPLAN], [IDCARRERA], [FECHARESOLUCION], [HITO], [DESCRIPCIONCAMBIO], [ANTES], [DESPUES]) VALUES (199, 2015, 11, CAST(0x7D3A0B00 AS Date), N'Innovación curricular', N'rer', N're', N'rew')
INSERT [dbo].[HISTORIAL_CURRICULAR] ([IDHISTORIALCURRICULAR], [IDPLAN], [IDCARRERA], [FECHARESOLUCION], [HITO], [DESCRIPCIONCAMBIO], [ANTES], [DESPUES]) VALUES (200, 2015, 11, CAST(0x7D3A0B00 AS Date), N'Modificación mayor', N'rewq', N'reqw', N'reqw')
INSERT [dbo].[HISTORIAL_CURRICULAR] ([IDHISTORIALCURRICULAR], [IDPLAN], [IDCARRERA], [FECHARESOLUCION], [HITO], [DESCRIPCIONCAMBIO], [ANTES], [DESPUES]) VALUES (201, 2015, 12, CAST(0x653A0B00 AS Date), N'Modificación mayor', N'qwer', N'qwer', N'qwer')
INSERT [dbo].[HISTORIAL_CURRICULAR] ([IDHISTORIALCURRICULAR], [IDPLAN], [IDCARRERA], [FECHARESOLUCION], [HITO], [DESCRIPCIONCAMBIO], [ANTES], [DESPUES]) VALUES (202, 2015, 12, CAST(0x653A0B00 AS Date), N'Modificación mayor', N'qwer', N'qwer', N'qwer')
INSERT [dbo].[HISTORIAL_CURRICULAR] ([IDHISTORIALCURRICULAR], [IDPLAN], [IDCARRERA], [FECHARESOLUCION], [HITO], [DESCRIPCIONCAMBIO], [ANTES], [DESPUES]) VALUES (203, 2015, 11, CAST(0x623A0B00 AS Date), N'Modificación mayor', N'qwer', N'qwer', N'qwer')
INSERT [dbo].[HISTORIAL_CURRICULAR] ([IDHISTORIALCURRICULAR], [IDPLAN], [IDCARRERA], [FECHARESOLUCION], [HITO], [DESCRIPCIONCAMBIO], [ANTES], [DESPUES]) VALUES (204, 2015, 11, CAST(0x6C3A0B00 AS Date), N'Modificación menor', N'qqwer', N'reqwr', N'qwe')
INSERT [dbo].[HISTORIAL_CURRICULAR] ([IDHISTORIALCURRICULAR], [IDPLAN], [IDCARRERA], [FECHARESOLUCION], [HITO], [DESCRIPCIONCAMBIO], [ANTES], [DESPUES]) VALUES (205, 2015, 12, CAST(0x7D3A0B00 AS Date), N'Modificación mayor', N'er', N're', N'qe')
INSERT [dbo].[HISTORIAL_CURRICULAR] ([IDHISTORIALCURRICULAR], [IDPLAN], [IDCARRERA], [FECHARESOLUCION], [HITO], [DESCRIPCIONCAMBIO], [ANTES], [DESPUES]) VALUES (206, 2015, 11, CAST(0x643A0B00 AS Date), N'Innovación curricular', N'qwer', N'werq', N'ewr')
INSERT [dbo].[HISTORIAL_CURRICULAR] ([IDHISTORIALCURRICULAR], [IDPLAN], [IDCARRERA], [FECHARESOLUCION], [HITO], [DESCRIPCIONCAMBIO], [ANTES], [DESPUES]) VALUES (207, 2015, 11, CAST(0x6A3A0B00 AS Date), N'Innovación curricular', N'asd', N'asd', N'asd')
INSERT [dbo].[HISTORIAL_CURRICULAR] ([IDHISTORIALCURRICULAR], [IDPLAN], [IDCARRERA], [FECHARESOLUCION], [HITO], [DESCRIPCIONCAMBIO], [ANTES], [DESPUES]) VALUES (208, 2015, 11, CAST(0x6A3A0B00 AS Date), N'Innovación curricular', N're', N're', N're')
SET IDENTITY_INSERT [dbo].[HISTORIAL_CURRICULAR] OFF
/****** Object:  Table [dbo].[PLAN_ASIGNATURA]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLAN_ASIGNATURA](
	[IDPLAN] [smallint] NOT NULL,
	[IDCARRERA] [int] NOT NULL,
	[IDASIGNATURA] [char](10) NOT NULL,
	[NIVELPLAN] [tinyint] NOT NULL,
	[TIPOPLAN] [char](1) NOT NULL,
	[ASIGSIRVEPLAN] [char](1) NOT NULL,
	[AFECTAPROM] [char](1) NOT NULL,
	[ASIGBACHILLERATO] [tinyint] NOT NULL,
 CONSTRAINT [PK_PLAN_ASIGNATURA] PRIMARY KEY CLUSTERED 
(
	[IDPLAN] ASC,
	[IDCARRERA] ASC,
	[IDASIGNATURA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'ADMI100   ', 5, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'BAIN009   ', 1, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'BAIN012   ', 1, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'BAIN017   ', 1, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'BAIN019   ', 1, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'BAIN036   ', 2, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'BAIN037   ', 2, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'BAIN038   ', 2, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'BAIN039   ', 2, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'BAIN041   ', 3, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'BAIN042   ', 3, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'BAIN043   ', 3, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'BAIN052   ', 4, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'BAIN053   ', 4, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'BAIN054   ', 4, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'CIDI100   ', 0, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'CIDI108   ', 9, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'DYRE060   ', 1, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'EICI245   ', 10, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'EICI246   ', 10, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'EICI247   ', 10, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'EICI255   ', 11, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'EICI261   ', 11, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'EICI297   ', 9, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'EICI298   ', 11, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'ELECT01   ', 4, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'ELECT20   ', 9, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'ELECT21   ', 11, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'ELECT22   ', 11, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'IECO102   ', 7, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO013   ', 1, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO015   ', 1, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO023   ', 2, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO025   ', 2, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO033   ', 3, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO035   ', 3, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO043   ', 3, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO045   ', 4, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO053   ', 4, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO163   ', 6, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO164   ', 5, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO165   ', 6, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO172   ', 5, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO173   ', 6, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO175   ', 5, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO182   ', 7, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO183   ', 6, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO184   ', 5, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO185   ', 7, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO189   ', 7, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO251   ', 9, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO252   ', 9, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO253   ', 11, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO261   ', 6, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO263   ', 7, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO264   ', 8, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO265   ', 6, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO266   ', 8, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO267   ', 10, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO268   ', 9, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO270   ', 7, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO271   ', 8, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO272   ', 8, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO273   ', 9, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO274   ', 10, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO275   ', 9, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO276   ', 10, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO281   ', 8, N'R', N'E', N'S', 0)
INSERT [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [NIVELPLAN], [TIPOPLAN], [ASIGSIRVEPLAN], [AFECTAPROM], [ASIGBACHILLERATO]) VALUES (2015, 12, N'INFO284   ', 8, N'R', N'E', N'S', 0)
/****** Object:  StoredProcedure [dbo].[UpdateHisotiral]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateHisotiral]
	@idHistorial smallint,
	@idPlan smallint,
	@idCarrera smallint,
	@fechaRes varchar(10),
	@hito varchar(30),
	@descripcion varchar(255),
	@antes varchar(255),
	@despues varchar(255)
AS

BEGIN TRY
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   update HISTORIAL_CURRICULAR set IDPLAN=@idPlan,IDCARRERA=@idCarrera, 
   FECHARESOLUCION=@fechaRes,HITO=@hito,DESCRIPCIONCAMBIO=@descripcion,ANTES=@antes,DESPUES=@despues
   where IDHISTORIALCURRICULAR =@idHistorial
   
	SELECT 1 as ErrorNumber,
			'Se ha actualizado el registro exitosamente' AS ErrorMessage,
			getdate() as ErrorDate
END TRY
BEGIN CATCH
    SELECT  ERROR_NUMBER() AS ErrorNumber,
			ERROR_MESSAGE() AS ErrorMessage,
			getdate() as ErrorDate
END CATCH
GO
/****** Object:  Table [dbo].[RESOLUCIONES]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RESOLUCIONES](
	[ID_RESOLUCION] [smallint] IDENTITY(1,1) NOT NULL,
	[IDHISTORIALCURRICULAR] [smallint] NULL,
	[NOMBRERESOLUCION] [varchar](50) NULL,
	[PATH_RESOLUCION] [varchar](200) NULL,
 CONSTRAINT [PK_RESOLUCIONES] PRIMARY KEY CLUSTERED 
(
	[ID_RESOLUCION] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[RESOLUCIONES] ON
INSERT [dbo].[RESOLUCIONES] ([ID_RESOLUCION], [IDHISTORIALCURRICULAR], [NOMBRERESOLUCION], [PATH_RESOLUCION]) VALUES (70, 192, N'MartinRivas.pdf', N'MartinRivas.pdf')
INSERT [dbo].[RESOLUCIONES] ([ID_RESOLUCION], [IDHISTORIALCURRICULAR], [NOMBRERESOLUCION], [PATH_RESOLUCION]) VALUES (71, 193, N'MartinRivas.pdf', N'MartinRivas.pdf')
INSERT [dbo].[RESOLUCIONES] ([ID_RESOLUCION], [IDHISTORIALCURRICULAR], [NOMBRERESOLUCION], [PATH_RESOLUCION]) VALUES (72, 194, N'MartinRivas.pdf', N'MartinRivas.pdf')
INSERT [dbo].[RESOLUCIONES] ([ID_RESOLUCION], [IDHISTORIALCURRICULAR], [NOMBRERESOLUCION], [PATH_RESOLUCION]) VALUES (73, 195, N'MartinRivas.pdf', N'MartinRivas.pdf')
INSERT [dbo].[RESOLUCIONES] ([ID_RESOLUCION], [IDHISTORIALCURRICULAR], [NOMBRERESOLUCION], [PATH_RESOLUCION]) VALUES (74, 196, N'MartinRivas.pdf', N'MartinRivas.pdf')
INSERT [dbo].[RESOLUCIONES] ([ID_RESOLUCION], [IDHISTORIALCURRICULAR], [NOMBRERESOLUCION], [PATH_RESOLUCION]) VALUES (75, 197, N'Becas_UACh.pdf', N'Becas_UACh.pdf')
INSERT [dbo].[RESOLUCIONES] ([ID_RESOLUCION], [IDHISTORIALCURRICULAR], [NOMBRERESOLUCION], [PATH_RESOLUCION]) VALUES (76, 197, N'Contrato_de_propiedad.pdf', N'Contrato_de_propiedad.pdf')
INSERT [dbo].[RESOLUCIONES] ([ID_RESOLUCION], [IDHISTORIALCURRICULAR], [NOMBRERESOLUCION], [PATH_RESOLUCION]) VALUES (77, 197, N'test_1.pdf', N'test_1.pdf')
INSERT [dbo].[RESOLUCIONES] ([ID_RESOLUCION], [IDHISTORIALCURRICULAR], [NOMBRERESOLUCION], [PATH_RESOLUCION]) VALUES (78, 197, N'Valdivia.pdf', N'Valdivia.pdf')
INSERT [dbo].[RESOLUCIONES] ([ID_RESOLUCION], [IDHISTORIALCURRICULAR], [NOMBRERESOLUCION], [PATH_RESOLUCION]) VALUES (79, 198, N'Monopoly(Spanish).pdf', N'Monopoly(Spanish).pdf')
INSERT [dbo].[RESOLUCIONES] ([ID_RESOLUCION], [IDHISTORIALCURRICULAR], [NOMBRERESOLUCION], [PATH_RESOLUCION]) VALUES (80, 198, N'test_1.pdf', N'test_1.pdf')
INSERT [dbo].[RESOLUCIONES] ([ID_RESOLUCION], [IDHISTORIALCURRICULAR], [NOMBRERESOLUCION], [PATH_RESOLUCION]) VALUES (81, 199, N'test_1.pdf', N'test_1.pdf')
INSERT [dbo].[RESOLUCIONES] ([ID_RESOLUCION], [IDHISTORIALCURRICULAR], [NOMBRERESOLUCION], [PATH_RESOLUCION]) VALUES (82, 199, N'Valdivia.pdf', N'Valdivia.pdf')
INSERT [dbo].[RESOLUCIONES] ([ID_RESOLUCION], [IDHISTORIALCURRICULAR], [NOMBRERESOLUCION], [PATH_RESOLUCION]) VALUES (83, 200, N'Valdivia.pdf', N'Valdivia.pdf')
INSERT [dbo].[RESOLUCIONES] ([ID_RESOLUCION], [IDHISTORIALCURRICULAR], [NOMBRERESOLUCION], [PATH_RESOLUCION]) VALUES (84, 202, N'test_1.pdf', N'test_1.pdf')
INSERT [dbo].[RESOLUCIONES] ([ID_RESOLUCION], [IDHISTORIALCURRICULAR], [NOMBRERESOLUCION], [PATH_RESOLUCION]) VALUES (85, 203, N'test_1.pdf', N'test_1.pdf')
INSERT [dbo].[RESOLUCIONES] ([ID_RESOLUCION], [IDHISTORIALCURRICULAR], [NOMBRERESOLUCION], [PATH_RESOLUCION]) VALUES (86, 204, N'Monopoly(Spanish).pdf', N'Monopoly(Spanish).pdf')
INSERT [dbo].[RESOLUCIONES] ([ID_RESOLUCION], [IDHISTORIALCURRICULAR], [NOMBRERESOLUCION], [PATH_RESOLUCION]) VALUES (87, 207, N'Valdivia.pdf', N'Valdivia.pdf')
INSERT [dbo].[RESOLUCIONES] ([ID_RESOLUCION], [IDHISTORIALCURRICULAR], [NOMBRERESOLUCION], [PATH_RESOLUCION]) VALUES (88, 208, N'test_1.pdf', N'test_1.pdf')
INSERT [dbo].[RESOLUCIONES] ([ID_RESOLUCION], [IDHISTORIALCURRICULAR], [NOMBRERESOLUCION], [PATH_RESOLUCION]) VALUES (89, 208, N'Valdivia.pdf', N'Valdivia.pdf')
SET IDENTITY_INSERT [dbo].[RESOLUCIONES] OFF
/****** Object:  Table [dbo].[PLAN_ASIG_REQUISITOS]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLAN_ASIG_REQUISITOS](
	[IDPLAN] [smallint] NOT NULL,
	[IDCARRERA] [int] NOT NULL,
	[IDASIGNATURA] [char](10) NOT NULL,
	[IDASIGNATURAREQ] [char](10) NOT NULL,
	[NIVEL] [tinyint] NOT NULL,
	[NIVELREQ] [tinyint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'BAIN036   ', N'BAIN017 . ', 2, 1)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'BAIN037   ', N'BAIN017   ', 2, 1)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'BAIN038   ', N'BAIN017   ', 2, 1)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'BAIN038   ', N'BAIN012   ', 2, 1)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO023   ', N'INFO013   ', 2, 1)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO025   ', N'BAIN017   ', 2, 1)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO025   ', N'BAIN012   ', 2, 1)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO025   ', N'INFO015   ', 2, 1)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'BAIN041   ', N'BAIN037   ', 3, 2)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'BAIN042   ', N'BAIN037   ', 3, 2)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'BAIN043   ', N'BAIN037   ', 3, 2)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'BAIN043   ', N'BAIN038   ', 3, 2)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO033   ', N'INFO023   ', 3, 2)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO035   ', N'INFO025   ', 3, 2)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO043   ', N'BAIN036   ', 3, 2)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO043   ', N'INFO013   ', 3, 1)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'BAIN052   ', N'BAIN036   ', 4, 2)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'BAIN054   ', N'BAIN042   ', 4, 3)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'BAIN054   ', N'BAIN041   ', 4, 3)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO045   ', N'INFO045   ', 4, 3)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO045   ', N'BAIN041   ', 4, 3)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO045   ', N'INFO035   ', 4, 3)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO053   ', N'INFO043   ', 4, 3)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO053   ', N'INFO035   ', 4, 3)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'BAIN053   ', N'BAIN041   ', 4, 3)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'ADMI100   ', N'BAIN009   ', 5, 1)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO164   ', N'INFO053   ', 5, 4)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'ADMI100   ', N'INFO035   ', 5, 3)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO172   ', N'BAIN036   ', 5, 2)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO175   ', N'INFO053   ', 5, 4)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO175   ', N'INFO035   ', 5, 3)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO184   ', N'BAIN037   ', 5, 2)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO184   ', N'BAIN038   ', 5, 2)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO184   ', N'BAIN019   ', 5, 1)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO163   ', N'INFO053   ', 6, 4)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO165   ', N'INFO164   ', 6, 5)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO173   ', N'BAIN042   ', 6, 3)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO173   ', N'BAIN052   ', 6, 4)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO173   ', N'INFO172   ', 6, 5)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO183   ', N'INFO184   ', 6, 5)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO183   ', N'BAIN041   ', 6, 3)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO261   ', N'INFO164   ', 6, 5)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO265   ', N'INFO053   ', 6, 4)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO265   ', N'INFO035   ', 6, 3)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'IECO102   ', N'BAIN042   ', 7, 3)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'IECO102   ', N'INFO035   ', 7, 3)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO182   ', N'INFO163   ', 7, 6)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO185   ', N'INFO184   ', 7, 5)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO185   ', N'BAIN042   ', 7, 3)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO185   ', N'BAIN052   ', 7, 4)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO189   ', N'INFO183   ', 7, 6)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO189   ', N'BAIN043   ', 7, 3)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO189   ', N'BAIN053   ', 7, 4)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO189   ', N'INFO045   ', 7, 4)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO263   ', N'ADMI100   ', 7, 5)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO263   ', N'INFO175   ', 7, 5)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO175   ', N'INFO164   ', 7, 5)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO264   ', N'INFO261   ', 8, 6)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO264   ', N'INFO263   ', 8, 7)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO264   ', N'INFO035   ', 8, 3)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO266   ', N'INFO263   ', 8, 7)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO271   ', N'ADMI100   ', 8, 5)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO271   ', N'IECO102   ', 8, 7)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO271   ', N'INFO270   ', 8, 7)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO272   ', N'IECO102   ', 8, 7)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO272   ', N'INFO173   ', 8, 6)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO281   ', N'INFO185   ', 8, 7)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO281   ', N'INFO182   ', 8, 7)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO284   ', N'INFO183   ', 8, 6)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO284   ', N'BAIN054   ', 8, 3)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO284   ', N'INFO175   ', 8, 5)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'EICI297   ', N'INFO272   ', 9, 8)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'EICI297   ', N'INFO266   ', 9, 8)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'EICI297   ', N'EICI297   ', 9, 8)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'EICI297   ', N'INFO271   ', 9, 8)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'EICI297   ', N'INFO284   ', 9, 8)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'EICI297   ', N'INFO264   ', 9, 8)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO251   ', N'INFO272   ', 9, 8)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO251   ', N'INFO281   ', 9, 8)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO251   ', N'INFO264   ', 9, 8)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO252   ', N'INFO272   ', 9, 8)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO252   ', N'INFO271   ', 9, 8)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO252   ', N'INFO264   ', 9, 8)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO268   ', N'INFO264   ', 9, 8)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO273   ', N'INFO173   ', 9, 6)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO273   ', N'INFO281   ', 9, 8)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO273   ', N'INFO182   ', 9, 7)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO275   ', N'ADMI100   ', 9, 5)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO275   ', N'INFO270   ', 9, 7)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'INFO275   ', N'INFO272   ', 9, 8)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'EICI245   ', N'INFO266   ', 10, 0)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'EICI245   ', N'INFO281   ', 10, 0)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'EICI245   ', N'INFO284   ', 10, 0)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'EICI245   ', N'INFO189   ', 10, 0)
INSERT [dbo].[PLAN_ASIG_REQUISITOS] ([IDPLAN], [IDCARRERA], [IDASIGNATURA], [IDASIGNATURAREQ], [NIVEL], [NIVELREQ]) VALUES (2015, 12, N'EICI245   ', N'INFO264   ', 10, 0)
/****** Object:  Table [dbo].[ASIGNATURAS_HISTORIAL]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ASIGNATURAS_HISTORIAL](
	[IDHISTORIALCURRICULAR] [smallint] NOT NULL,
	[IDASIGNATURA] [char](10) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ASIGNATURAS_HISTORIAL] ([IDHISTORIALCURRICULAR], [IDASIGNATURA]) VALUES (192, N'IDMI031   ')
INSERT [dbo].[ASIGNATURAS_HISTORIAL] ([IDHISTORIALCURRICULAR], [IDASIGNATURA]) VALUES (198, N'DMIB041   ')
INSERT [dbo].[ASIGNATURAS_HISTORIAL] ([IDHISTORIALCURRICULAR], [IDASIGNATURA]) VALUES (198, N'INFO025   ')
INSERT [dbo].[ASIGNATURAS_HISTORIAL] ([IDHISTORIALCURRICULAR], [IDASIGNATURA]) VALUES (198, N'INFO033   ')
INSERT [dbo].[ASIGNATURAS_HISTORIAL] ([IDHISTORIALCURRICULAR], [IDASIGNATURA]) VALUES (199, N'INFO012   ')
INSERT [dbo].[ASIGNATURAS_HISTORIAL] ([IDHISTORIALCURRICULAR], [IDASIGNATURA]) VALUES (200, N'INFO023   ')
INSERT [dbo].[ASIGNATURAS_HISTORIAL] ([IDHISTORIALCURRICULAR], [IDASIGNATURA]) VALUES (201, N'INFO013   ')
INSERT [dbo].[ASIGNATURAS_HISTORIAL] ([IDHISTORIALCURRICULAR], [IDASIGNATURA]) VALUES (202, N'INFO013   ')
INSERT [dbo].[ASIGNATURAS_HISTORIAL] ([IDHISTORIALCURRICULAR], [IDASIGNATURA]) VALUES (202, N'INFO015   ')
INSERT [dbo].[ASIGNATURAS_HISTORIAL] ([IDHISTORIALCURRICULAR], [IDASIGNATURA]) VALUES (203, N'INFO013   ')
INSERT [dbo].[ASIGNATURAS_HISTORIAL] ([IDHISTORIALCURRICULAR], [IDASIGNATURA]) VALUES (204, N'INFO013   ')
INSERT [dbo].[ASIGNATURAS_HISTORIAL] ([IDHISTORIALCURRICULAR], [IDASIGNATURA]) VALUES (205, N'INFO012   ')
INSERT [dbo].[ASIGNATURAS_HISTORIAL] ([IDHISTORIALCURRICULAR], [IDASIGNATURA]) VALUES (206, N'INFO012   ')
INSERT [dbo].[ASIGNATURAS_HISTORIAL] ([IDHISTORIALCURRICULAR], [IDASIGNATURA]) VALUES (207, N'INFO013   ')
INSERT [dbo].[ASIGNATURAS_HISTORIAL] ([IDHISTORIALCURRICULAR], [IDASIGNATURA]) VALUES (192, N'INFO013   ')
INSERT [dbo].[ASIGNATURAS_HISTORIAL] ([IDHISTORIALCURRICULAR], [IDASIGNATURA]) VALUES (201, N'INFO015   ')
INSERT [dbo].[ASIGNATURAS_HISTORIAL] ([IDHISTORIALCURRICULAR], [IDASIGNATURA]) VALUES (208, N'INFO013   ')
INSERT [dbo].[ASIGNATURAS_HISTORIAL] ([IDHISTORIALCURRICULAR], [IDASIGNATURA]) VALUES (208, N'INFO025   ')
INSERT [dbo].[ASIGNATURAS_HISTORIAL] ([IDHISTORIALCURRICULAR], [IDASIGNATURA]) VALUES (208, N'INFO035   ')
INSERT [dbo].[ASIGNATURAS_HISTORIAL] ([IDHISTORIALCURRICULAR], [IDASIGNATURA]) VALUES (193, N'IDMI031   ')
INSERT [dbo].[ASIGNATURAS_HISTORIAL] ([IDHISTORIALCURRICULAR], [IDASIGNATURA]) VALUES (196, N'IDMI031   ')
INSERT [dbo].[ASIGNATURAS_HISTORIAL] ([IDHISTORIALCURRICULAR], [IDASIGNATURA]) VALUES (192, N'INFO023   ')
/****** Object:  StoredProcedure [dbo].[delHistorial]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delHistorial]
	-- Add the parameters for the stored procedure here
	@idHistorial smallint
AS
BEGIN TRY
delete from HISTORIAL_CURRICULAR where IDHISTORIALCURRICULAR = @idHistorial
	
	SELECT 1 as ErrorNumber,
			'Se ha eliminado el registro con id='+CONVERT(varchar(10), @idHistorial)+' exitosamente' AS ErrorMessage,
			getdate() as ErrorDate
END TRY
BEGIN CATCH
    SELECT  ERROR_NUMBER() AS ErrorNumber,
			ERROR_MESSAGE() AS ErrorMessage,
			getdate() as ErrorDate
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[getHistorialById]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getHistorialById] 

	@idHistorial smallint
AS
BEGIN
	
	select IDHISTORIALCURRICULAR,IDPLAN,IDCARRERA,FECHARESOLUCION,HITO,DESCRIPCIONCAMBIO,ANTES,DESPUES from HISTORIAL_CURRICULAR where IDHISTORIALCURRICULAR = @idHistorial
END
GO
/****** Object:  StoredProcedure [dbo].[getHistorialByCarrera]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getHistorialByCarrera]
	@idCarrera smallint
AS
BEGIN
	select * from HISTORIAL_CURRICULAR where IDCARRERA = @idCarrera
END
GO
/****** Object:  StoredProcedure [dbo].[setHistorial]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[setHistorial]
	@idPlan smallint,
	@idCarrera smallint,
	@fechaResolucion varchar(15),
	@hito varchar(30),
	@descripcion varchar(45),
	@antes varchar(200),
	@despues varchar(200)
	
AS
BEGIN TRY
    insert into HISTORIAL_CURRICULAR values (@idPlan,@idCarrera,@fechaResolucion,@hito,@descripcion,@antes,@despues)

	SELECT SCOPE_IDENTITY() as ErrorNumber,
			'Se ha guardado el registro con id= '+CONVERT(varchar(10), SCOPE_IDENTITY())+' exitosamente' AS ErrorMessage,
			getdate() as ErrorDate
END TRY
BEGIN CATCH
    SELECT  ERROR_NUMBER() AS ErrorNumber,
			ERROR_MESSAGE() AS ErrorMessage,
			getdate() as ErrorDate
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[setAsignaturaByHistorial]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[setAsignaturaByHistorial]
	@idHistorial smallint,
	@idAsignatura varchar(20)
AS

BEGIN TRY
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    insert ASIGNATURAS_HISTORIAL values(@idHistorial,@idAsignatura);
	SELECT 1 as ErrorNumber,
			'Se ha guardado la asignatura con código ='+@idAsignatura+'exitosamente' AS ErrorMessage,
			getdate() as ErrorDate
END TRY
BEGIN CATCH
    SELECT  ERROR_NUMBER() AS ErrorNumber,
			ERROR_MESSAGE() AS ErrorMessage,
			getdate() as ErrorDate
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[setResolucionByHistorial]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[setResolucionByHistorial]
	@idHistorial smallint,
	@nomResolucion varchar(200),
	@pathResolucion varchar(200)
	
	
AS
BEGIN TRY
	set nocount on;
	insert into RESOLUCIONES values(@idHistorial,@nomResolucion,@pathResolucion);
	
	SELECT 1 as ErrorNumber,
			'Se ha guardado la resolucion con id= '+CONVERT(varchar(10), SCOPE_IDENTITY())+' exitosamente' AS ErrorMessage,
			getdate() as ErrorDate
END TRY
BEGIN CATCH
    SELECT  ERROR_NUMBER() AS ErrorNumber,
			ERROR_MESSAGE() AS ErrorMessage,
			getdate() as ErrorDate
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[getResolucionByHistorial]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getResolucionByHistorial]
@idHistorial smallint
AS
BEGIN

	select ID_RESOLUCION,NOMBRERESOLUCION,PATH_RESOLUCION
	from RESOLUCIONES
	where IDHISTORIALCURRICULAR=@idHistorial
END
GO
/****** Object:  StoredProcedure [dbo].[getDetalleResoluciones]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getDetalleResoluciones]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
   select 
		HISTORIAL_CURRICULAR.IDHISTORIALCURRICULAR,
		HISTORIAL_CURRICULAR.IDPLAN,
		FACULTAD.NOMFACULTAD,
		ESCUELAS.NOMESCUELA, 
		CARRERAS.NOMCARRERA, 
		HISTORIAL_CURRICULAR.HITO, 
		RESOLUCIONES.NOMBRERESOLUCION,
		RESOLUCIONES.PATH_RESOLUCION
		
		
   from HISTORIAL_CURRICULAR, 
		RESOLUCIONES,
		CARRERAS,
		FACULTAD,
		ESCUELAS
   
   where 
		FACULTAD.IDFACULTAD = ESCUELAS.IDFACULTAD and
		escuelas.IDESCUELA = CARRERAS.IDESCUELA and
		CARRERAS.IDCARRERA = HISTORIAL_CURRICULAR.IDCARRERA and
		resoluciones.IDHISTORIALCURRICULAR = HISTORIAL_CURRICULAR.IDHISTORIALCURRICULAR
END
GO
/****** Object:  StoredProcedure [dbo].[getAsignaturasByHistorial]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getAsignaturasByHistorial]
	@idHistorial smallint
AS
BEGIN
	
	select ASIGNATURAS.IDASIGNATURA, ASIGNATURAS.NOMASIGNATURA
	 from ASIGNATURAS_HISTORIAL,ASIGNATURAS 
	 where IDHISTORIALCURRICULAR = @idHistorial and 
	 ASIGNATURAS.IDASIGNATURA = ASIGNATURAS_HISTORIAL.IDASIGNATURA
END
GO
/****** Object:  StoredProcedure [dbo].[delAsignaturasByHistorial]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delAsignaturasByHistorial]
	-- Add the parameters for the stored procedure here
	@idHistorial smallint
AS
BEGIN TRY

select  1 as ErrorNumber,
			'Se ha eliminado la asignatura '+IDASIGNATURA+' exitosamente' AS ErrorMessage,
			getdate() as ErrorDate
from ASIGNATURAS_HISTORIAL 
where IDHISTORIALCURRICULAR = @idHistorial

delete from ASIGNATURAS_HISTORIAL where IDHISTORIALCURRICULAR = @idHistorial

END TRY
BEGIN CATCH
    SELECT  ERROR_NUMBER() AS ErrorNumber,
			ERROR_MESSAGE() AS ErrorMessage,
			getdate() as ErrorDate
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[delResolucionByHistorial]    Script Date: 09/29/2015 18:05:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delResolucionByHistorial]
	-- Add the parameters for the stored procedure here
	@idHistorial smallint
AS
BEGIN TRY
select  1 as ErrorNumber,
			'Se ha eliminado la resolucion '+NOMBRERESOLUCION+' exitosamente' AS ErrorMessage,
			getdate() as ErrorDate
from RESOLUCIONES 
where IDHISTORIALCURRICULAR = @idHistorial

DELETE FROM RESOLUCIONES where IDHISTORIALCURRICULAR = @idHistorial

END TRY
BEGIN CATCH
    SELECT  ERROR_NUMBER() AS ErrorNumber,
			ERROR_MESSAGE() AS ErrorMessage,
			getdate() as ErrorDate
END CATCH
GO
/****** Object:  Default [DF__FACULTAD__IDFACU__25869641]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[FACULTAD] ADD  DEFAULT ((0)) FOR [IDFACULTAD]
GO
/****** Object:  Default [DF__FACULTAD__CAMCOD__267ABA7A]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[FACULTAD] ADD  DEFAULT ((0)) FOR [CAMCODIGO]
GO
/****** Object:  Default [DF__FACULTAD__AGNOCR__276EDEB3]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[FACULTAD] ADD  DEFAULT ((0)) FOR [AGNOCREACION]
GO
/****** Object:  Default [DF__FACULTAD__AGNOTE__286302EC]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[FACULTAD] ADD  DEFAULT ((0)) FOR [AGNOTERMINO]
GO
/****** Object:  Default [DF__INSTITUTO__IDINS__29572725]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[INSTITUTOS] ADD  DEFAULT ((0)) FOR [IDINSTITUTO]
GO
/****** Object:  Default [DF__INSTITUTO__AGNOC__2A4B4B5E]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[INSTITUTOS] ADD  DEFAULT ((0)) FOR [AGNOCREACION]
GO
/****** Object:  Default [DF__INSTITUTO__AGNOT__2B3F6F97]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[INSTITUTOS] ADD  DEFAULT ((0)) FOR [AGNOTERMINO]
GO
/****** Object:  Default [DF__INSTITUTO__CAMCO__2C3393D0]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[INSTITUTOS] ADD  DEFAULT ((0)) FOR [CAMCODIGO]
GO
/****** Object:  Default [DF__INSTITUTO__IDFAC__2D27B809]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[INSTITUTOS] ADD  DEFAULT ((0)) FOR [IDFACTULTAD]
GO
/****** Object:  Default [DF__INSTITUTO__TIPOI__2E1BDC42]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[INSTITUTOS] ADD  DEFAULT ('I') FOR [TIPOINSTITUTO]
GO
/****** Object:  Default [DF__REGISTRO__idObje__1AD3FDA4]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[REGISTRO] ADD  DEFAULT ((0)) FOR [idObjetos]
GO
/****** Object:  Default [DF__ASIGNATUR__PARAS__2F10007B]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [PARASIGTIPO]
GO
/****** Object:  Default [DF__ASIGNATUR__AGNOI__300424B4]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [AGNOINICIO]
GO
/****** Object:  Default [DF__ASIGNATUR__AGNOT__30F848ED]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [AGNOTERMINO]
GO
/****** Object:  Default [DF__ASIGNATUR__PARAS__31EC6D26]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [PARASIGREG]
GO
/****** Object:  Default [DF__ASIGNATUR__IDINS__32E0915F]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [IDINSTITUTO]
GO
/****** Object:  Default [DF__ASIGNATUR__TIPOA__33D4B598]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ('I') FOR [TIPOASIGNATURA]
GO
/****** Object:  Default [DF__ASIGNATUR__CREDI__34C8D9D1]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [CREDITOS]
GO
/****** Object:  Default [DF__ASIGNATUR__PARAS__35BCFE0A]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [PARASIGTIPASIG]
GO
/****** Object:  Default [DF__ASIGNATUR__HORAS__36B12243]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [HORASTEORICAS]
GO
/****** Object:  Default [DF__ASIGNATUR__HORAS__37A5467C]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [HORASPRACTICAS]
GO
/****** Object:  Default [DF__ASIGNATUR__PARTI__38996AB5]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [PARTIPOAPRENDIZAJE]
GO
/****** Object:  Default [DF__ASIGNATUR__NIVEL__398D8EEE]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [NIVELCODIGO]
GO
/****** Object:  Default [DF__ASIGNATUR__CREDI__3A81B327]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [CREDITOSTRANSFERIBLES]
GO
/****** Object:  Default [DF__ASIGNATUR__HORAS__3B75D760]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [HORASNOPRESENCIALES]
GO
/****** Object:  Default [DF__ASIGNATUR__USAUA__3C69FB99]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [USAUAPRENDIZAJE]
GO
/****** Object:  Default [DF__ASIGNATUR__REGIN__3D5E1FD2]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [REGINTERNO]
GO
/****** Object:  Default [DF__ESCUELAS__IDESCU__3E52440B]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[ESCUELAS] ADD  DEFAULT ((0)) FOR [IDESCUELA]
GO
/****** Object:  Default [DF__ESCUELAS__AGNOCR__3F466844]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[ESCUELAS] ADD  DEFAULT ((0)) FOR [AGNOCREACION]
GO
/****** Object:  Default [DF__ESCUELAS__AGNOTE__403A8C7D]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[ESCUELAS] ADD  DEFAULT ((0)) FOR [AGNOTERMINO]
GO
/****** Object:  Default [DF__ESCUELAS__CAMCOD__412EB0B6]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[ESCUELAS] ADD  DEFAULT ((0)) FOR [CAMCODIGO]
GO
/****** Object:  Default [DF__ESCUELAS__IDFACU__4222D4EF]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[ESCUELAS] ADD  DEFAULT ((0)) FOR [IDFACULTAD]
GO
/****** Object:  Default [DF__ESCUELAS__TIPOES__4316F928]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[ESCUELAS] ADD  DEFAULT ('C') FOR [TIPOESCUELA]
GO
/****** Object:  Default [DF__ESCUELAS__COMCOD__440B1D61]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[ESCUELAS] ADD  DEFAULT ((0)) FOR [COMCODIGO]
GO
/****** Object:  Default [DF__CARRERAS__IDCARR__44FF419A]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[CARRERAS] ADD  DEFAULT ((0)) FOR [IDCARRERA]
GO
/****** Object:  Default [DF__CARRERAS__AGNOCR__45F365D3]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[CARRERAS] ADD  DEFAULT ((0)) FOR [AGNOCREACION]
GO
/****** Object:  Default [DF__CARRERAS__AGNOTE__46E78A0C]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[CARRERAS] ADD  DEFAULT ((0)) FOR [AGNOTERMINO]
GO
/****** Object:  Default [DF__CARRERAS__IDESCU__47DBAE45]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[CARRERAS] ADD  DEFAULT ((0)) FOR [IDESCUELA]
GO
/****** Object:  Default [DF__CARRERAS__CODTIP__48CFD27E]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[CARRERAS] ADD  DEFAULT ((0)) FOR [CODTIPCARRERA]
GO
/****** Object:  Default [DF__CARRERAS__CODTIP__49C3F6B7]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[CARRERAS] ADD  DEFAULT ((0)) FOR [CODTIPPLAN]
GO
/****** Object:  Default [DF__CARRERAS__CARCOD__4AB81AF0]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[CARRERAS] ADD  DEFAULT ((0)) FOR [CARCODMINISTERIO]
GO
/****** Object:  Default [DF__CARRERAS__CODDEM__4BAC3F29]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[CARRERAS] ADD  DEFAULT ((0)) FOR [CODDEMRE]
GO
/****** Object:  Default [DF__CARRERAS__CODARE__4CA06362]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[CARRERAS] ADD  DEFAULT ((0)) FOR [CODAREA]
GO
/****** Object:  Default [DF__CARRERAS__REGACA__4D94879B]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[CARRERAS] ADD  DEFAULT ((0)) FOR [REGACADAFECTA]
GO
/****** Object:  Default [DF__CARRERAS__AGNOAF__4E88ABD4]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[CARRERAS] ADD  DEFAULT ((0)) FOR [AGNOAFECTAINI]
GO
/****** Object:  Default [DF__PLANESTUD__IDPLA__4F7CD00D]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((0)) FOR [IDPLAN]
GO
/****** Object:  Default [DF__PLANESTUD__IDCAR__5070F446]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((0)) FOR [IDCARRERA]
GO
/****** Object:  Default [DF__PLANESTUD__PARAS__5165187F]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((2)) FOR [PARASIGREG]
GO
/****** Object:  Default [DF__PLANESTUD__DURAC__52593CB8]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((0)) FOR [DURACION]
GO
/****** Object:  Default [DF__PLANESTUD__AGNOI__534D60F1]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((0)) FOR [AGNOINICIO]
GO
/****** Object:  Default [DF__PLANESTUD__AGNOT__5441852A]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((0)) FOR [AGNOTERMINO]
GO
/****** Object:  Default [DF__PLANESTUD__REGTI__5535A963]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((0)) FOR [REGTIPO]
GO
/****** Object:  Default [DF__PLANESTUD__PARCO__5629CD9C]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((0)) FOR [PARCODTIT]
GO
/****** Object:  Default [DF__PLANESTUD__BACHI__571DF1D5]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((0)) FOR [BACHILLERATO]
GO
/****** Object:  Default [DF__PLANESTUD__USACR__5812160E]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((0)) FOR [USACREDPLANOPT]
GO
/****** Object:  Default [DF__PLANESTUD__MINCR__59063A47]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((0)) FOR [MINCREDPLANOPT]
GO
/****** Object:  Default [DF__PLANESTUD__MAXCR__59FA5E80]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((0)) FOR [MAXCREDPLANOPT]
GO
/****** Object:  Default [DF__HISTORIAL__IDPLA__60A75C0F]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[HISTORIAL_CURRICULAR] ADD  DEFAULT ((0)) FOR [IDPLAN]
GO
/****** Object:  Default [DF__HISTORIAL__IDCAR__619B8048]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[HISTORIAL_CURRICULAR] ADD  DEFAULT ((0)) FOR [IDCARRERA]
GO
/****** Object:  Default [DF__PLAN_ASIG__IDPLA__5AEE82B9]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLAN_ASIGNATURA] ADD  DEFAULT ((0)) FOR [IDPLAN]
GO
/****** Object:  Default [DF__PLAN_ASIG__NIVEL__5BE2A6F2]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLAN_ASIGNATURA] ADD  DEFAULT ((0)) FOR [NIVELPLAN]
GO
/****** Object:  Default [DF__PLAN_ASIG__TIPOP__5CD6CB2B]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLAN_ASIGNATURA] ADD  DEFAULT ('R') FOR [TIPOPLAN]
GO
/****** Object:  Default [DF__PLAN_ASIG__ASIGS__5DCAEF64]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLAN_ASIGNATURA] ADD  DEFAULT ('E') FOR [ASIGSIRVEPLAN]
GO
/****** Object:  Default [DF__PLAN_ASIG__AFECT__5EBF139D]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLAN_ASIGNATURA] ADD  DEFAULT ('S') FOR [AFECTAPROM]
GO
/****** Object:  Default [DF__PLAN_ASIG__ASIGB__5FB337D6]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLAN_ASIGNATURA] ADD  DEFAULT ((0)) FOR [ASIGBACHILLERATO]
GO
/****** Object:  Default [DF__PLAN_ASIG__IDPLA__628FA481]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLAN_ASIG_REQUISITOS] ADD  DEFAULT ((0)) FOR [IDPLAN]
GO
/****** Object:  Default [DF__PLAN_ASIG__IDCAR__6383C8BA]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLAN_ASIG_REQUISITOS] ADD  DEFAULT ((0)) FOR [IDCARRERA]
GO
/****** Object:  Default [DF__PLAN_ASIG__NIVEL__6477ECF3]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLAN_ASIG_REQUISITOS] ADD  DEFAULT ((0)) FOR [NIVEL]
GO
/****** Object:  Default [DF__PLAN_ASIG__NIVEL__656C112C]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLAN_ASIG_REQUISITOS] ADD  DEFAULT ((0)) FOR [NIVELREQ]
GO
/****** Object:  ForeignKey [FK__USUARIOS__Rol__7E37BEF6]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[USUARIOS]  WITH CHECK ADD FOREIGN KEY([Rol])
REFERENCES [dbo].[ROLES] ([ID])
GO
/****** Object:  ForeignKey [FK_USUARIOS_USUARIOS]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[USUARIOS]  WITH CHECK ADD  CONSTRAINT [FK_USUARIOS_USUARIOS] FOREIGN KEY([Rut])
REFERENCES [dbo].[USUARIOS] ([Rut])
GO
ALTER TABLE [dbo].[USUARIOS] CHECK CONSTRAINT [FK_USUARIOS_USUARIOS]
GO
/****** Object:  ForeignKey [FK_ASIGNATU_REFERENCE_INSTITUT]    Script Date: 09/29/2015 18:04:59 ******/
ALTER TABLE [dbo].[ASIGNATURAS]  WITH CHECK ADD  CONSTRAINT [FK_ASIGNATU_REFERENCE_INSTITUT] FOREIGN KEY([IDINSTITUTO])
REFERENCES [dbo].[INSTITUTOS] ([IDINSTITUTO])
GO
ALTER TABLE [dbo].[ASIGNATURAS] CHECK CONSTRAINT [FK_ASIGNATU_REFERENCE_INSTITUT]
GO
/****** Object:  ForeignKey [FK_ESCUELAS_REFERENCE_FACULTAD]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[ESCUELAS]  WITH CHECK ADD  CONSTRAINT [FK_ESCUELAS_REFERENCE_FACULTAD] FOREIGN KEY([IDFACULTAD])
REFERENCES [dbo].[FACULTAD] ([IDFACULTAD])
GO
ALTER TABLE [dbo].[ESCUELAS] CHECK CONSTRAINT [FK_ESCUELAS_REFERENCE_FACULTAD]
GO
/****** Object:  ForeignKey [FK_CARRERAS_REFERENCE_ESCUELAS]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[CARRERAS]  WITH CHECK ADD  CONSTRAINT [FK_CARRERAS_REFERENCE_ESCUELAS] FOREIGN KEY([IDESCUELA])
REFERENCES [dbo].[ESCUELAS] ([IDESCUELA])
GO
ALTER TABLE [dbo].[CARRERAS] CHECK CONSTRAINT [FK_CARRERAS_REFERENCE_ESCUELAS]
GO
/****** Object:  ForeignKey [FK_PLANESTU_REFERENCE_CARRERAS]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLANESTUDIO]  WITH CHECK ADD  CONSTRAINT [FK_PLANESTU_REFERENCE_CARRERAS] FOREIGN KEY([IDCARRERA])
REFERENCES [dbo].[CARRERAS] ([IDCARRERA])
GO
ALTER TABLE [dbo].[PLANESTUDIO] CHECK CONSTRAINT [FK_PLANESTU_REFERENCE_CARRERAS]
GO
/****** Object:  ForeignKey [FK_HISTORIA_REFERENCE_PLANESTU]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[HISTORIAL_CURRICULAR]  WITH CHECK ADD  CONSTRAINT [FK_HISTORIA_REFERENCE_PLANESTU] FOREIGN KEY([IDPLAN], [IDCARRERA])
REFERENCES [dbo].[PLANESTUDIO] ([IDPLAN], [IDCARRERA])
GO
ALTER TABLE [dbo].[HISTORIAL_CURRICULAR] CHECK CONSTRAINT [FK_HISTORIA_REFERENCE_PLANESTU]
GO
/****** Object:  ForeignKey [FK_PLAN_ASI_REFERENCE_ASIGNATU]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLAN_ASIGNATURA]  WITH CHECK ADD  CONSTRAINT [FK_PLAN_ASI_REFERENCE_ASIGNATU] FOREIGN KEY([IDASIGNATURA])
REFERENCES [dbo].[ASIGNATURAS] ([IDASIGNATURA])
GO
ALTER TABLE [dbo].[PLAN_ASIGNATURA] CHECK CONSTRAINT [FK_PLAN_ASI_REFERENCE_ASIGNATU]
GO
/****** Object:  ForeignKey [FK_PLAN_ASI_REFERENCE_PLANESTU]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLAN_ASIGNATURA]  WITH CHECK ADD  CONSTRAINT [FK_PLAN_ASI_REFERENCE_PLANESTU] FOREIGN KEY([IDPLAN], [IDCARRERA])
REFERENCES [dbo].[PLANESTUDIO] ([IDPLAN], [IDCARRERA])
GO
ALTER TABLE [dbo].[PLAN_ASIGNATURA] CHECK CONSTRAINT [FK_PLAN_ASI_REFERENCE_PLANESTU]
GO
/****** Object:  ForeignKey [FK_RESOLUCI_REFERENCE_HISTORIA]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[RESOLUCIONES]  WITH CHECK ADD  CONSTRAINT [FK_RESOLUCI_REFERENCE_HISTORIA] FOREIGN KEY([IDHISTORIALCURRICULAR])
REFERENCES [dbo].[HISTORIAL_CURRICULAR] ([IDHISTORIALCURRICULAR])
GO
ALTER TABLE [dbo].[RESOLUCIONES] CHECK CONSTRAINT [FK_RESOLUCI_REFERENCE_HISTORIA]
GO
/****** Object:  ForeignKey [FK_PLAN_ASI_REFERENCE_PLAN_ASI]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[PLAN_ASIG_REQUISITOS]  WITH CHECK ADD  CONSTRAINT [FK_PLAN_ASI_REFERENCE_PLAN_ASI] FOREIGN KEY([IDPLAN], [IDCARRERA], [IDASIGNATURA])
REFERENCES [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA])
GO
ALTER TABLE [dbo].[PLAN_ASIG_REQUISITOS] CHECK CONSTRAINT [FK_PLAN_ASI_REFERENCE_PLAN_ASI]
GO
/****** Object:  ForeignKey [FK_ASIGNATURAS_HISTORIAL_ASIGNATURAS]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[ASIGNATURAS_HISTORIAL]  WITH CHECK ADD  CONSTRAINT [FK_ASIGNATURAS_HISTORIAL_ASIGNATURAS] FOREIGN KEY([IDASIGNATURA])
REFERENCES [dbo].[ASIGNATURAS] ([IDASIGNATURA])
GO
ALTER TABLE [dbo].[ASIGNATURAS_HISTORIAL] CHECK CONSTRAINT [FK_ASIGNATURAS_HISTORIAL_ASIGNATURAS]
GO
/****** Object:  ForeignKey [FK_ASIGNATURAS_HISTORIAL_HISTORIAL_CURRICULAR]    Script Date: 09/29/2015 18:05:00 ******/
ALTER TABLE [dbo].[ASIGNATURAS_HISTORIAL]  WITH CHECK ADD  CONSTRAINT [FK_ASIGNATURAS_HISTORIAL_HISTORIAL_CURRICULAR] FOREIGN KEY([IDHISTORIALCURRICULAR])
REFERENCES [dbo].[HISTORIAL_CURRICULAR] ([IDHISTORIALCURRICULAR])
GO
ALTER TABLE [dbo].[ASIGNATURAS_HISTORIAL] CHECK CONSTRAINT [FK_ASIGNATURAS_HISTORIAL_HISTORIAL_CURRICULAR]
GO
