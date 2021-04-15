USE [PlanillaObrera]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.sp_ListarEmpleados
--Devuelve la lista de todos los empleados ordenados alfabéticamente
AS
BEGIN
	-- Codigo para probar el SP

    --EXEC dbo.sp_ListarEmpleados
	SELECT 
		E.Nombre
		, P.Nombre
	FROM dbo.Empleado AS E
	INNER JOIN dbo.Puesto AS P ON  E.IdPuesto =  P.Id
	WHERE 
		E.activo = 1
	ORDER BY E.Nombre;
END
GO





