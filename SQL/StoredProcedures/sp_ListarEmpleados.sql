
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE sp_ListarEmpleados
--Devuelve la lista de todos los empleados ordenados alfabéticamente
AS
BEGIN

	SELECT Nombre FROM Empleado 
	ORDER BY Nombre

END
GO



