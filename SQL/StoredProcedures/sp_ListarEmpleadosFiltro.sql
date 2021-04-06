
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE sp_ListarEmpleadosFiltro @filtro varchar(40)
--Devuelve la lista de todos los empleados ordenados por un filtro
AS
BEGIN

	SELECT Nombre FROM Empleado WHERE Nombre LIKE @filtro
	ORDER BY Nombre

END
GO
