USE [PlanillaObrera]
GO
/****** Object:  StoredProcedure [dbo].[sp_EditarEmpleado]    Script Date: 05/04/2021 07:15:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.sp_EditarEmpleado 
	@inBuscarNombre VARCHAR(40)
	, @inNuevoNombre VARCHAR(40)
	, @inBuscarTipoIdentificacion  VARCHAR(40) 
	, @inNuevoValorIdentidad INT
	, @inNuevoFechaNacimiento VARCHAR(40)
	, @inBuscarPuesto VARCHAR(40)
	, @inBuscarDepartamento  VARCHAR(40)
--Este procedimiento edita un empleado el cual es buscado por su nombre, y se cambian sus atributos por los parametros
AS

BEGIN
	-- Codigo para probar el SP

    --DECLARE
		--@inBuscarNombre VARCHAR(40) =Luis Carlos
		--, @inNuevoNombre VARCHAR(40) = Sebastián Díaz
		--, @inBuscarTipoIdentificacion  = pasaporte
		--, @inNuevoValorIdentidad INT = 305420217
		--, @inNuevoFechaNacimiento VARCHAR(40) = 2002-11-01
		--, @inBuscarPuesto VARCHAR(40) = gerente
		--, @inBuscarDepartamento  VARCHAR(40) = laboratorio

    --EXEC dbo.sp_EditarEmpleado 
		--@inBuscarNombre 
		--, @inNuevoNombre 
		--, @inBuscarTipoIdentificacion
		--, @inNuevoValorIdentidad 
		--, @inNuevoFechaNacimiento 
		--, @inBuscarPuesto 
		--, @inBuscarDepartamento

		SET NOTCOUNT ON;
	---Realiza la busqueda del puesto segun su nombre y devuelve el valor de su id
	DECLARE 
		@nuevoPuesto INT  
	 = (SELECT 
		P.Id 
	FROM dbo.Puesto AS P
	WHERE 
		P.Nombre = @inBuscarPuesto);

	---Realiza la busqueda del tipo documento de identificacion segun su nombre y devuelve el valor de su id
	DECLARE 
		@nuevoTipoIdentificacion INT  
	= (SELECT 
		T.Id 
	FROM dbo.TipoDocIdentidad AS T
	WHERE 
		T.Nombre = @inBuscarTipoIdentificacion);

	---Realiza la busqueda del puesto segun su nombre y devuelve el valor de su id
	DECLARE 
		@nuevoDepartamento INT 
	= (SELECT 
		D.Id 
	FROM dbo.Departamento AS D
	WHERE 
		D.Nombre = @inBuscarDepartamento);

	UPDATE dbo.Empleado 
	SET 
		Nombre = @inNuevoNombre
		, FechaNacimiento = @inNuevoFechaNacimiento
		, ValorDocIdentidad = @inNuevoValorIdentidad
		, IdDepartamento = @nuevoDepartamento
		, IdPuesto = @nuevoPuesto
		, IdTipoDocIdentidad = @nuevoTipoIdentificacion
	WHERE 
		Nombre = @inBuscarNombre

	SET NOTCOUNT OFF;

END
