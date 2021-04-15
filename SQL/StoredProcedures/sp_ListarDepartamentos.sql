USE [PlanillaObrera]
GO

/****** Object:  StoredProcedure [dbo].[sp_ListarDepartamento]    Script Date: 14/04/2021 06:43:51 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE sp_ListarDepartamento
AS
BEGIN

    SELECT 
		*
	FROM dbo.Departamentos as D
    ORDER BY D.Nombre

END
GO

