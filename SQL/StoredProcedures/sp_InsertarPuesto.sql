
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE dbo.sp_InsertarPuesto 
	@inNuevoNombre VARCHAR(40)
	, @inNuevoSalario INT

AS

BEGIN
	-- Codigo para probar el SP

    --DECLARE
		-- @inNuevoNombre VARCHAR(40) = programador junior
		-- , @inNuevoSalario INT = 4000

    --EXEC dbo.sp_InsertarPuesto 
		--@inNuevoNombre
		-- , @inNuevoSalario

	SET NOTCOUNT ON;

	INSERT INTO dbo.Puesto
	VALUES
		(@inNuevoNombre
		,@inNuevoSalario
		,1)

	SET NOTCOUNT OFF;

END

GO


