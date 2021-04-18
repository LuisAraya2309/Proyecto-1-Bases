
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.sp_InsertarEmpleado 
	@inNuevoNombre VARCHAR(40)
	, @inBuscarTipoIdentificacion  VARCHAR(40)
	, @inNuevoValorIdentidad INT
	, @inNuevoFechaNacimiento VARCHAR(40)
	, @inBuscarPuesto VARCHAR(40)
	, @inBuscarDepartamento  VARCHAR(40)
	, @inNuevoSaldoVacaciones INT

AS

BEGIN
	-- Codigo para probar el SP

    --DECLARE
		--@inNuevoNombre VARCHAR(40) = Carlos Esteban
		--, @inBuscarTipoIdentificacion  = cedula nacional
		--, @inNuevoValorIdentidad INT = 542645365
		--, @inNuevoFechaNacimiento VARCHAR(40) = 1988-12-29
		--, @inBuscarPuesto VARCHAR(40) = gerente
		--, @inBuscarDepartamento  VARCHAR(40) = laboratorio
		--, @inNuevoSaldoVacaciones INT = 5000

    --EXEC dbo.sp_InsertarEmpleado 
		--@inNuevoNombre 
		--, @inBuscarTipoIdentificacion
		--, @inNuevoValorIdentidad 
		--, @inNuevoFechaNacimiento 
		--, @inBuscarPuesto 
		--, @inBuscarDepartamento

	SET NOTCOUNT ON;

	---Realiza la busqueda del puesto segun su nombre y devuelve el valor de su id
	DECLARE 
		@nuevoPuesto INT 
	=(SELECT 
		P.Id 
	FROM dbo.Puesto AS P
	WHERE 
		P.Nombre = @inBuscarPuesto);

	---Realiza la busqueda del tipo documento de identificacion segun su nombre y devuelve el valor de su id
	DECLARE @nuevoTipoIdentificacion INT
	= (SELECT 
		T.Id 
	FROM dbo.TipoDocIdentidad AS T
	WHERE 
		T.Nombre = @inBuscarTipoIdentificacion);

	---Realiza la busqueda del puesto segun su nombre y devuelve el valor de su id
	DECLARE @nuevoDepartamento INT  
	= (SELECT 
		D.Id 
	FROM dbo.Departamento AS D
	WHERE 
		D.Nombre = @inBuscarDepartamento);

	INSERT INTO dbo.Empleado
	VALUES
	(@nuevoPuesto
	, @nuevoDepartamento
	, @nuevoTipoIdentificacion
	, @inNuevoNombre
	, @inNuevoFechaNacimiento
	, @inNuevoValorIdentidad
	, @inNuevoSaldoVacaciones
	, 1)

	SET NOTCOUNT OFF;

END

GO
