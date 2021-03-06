USE [Monitoreo_Curricular]
GO
/****** Object:  StoredProcedure [dbo].[getFacultad]    Script Date: 06/04/2015 17:18:42 ******/
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
/****** Object:  StoredProcedure [dbo].[getEscuelaByFacultad]    Script Date: 06/04/2015 17:18:42 ******/
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
/****** Object:  StoredProcedure [dbo].[getCarreraByEscuela]    Script Date: 06/04/2015 17:18:42 ******/
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
/****** Object:  StoredProcedure [dbo].[getHistorialByCarrera]    Script Date: 06/04/2015 17:18:42 ******/
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
/****** Object:  StoredProcedure [dbo].[getHistorialOfAsignaturas]    Script Date: 06/04/2015 17:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getHistorialOfAsignaturas]
	@idHistorial smallint
AS
BEGIN
	
	select ASIGNATURAS.NOMASIGNATURA, ASIGNATURAS.IDASIGNATURA
	 from ASIGNATURAS_HISTORIAL,ASIGNATURAS 
	 where IDHISTORIALCURRICULAR = @idHistorial
END
GO
/****** Object:  StoredProcedure [dbo].[getDetalleHistorialOfResulucion]    Script Date: 06/04/2015 17:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getDetalleHistorialOfResulucion]

	@idHistorial smallint
AS
BEGIN

	select NOMBRERESOLUCION,PATH_RESOLUCION 
	from RESOLUCIONES 
	where IDHISTORIALCURRICULAR = @idHistorial
END
GO
