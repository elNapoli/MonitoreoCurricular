USE [Monitoreo_Curricular]
GO
/****** Object:  StoredProcedure [dbo].[TraeFacultad]    Script Date: 06/04/2015 10:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TraeFacultad]

AS
BEGIN

SELECT IDFACULTAD, NOMFACULTAD FROM FACULTAD
END
GO
/****** Object:  StoredProcedure [dbo].[TraeEscuelaPorFacultad]    Script Date: 06/04/2015 10:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TraeEscuelaPorFacultad]

  @idFacultad smallint
AS
BEGIN

select IDESCUELA,NOMESCUELA from ESCUELAS where IDFACULTAD = @idFacultad
END
GO
/****** Object:  StoredProcedure [dbo].[TraeCarreraPorEscuela]    Script Date: 06/04/2015 10:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TraeCarreraPorEscuela]
	@idEscuela smallint
AS
BEGIN
	select IDCARRERA,NOMCARRERA from CARRERAS where IDESCUELA = @idEscuela
END
GO
