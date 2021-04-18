
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.sp_EditarPuesto 
	@inBuscarNombre VARCHAR(40)
	, @inNuevoNombre VARCHAR(40)
	, @inNuevoSalario INT

--Este procedimiento edita un puesto el cual es buscado por un nombre, y el parametro nuevoNombre y nuevoSalario seran los nuevos atributos 
AS

BEGIN
	-- Codigo para probar el SP

    --DECLARE
		-- @inBuscarNombre varchar(40) = gerente
		-- , @inNuevoNombre varchar(40) = administrador
		-- , @inNuevoSalario int = 5000

    --EXEC dbo.sp_EditarPuesto 
		-- @inBuscarNombre
		-- , @inNuevoNombre 
		-- , @inNuevoSalario 

	SET NOTCOUNT ON;

	UPDATE dbo.Puesto
	SET 
		Nombre = @inNuevoNombre
		, SalarioXHora = @inNuevoSalario
	WHERE 
		Nombre = @inBuscarNombre

	SET NOTCOUNT OFF;

END
GO

