USE [PlanillaObrera]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.sp_ListarEmpleadosFiltro 
	@inFiltro varchar(40)
--Devuelve la lista de todos los empleados ordenados por un filtro
AS
BEGIN
	-- Codigo para probar el SP

    --EXEC dbo.sp_ListarEmpleadosFiltro
	SELECT 
		E.Nombre 
		, P.Nombre
	FROM dbo.Empleado AS E 
	INNER JOIN dbo.Puesto AS P ON E.idPuesto =  P.Id
	WHERE 
		E.Nombre LIKE @inFiltro
		AND E.activo = 1
	ORDER BY E.Nombre;

END
GO

