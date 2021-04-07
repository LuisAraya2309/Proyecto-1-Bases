USE [PlanillaObrera]
GO
/****** Object:  StoredProcedure [dbo].[sp_EditarEmpleado]    Script Date: 05/04/2021 07:15:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE sp_EditarEmpleado @buscarNombre varchar(40), @nuevoNombre varchar(40),@buscarTipoIdentificacion  varchar(40) ,@nuevoValorIdentidad int, @nuevoFechaNacimiento varchar(40), @buscarPuesto varchar(40), @buscarDepartamento  varchar(40)
--Este procedimiento edita un empleado el cual es buscado por su nombre, y se cambian sus atributos por los parametros
AS

BEGIN
	DECLARE @nuevoPuesto INT = (SELECT Puesto.Id FROM Puesto WHERE Puesto.Nombre = @buscarPuesto);
	DECLARE @nuevoTipoIdentificacion INT = (SELECT TipoDocIdentidad.Id FROM TipoDocIdentidad WHERE TipoDocIdentidad.Nombre = @buscarTipoIdentificacion);
	DECLARE @nuevoDepartamento INT = (SELECT Departamentos.Id FROM Departamentos WHERE Departamentos.Nombre = @buscarDepartamento);

	UPDATE Empleado
	SET Nombre = @nuevoNombre, FechaNacimiento = @nuevoFechaNacimiento, ValorDocIdentidad = @nuevoValorIdentidad, IdDepartamento = @nuevoDepartamento, IdPuesto = @nuevoPuesto, IdTipoDocIdentidad = @nuevoTipoIdentificacion
	WHERE Nombre = @buscarNombre
	  

END
