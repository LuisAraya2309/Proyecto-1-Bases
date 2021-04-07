USE [PlanillaObrera]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE sp_ListarEmpleadosFiltro @filtro varchar(40)
--Devuelve la lista de todos los empleados ordenados por un filtro
AS
BEGIN

	SELECT Empleado.Nombre , Puesto.Nombre
	FROM Empleado INNER JOIN Puesto
	ON Empleado.IdPuesto =  Puesto.Id
	WHERE Empleado.Nombre LIKE @filtro
	ORDER BY Empleado.Nombre;

END
GO

