USE [PlanillaObrera]
GO

/****** Object:  StoredProcedure [dbo].[sp_ListarTipoDocIdentidad]    Script Date: 14/04/2021 06:43:21 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.sp_ListarTipoDocIdentidad
AS
BEGIN
	-- Codigo para probar el SP

    --EXEC dbo.sp_ListarTipoDocIdentidad 
	SET NOTCOUNT ON;

    SELECT 
		*
	FROM dbo.TipoDocIdentidad AS T
	WHERE 
		T.activo = 1
    ORDER BY T.Nombre

	SET NOTCOUNT OFF;

END
GO

