SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.sp_EliminarEmpleado
	@inNombre VARCHAR(40)
--Elimina un empleado
AS
BEGIN
	-- Codigo para probar el SP

    --DECLARE
		-- @inNombre VARCHAR(40) = Gabriel

    --EXEC dbo.sp_EliminarEmpleado 
		-- @inNombre

	SET NOCOUNT ON;

	UPDATE dbo.Empleado
	SET 
		activo = 0
	WHERE 
		Nombre = @inNombre

	SET NOCOUNT OFF;

END
GO