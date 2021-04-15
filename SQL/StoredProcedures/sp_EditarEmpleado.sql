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
	---Realiza la busqueda del puesto segun su nombre y devuelve el valor de su id
	DECLARE @nuevoPuesto INT = 
	(SELECT 
		P.Id 
	FROM dbo.Puesto as P
	WHERE 
		P.Nombre = @buscarPuesto);

	---Realiza la busqueda del tipo documento de identificacion segun su nombre y devuelve el valor de su id
	DECLARE @nuevoTipoIdentificacion INT = 
	(SELECT 
		T.Id 
	FROM dbo.TipoDocIdentidad as T
	WHERE 
		T.Nombre = @buscarTipoIdentificacion);

	---Realiza la busqueda del puesto segun su nombre y devuelve el valor de su id
	DECLARE @nuevoDepartamento INT = 
	(SELECT 
		D.Id 
	FROM dbo.Departamentos as D
	WHERE 
		D.Nombre = @buscarDepartamento);

	UPDATE dbo.Empleado 
	SET 
		Nombre = @nuevoNombre
		, FechaNacimiento = @nuevoFechaNacimiento
		, ValorDocIdentidad = @nuevoValorIdentidad
		, IdDepartamento = @nuevoDepartamento
		, IdPuesto = @nuevoPuesto
		, IdTipoDocIdentidad = @nuevoTipoIdentificacion
	WHERE 
		Nombre = @buscarNombre
END
