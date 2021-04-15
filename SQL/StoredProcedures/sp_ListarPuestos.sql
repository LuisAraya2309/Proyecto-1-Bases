
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE sp_ListarPuestos
--PRIMERA FUNCIONALIDAD: Devuelve la lista de todos los puestos ordenados alfabéticamente
AS
BEGIN

	SELECT 
		* 
	FROM dbo.Puesto as P
	ORDER BY P.Nombre

END
GO


