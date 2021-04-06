SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE sp_EditarEmpleado @buscarNombre varchar(40), @nuevoNombre varchar(40),@buscarTipoIdentificacion varchar(40) ,@nuevoValorIdentidad int, @nuevoFechaNacimiento varchar(40), @buscarPuesto varchar(40), @buscarDepartamento varchar(40)
--Este procedimiento edita un empleado el cual es buscado por su nombre, y se cambian sus atributos por los parametros
AS

BEGIN
	DECLARE @nuevoTipoIdentidad int
	DECLARE @nuevoDepartamento  int
	DECLARE @nuevoPuesto  int

	SELECT id = @nuevoTipoIdentidad FROM TipoDocIdentidad WHERE Nombre = @buscarTipoIdentificacion
	SELECT id = @nuevoDepartamento FROM Departamento WHERE Nombre = @buscarDepartamento
	SELECT id = @nuevoPuesto FROM Puesto WHERE Nombre = @buscarPuesto

	UPDATE Empleado
	SET Nombre = @nuevoNombre, FechaNacimiento = @nuevoFechaNacimiento, ValorDocIdentidad = @nuevoValorIdentidad, IdTipoDocIdentidad = @nuevoTipoIdentidad, IdDepartamento = @nuevoDepartamento, IdPuesto = @nuevoPuesto
	WHERE Nombre = @buscarNombre
	  

END

GO
