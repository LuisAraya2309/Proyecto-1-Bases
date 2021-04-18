USE [PlanillaObrera]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.sp_ListarDepartamento
AS
BEGIN
	-- Codigo para probar el SP

    --EXEC dbo.sp_ListarDepartamento 

	SET NOTCOUNT ON;

    SELECT 
		*
	FROM dbo.Departamento AS D
	WHERE 
		D.activo = 1
    ORDER BY D.Nombre

	SET NOTCOUNT OFF;
END
GO

