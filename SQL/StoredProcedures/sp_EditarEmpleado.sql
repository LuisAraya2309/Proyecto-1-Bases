USE [PlanillaObrera]
GO
/****** Object:  StoredProcedure [dbo].[sp_EditarEmpleado]    Script Date: 05/04/2021 07:15:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE sp_EditarEmpleado @buscarNombre varchar(40), @nuevoNombre varchar(40),@nuevoTipoIdentificacion int ,@nuevoValorIdentidad int, @nuevoFechaNacimiento varchar(40), @nuevoPuesto int, @nuevoDepartamento int
--Este procedimiento edita un empleado el cual es buscado por su nombre, y se cambian sus atributos por los parametros
AS

BEGIN

	UPDATE Empleado
	SET Nombre = @nuevoNombre, FechaNacimiento = @nuevoFechaNacimiento, ValorDocIdentidad = @nuevoValorIdentidad, IdDepartamento = @nuevoDepartamento, IdPuesto = @nuevoPuesto
	WHERE Nombre = @buscarNombre
	  

END

GO
USE [PlanillaObrera]
EXECUTE sp_EditarEmpleado 'Juanito Valderrama', 'Elver', 2, 12343514, '2002-09-23', 3, 4