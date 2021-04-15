
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE sp_InsertarEmpleado @nuevoNombre varchar(40),@buscarTipoIdentificacion  varchar(40) ,@nuevoValorIdentidad int, @nuevoFechaNacimiento varchar(40), @buscarPuesto varchar(40), @buscarDepartamento  varchar(40), @nuevoSaldoVacaciones int

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

	INSERT INTO dbo.Empleado
	VALUES
	(@nuevoPuesto
	, @nuevoDepartamento
	, @nuevoTipoIdentificacion
	, @nuevoNombre
	, @nuevoFechaNacimiento
	, @nuevoValorIdentidad
	, @nuevoSaldoVacaciones
	, 1)

END

GO
