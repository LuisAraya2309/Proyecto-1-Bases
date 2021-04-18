SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.sp_ListarUsuarios
--Devuelve la lista de todos los usuarios ordenados alfab�ticamente
AS
BEGIN
	-- Codigo para probar el SP

    --EXEC dbo.sp_ListarUsuarios

	SET NOTCOUNT ON;

	SELECT 
		* 
	FROM dbo.Usuarios AS U
	WHERE 
		U.activo = 1
	ORDER BY U.Nombre

	SET NOTCOUNT OFF;

END
GO