SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.sp_EliminarPuesto
	@inBuscarId INT
--Devuelve la lista de todos los usuarios ordenados alfabéticamente
AS
BEGIN
	-- Codigo para probar el SP

    --DECLARE
		-- @inNombre VARCHAR(40) = Gabriel

    --EXEC dbo.sp_EliminarPuesto
		-- @inNombre

	SET NOCOUNT ON;

	UPDATE dbo.Puesto
	SET 
		activo = 0
	WHERE 
		id = @inBuscarId

	SET NOCOUNT OFF;

END
GO