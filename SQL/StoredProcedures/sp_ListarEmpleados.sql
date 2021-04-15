USE [PlanillaObrera]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE sp_ListarEmpleados
--Devuelve la lista de todos los empleados ordenados alfabéticamente
AS
BEGIN

	SELECT 
		E.Nombre
		, P.Nombre
	FROM dbo.Empleado as E
	INNER JOIN dbo.Puesto as P ON  E.IdPuesto =  P.Id
	ORDER BY E.Nombre;
END
GO





