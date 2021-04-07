USE [PlanillaObrera]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE sp_ListarEmpleados
--Devuelve la lista de todos los empleados ordenados alfabéticamente
AS
BEGIN

	SELECT Empleado.Nombre, Puesto.Nombre
	FROM Empleado INNER JOIN Puesto
	ON  Empleado.IdPuesto =  Puesto.Id
	ORDER BY Empleado.Nombre;
END
GO





