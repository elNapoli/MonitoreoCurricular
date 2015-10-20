USE [master]
GO
/****** Object:  Database [Monitoreo_Curricular]    Script Date: 10/20/2015 14:59:38 ******/
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
/****** Object:  Table [dbo].[Table_1]    Script Date: 10/20/2015 14:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[rut] [int] NULL,
	[idres] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACULTAD]    Script Date: 10/20/2015 14:59:38 ******/
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
/****** Object:  Table [dbo].[INSTITUTOS]    Script Date: 10/20/2015 14:59:38 ******/
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
/****** Object:  Table [dbo].[REGISTRO]    Script Date: 10/20/2015 14:59:38 ******/
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
/****** Object:  Table [dbo].[ROLES]    Script Date: 10/20/2015 14:59:38 ******/
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
/****** Object:  Table [dbo].[USUARIOS]    Script Date: 10/20/2015 14:59:38 ******/
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
/****** Object:  Table [dbo].[ASIGNATURAS]    Script Date: 10/20/2015 14:59:38 ******/
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
/****** Object:  StoredProcedure [dbo].[getFacultad]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  Table [dbo].[ESCUELAS]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[setLog]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[setUsuario]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[validarUsuario]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[delUsuario]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  Table [dbo].[CARRERAS]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[getUsuarios]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[getUsuarioByRut]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[getEscuelaByFacultad]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[getAsignatura]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateUsuario]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  Table [dbo].[PLANESTUDIO]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[getCarreraByEscuela]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[getCarreraByPlan]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[getPlan]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  Table [dbo].[HISTORIAL_CURRICULAR]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  Table [dbo].[PLAN_ASIGNATURA]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateHisotiral]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  Table [dbo].[RESOLUCIONES]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  Table [dbo].[PLAN_ASIG_REQUISITOS]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  Table [dbo].[ASIGNATURAS_HISTORIAL]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[delHistorial]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[getHistorialById]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[getHistorialByCarrera]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[setHistorial]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[setAsignaturaByHistorial]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[setResolucionByHistorial]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[getResolucionByHistorial]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[getDetalleResoluciones]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[getAsignaturasByHistorial]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[delAsignaturasByHistorial]    Script Date: 10/20/2015 14:59:39 ******/
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
/****** Object:  StoredProcedure [dbo].[delResolucionByHistorial]    Script Date: 10/20/2015 14:59:39 ******/
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
			'Se ha eliminado exitosamente la siguiente resolucion:'+PATH_RESOLUCION AS ErrorMessage,
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
/****** Object:  Default [DF__FACULTAD__IDFACU__25869641]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[FACULTAD] ADD  DEFAULT ((0)) FOR [IDFACULTAD]
GO
/****** Object:  Default [DF__FACULTAD__CAMCOD__267ABA7A]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[FACULTAD] ADD  DEFAULT ((0)) FOR [CAMCODIGO]
GO
/****** Object:  Default [DF__FACULTAD__AGNOCR__276EDEB3]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[FACULTAD] ADD  DEFAULT ((0)) FOR [AGNOCREACION]
GO
/****** Object:  Default [DF__FACULTAD__AGNOTE__286302EC]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[FACULTAD] ADD  DEFAULT ((0)) FOR [AGNOTERMINO]
GO
/****** Object:  Default [DF__INSTITUTO__IDINS__29572725]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[INSTITUTOS] ADD  DEFAULT ((0)) FOR [IDINSTITUTO]
GO
/****** Object:  Default [DF__INSTITUTO__AGNOC__2A4B4B5E]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[INSTITUTOS] ADD  DEFAULT ((0)) FOR [AGNOCREACION]
GO
/****** Object:  Default [DF__INSTITUTO__AGNOT__2B3F6F97]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[INSTITUTOS] ADD  DEFAULT ((0)) FOR [AGNOTERMINO]
GO
/****** Object:  Default [DF__INSTITUTO__CAMCO__2C3393D0]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[INSTITUTOS] ADD  DEFAULT ((0)) FOR [CAMCODIGO]
GO
/****** Object:  Default [DF__INSTITUTO__IDFAC__2D27B809]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[INSTITUTOS] ADD  DEFAULT ((0)) FOR [IDFACTULTAD]
GO
/****** Object:  Default [DF__INSTITUTO__TIPOI__2E1BDC42]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[INSTITUTOS] ADD  DEFAULT ('I') FOR [TIPOINSTITUTO]
GO
/****** Object:  Default [DF__REGISTRO__idObje__1AD3FDA4]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[REGISTRO] ADD  DEFAULT ((0)) FOR [idObjetos]
GO
/****** Object:  Default [DF__ASIGNATUR__PARAS__2F10007B]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [PARASIGTIPO]
GO
/****** Object:  Default [DF__ASIGNATUR__AGNOI__300424B4]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [AGNOINICIO]
GO
/****** Object:  Default [DF__ASIGNATUR__AGNOT__30F848ED]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [AGNOTERMINO]
GO
/****** Object:  Default [DF__ASIGNATUR__PARAS__31EC6D26]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [PARASIGREG]
GO
/****** Object:  Default [DF__ASIGNATUR__IDINS__32E0915F]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [IDINSTITUTO]
GO
/****** Object:  Default [DF__ASIGNATUR__TIPOA__33D4B598]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ('I') FOR [TIPOASIGNATURA]
GO
/****** Object:  Default [DF__ASIGNATUR__CREDI__34C8D9D1]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [CREDITOS]
GO
/****** Object:  Default [DF__ASIGNATUR__PARAS__35BCFE0A]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [PARASIGTIPASIG]
GO
/****** Object:  Default [DF__ASIGNATUR__HORAS__36B12243]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [HORASTEORICAS]
GO
/****** Object:  Default [DF__ASIGNATUR__HORAS__37A5467C]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [HORASPRACTICAS]
GO
/****** Object:  Default [DF__ASIGNATUR__PARTI__38996AB5]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [PARTIPOAPRENDIZAJE]
GO
/****** Object:  Default [DF__ASIGNATUR__NIVEL__398D8EEE]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [NIVELCODIGO]
GO
/****** Object:  Default [DF__ASIGNATUR__CREDI__3A81B327]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [CREDITOSTRANSFERIBLES]
GO
/****** Object:  Default [DF__ASIGNATUR__HORAS__3B75D760]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [HORASNOPRESENCIALES]
GO
/****** Object:  Default [DF__ASIGNATUR__USAUA__3C69FB99]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [USAUAPRENDIZAJE]
GO
/****** Object:  Default [DF__ASIGNATUR__REGIN__3D5E1FD2]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[ASIGNATURAS] ADD  DEFAULT ((0)) FOR [REGINTERNO]
GO
/****** Object:  Default [DF__ESCUELAS__IDESCU__3E52440B]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[ESCUELAS] ADD  DEFAULT ((0)) FOR [IDESCUELA]
GO
/****** Object:  Default [DF__ESCUELAS__AGNOCR__3F466844]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[ESCUELAS] ADD  DEFAULT ((0)) FOR [AGNOCREACION]
GO
/****** Object:  Default [DF__ESCUELAS__AGNOTE__403A8C7D]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[ESCUELAS] ADD  DEFAULT ((0)) FOR [AGNOTERMINO]
GO
/****** Object:  Default [DF__ESCUELAS__CAMCOD__412EB0B6]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[ESCUELAS] ADD  DEFAULT ((0)) FOR [CAMCODIGO]
GO
/****** Object:  Default [DF__ESCUELAS__IDFACU__4222D4EF]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[ESCUELAS] ADD  DEFAULT ((0)) FOR [IDFACULTAD]
GO
/****** Object:  Default [DF__ESCUELAS__TIPOES__4316F928]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[ESCUELAS] ADD  DEFAULT ('C') FOR [TIPOESCUELA]
GO
/****** Object:  Default [DF__ESCUELAS__COMCOD__440B1D61]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[ESCUELAS] ADD  DEFAULT ((0)) FOR [COMCODIGO]
GO
/****** Object:  Default [DF__CARRERAS__IDCARR__44FF419A]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[CARRERAS] ADD  DEFAULT ((0)) FOR [IDCARRERA]
GO
/****** Object:  Default [DF__CARRERAS__AGNOCR__45F365D3]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[CARRERAS] ADD  DEFAULT ((0)) FOR [AGNOCREACION]
GO
/****** Object:  Default [DF__CARRERAS__AGNOTE__46E78A0C]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[CARRERAS] ADD  DEFAULT ((0)) FOR [AGNOTERMINO]
GO
/****** Object:  Default [DF__CARRERAS__IDESCU__47DBAE45]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[CARRERAS] ADD  DEFAULT ((0)) FOR [IDESCUELA]
GO
/****** Object:  Default [DF__CARRERAS__CODTIP__48CFD27E]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[CARRERAS] ADD  DEFAULT ((0)) FOR [CODTIPCARRERA]
GO
/****** Object:  Default [DF__CARRERAS__CODTIP__49C3F6B7]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[CARRERAS] ADD  DEFAULT ((0)) FOR [CODTIPPLAN]
GO
/****** Object:  Default [DF__CARRERAS__CARCOD__4AB81AF0]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[CARRERAS] ADD  DEFAULT ((0)) FOR [CARCODMINISTERIO]
GO
/****** Object:  Default [DF__CARRERAS__CODDEM__4BAC3F29]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[CARRERAS] ADD  DEFAULT ((0)) FOR [CODDEMRE]
GO
/****** Object:  Default [DF__CARRERAS__CODARE__4CA06362]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[CARRERAS] ADD  DEFAULT ((0)) FOR [CODAREA]
GO
/****** Object:  Default [DF__CARRERAS__REGACA__4D94879B]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[CARRERAS] ADD  DEFAULT ((0)) FOR [REGACADAFECTA]
GO
/****** Object:  Default [DF__CARRERAS__AGNOAF__4E88ABD4]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[CARRERAS] ADD  DEFAULT ((0)) FOR [AGNOAFECTAINI]
GO
/****** Object:  Default [DF__PLANESTUD__IDPLA__4F7CD00D]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((0)) FOR [IDPLAN]
GO
/****** Object:  Default [DF__PLANESTUD__IDCAR__5070F446]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((0)) FOR [IDCARRERA]
GO
/****** Object:  Default [DF__PLANESTUD__PARAS__5165187F]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((2)) FOR [PARASIGREG]
GO
/****** Object:  Default [DF__PLANESTUD__DURAC__52593CB8]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((0)) FOR [DURACION]
GO
/****** Object:  Default [DF__PLANESTUD__AGNOI__534D60F1]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((0)) FOR [AGNOINICIO]
GO
/****** Object:  Default [DF__PLANESTUD__AGNOT__5441852A]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((0)) FOR [AGNOTERMINO]
GO
/****** Object:  Default [DF__PLANESTUD__REGTI__5535A963]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((0)) FOR [REGTIPO]
GO
/****** Object:  Default [DF__PLANESTUD__PARCO__5629CD9C]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((0)) FOR [PARCODTIT]
GO
/****** Object:  Default [DF__PLANESTUD__BACHI__571DF1D5]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((0)) FOR [BACHILLERATO]
GO
/****** Object:  Default [DF__PLANESTUD__USACR__5812160E]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((0)) FOR [USACREDPLANOPT]
GO
/****** Object:  Default [DF__PLANESTUD__MINCR__59063A47]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((0)) FOR [MINCREDPLANOPT]
GO
/****** Object:  Default [DF__PLANESTUD__MAXCR__59FA5E80]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLANESTUDIO] ADD  DEFAULT ((0)) FOR [MAXCREDPLANOPT]
GO
/****** Object:  Default [DF__HISTORIAL__IDPLA__60A75C0F]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[HISTORIAL_CURRICULAR] ADD  DEFAULT ((0)) FOR [IDPLAN]
GO
/****** Object:  Default [DF__HISTORIAL__IDCAR__619B8048]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[HISTORIAL_CURRICULAR] ADD  DEFAULT ((0)) FOR [IDCARRERA]
GO
/****** Object:  Default [DF__PLAN_ASIG__IDPLA__5AEE82B9]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLAN_ASIGNATURA] ADD  DEFAULT ((0)) FOR [IDPLAN]
GO
/****** Object:  Default [DF__PLAN_ASIG__NIVEL__5BE2A6F2]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLAN_ASIGNATURA] ADD  DEFAULT ((0)) FOR [NIVELPLAN]
GO
/****** Object:  Default [DF__PLAN_ASIG__TIPOP__5CD6CB2B]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLAN_ASIGNATURA] ADD  DEFAULT ('R') FOR [TIPOPLAN]
GO
/****** Object:  Default [DF__PLAN_ASIG__ASIGS__5DCAEF64]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLAN_ASIGNATURA] ADD  DEFAULT ('E') FOR [ASIGSIRVEPLAN]
GO
/****** Object:  Default [DF__PLAN_ASIG__AFECT__5EBF139D]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLAN_ASIGNATURA] ADD  DEFAULT ('S') FOR [AFECTAPROM]
GO
/****** Object:  Default [DF__PLAN_ASIG__ASIGB__5FB337D6]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLAN_ASIGNATURA] ADD  DEFAULT ((0)) FOR [ASIGBACHILLERATO]
GO
/****** Object:  Default [DF__PLAN_ASIG__IDPLA__628FA481]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLAN_ASIG_REQUISITOS] ADD  DEFAULT ((0)) FOR [IDPLAN]
GO
/****** Object:  Default [DF__PLAN_ASIG__IDCAR__6383C8BA]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLAN_ASIG_REQUISITOS] ADD  DEFAULT ((0)) FOR [IDCARRERA]
GO
/****** Object:  Default [DF__PLAN_ASIG__NIVEL__6477ECF3]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLAN_ASIG_REQUISITOS] ADD  DEFAULT ((0)) FOR [NIVEL]
GO
/****** Object:  Default [DF__PLAN_ASIG__NIVEL__656C112C]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLAN_ASIG_REQUISITOS] ADD  DEFAULT ((0)) FOR [NIVELREQ]
GO
/****** Object:  ForeignKey [FK__USUARIOS__Rol__7E37BEF6]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[USUARIOS]  WITH CHECK ADD FOREIGN KEY([Rol])
REFERENCES [dbo].[ROLES] ([ID])
GO
/****** Object:  ForeignKey [FK_USUARIOS_USUARIOS]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[USUARIOS]  WITH CHECK ADD  CONSTRAINT [FK_USUARIOS_USUARIOS] FOREIGN KEY([Rut])
REFERENCES [dbo].[USUARIOS] ([Rut])
GO
ALTER TABLE [dbo].[USUARIOS] CHECK CONSTRAINT [FK_USUARIOS_USUARIOS]
GO
/****** Object:  ForeignKey [FK_ASIGNATU_REFERENCE_INSTITUT]    Script Date: 10/20/2015 14:59:38 ******/
ALTER TABLE [dbo].[ASIGNATURAS]  WITH CHECK ADD  CONSTRAINT [FK_ASIGNATU_REFERENCE_INSTITUT] FOREIGN KEY([IDINSTITUTO])
REFERENCES [dbo].[INSTITUTOS] ([IDINSTITUTO])
GO
ALTER TABLE [dbo].[ASIGNATURAS] CHECK CONSTRAINT [FK_ASIGNATU_REFERENCE_INSTITUT]
GO
/****** Object:  ForeignKey [FK_ESCUELAS_REFERENCE_FACULTAD]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[ESCUELAS]  WITH CHECK ADD  CONSTRAINT [FK_ESCUELAS_REFERENCE_FACULTAD] FOREIGN KEY([IDFACULTAD])
REFERENCES [dbo].[FACULTAD] ([IDFACULTAD])
GO
ALTER TABLE [dbo].[ESCUELAS] CHECK CONSTRAINT [FK_ESCUELAS_REFERENCE_FACULTAD]
GO
/****** Object:  ForeignKey [FK_CARRERAS_REFERENCE_ESCUELAS]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[CARRERAS]  WITH CHECK ADD  CONSTRAINT [FK_CARRERAS_REFERENCE_ESCUELAS] FOREIGN KEY([IDESCUELA])
REFERENCES [dbo].[ESCUELAS] ([IDESCUELA])
GO
ALTER TABLE [dbo].[CARRERAS] CHECK CONSTRAINT [FK_CARRERAS_REFERENCE_ESCUELAS]
GO
/****** Object:  ForeignKey [FK_PLANESTU_REFERENCE_CARRERAS]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLANESTUDIO]  WITH CHECK ADD  CONSTRAINT [FK_PLANESTU_REFERENCE_CARRERAS] FOREIGN KEY([IDCARRERA])
REFERENCES [dbo].[CARRERAS] ([IDCARRERA])
GO
ALTER TABLE [dbo].[PLANESTUDIO] CHECK CONSTRAINT [FK_PLANESTU_REFERENCE_CARRERAS]
GO
/****** Object:  ForeignKey [FK_HISTORIA_REFERENCE_PLANESTU]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[HISTORIAL_CURRICULAR]  WITH CHECK ADD  CONSTRAINT [FK_HISTORIA_REFERENCE_PLANESTU] FOREIGN KEY([IDPLAN], [IDCARRERA])
REFERENCES [dbo].[PLANESTUDIO] ([IDPLAN], [IDCARRERA])
GO
ALTER TABLE [dbo].[HISTORIAL_CURRICULAR] CHECK CONSTRAINT [FK_HISTORIA_REFERENCE_PLANESTU]
GO
/****** Object:  ForeignKey [FK_PLAN_ASI_REFERENCE_ASIGNATU]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLAN_ASIGNATURA]  WITH CHECK ADD  CONSTRAINT [FK_PLAN_ASI_REFERENCE_ASIGNATU] FOREIGN KEY([IDASIGNATURA])
REFERENCES [dbo].[ASIGNATURAS] ([IDASIGNATURA])
GO
ALTER TABLE [dbo].[PLAN_ASIGNATURA] CHECK CONSTRAINT [FK_PLAN_ASI_REFERENCE_ASIGNATU]
GO
/****** Object:  ForeignKey [FK_PLAN_ASI_REFERENCE_PLANESTU]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLAN_ASIGNATURA]  WITH CHECK ADD  CONSTRAINT [FK_PLAN_ASI_REFERENCE_PLANESTU] FOREIGN KEY([IDPLAN], [IDCARRERA])
REFERENCES [dbo].[PLANESTUDIO] ([IDPLAN], [IDCARRERA])
GO
ALTER TABLE [dbo].[PLAN_ASIGNATURA] CHECK CONSTRAINT [FK_PLAN_ASI_REFERENCE_PLANESTU]
GO
/****** Object:  ForeignKey [FK_RESOLUCI_REFERENCE_HISTORIA]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[RESOLUCIONES]  WITH CHECK ADD  CONSTRAINT [FK_RESOLUCI_REFERENCE_HISTORIA] FOREIGN KEY([IDHISTORIALCURRICULAR])
REFERENCES [dbo].[HISTORIAL_CURRICULAR] ([IDHISTORIALCURRICULAR])
GO
ALTER TABLE [dbo].[RESOLUCIONES] CHECK CONSTRAINT [FK_RESOLUCI_REFERENCE_HISTORIA]
GO
/****** Object:  ForeignKey [FK_PLAN_ASI_REFERENCE_PLAN_ASI]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[PLAN_ASIG_REQUISITOS]  WITH CHECK ADD  CONSTRAINT [FK_PLAN_ASI_REFERENCE_PLAN_ASI] FOREIGN KEY([IDPLAN], [IDCARRERA], [IDASIGNATURA])
REFERENCES [dbo].[PLAN_ASIGNATURA] ([IDPLAN], [IDCARRERA], [IDASIGNATURA])
GO
ALTER TABLE [dbo].[PLAN_ASIG_REQUISITOS] CHECK CONSTRAINT [FK_PLAN_ASI_REFERENCE_PLAN_ASI]
GO
/****** Object:  ForeignKey [FK_ASIGNATURAS_HISTORIAL_ASIGNATURAS]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[ASIGNATURAS_HISTORIAL]  WITH CHECK ADD  CONSTRAINT [FK_ASIGNATURAS_HISTORIAL_ASIGNATURAS] FOREIGN KEY([IDASIGNATURA])
REFERENCES [dbo].[ASIGNATURAS] ([IDASIGNATURA])
GO
ALTER TABLE [dbo].[ASIGNATURAS_HISTORIAL] CHECK CONSTRAINT [FK_ASIGNATURAS_HISTORIAL_ASIGNATURAS]
GO
/****** Object:  ForeignKey [FK_ASIGNATURAS_HISTORIAL_HISTORIAL_CURRICULAR]    Script Date: 10/20/2015 14:59:39 ******/
ALTER TABLE [dbo].[ASIGNATURAS_HISTORIAL]  WITH CHECK ADD  CONSTRAINT [FK_ASIGNATURAS_HISTORIAL_HISTORIAL_CURRICULAR] FOREIGN KEY([IDHISTORIALCURRICULAR])
REFERENCES [dbo].[HISTORIAL_CURRICULAR] ([IDHISTORIALCURRICULAR])
GO
ALTER TABLE [dbo].[ASIGNATURAS_HISTORIAL] CHECK CONSTRAINT [FK_ASIGNATURAS_HISTORIAL_HISTORIAL_CURRICULAR]
GO
