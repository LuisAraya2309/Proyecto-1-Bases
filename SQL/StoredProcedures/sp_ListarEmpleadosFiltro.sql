USE [PlanillaObrera]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE sp_ListarEmpleadosFiltro @filtro varchar(40)
--Devuelve la lista de todos los empleados ordenados por un filtro
AS
BEGIN

	SELECT 
		E.Nombre 
		, P.Nombre
	FROM dbo.Empleado as E 
	INNER JOIN dbo.Puesto as P ON E.idPuesto =  P.Id
	WHERE 
		E.Nombre LIKE @filtro
	ORDER BY E.Nombre;

END
GO

