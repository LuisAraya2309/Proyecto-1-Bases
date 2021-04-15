
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE sp_InsertarPuesto @nuevoNombre varchar(40), @nuevoSalario int

AS

BEGIN

	INSERT INTO dbo.Puesto
	VALUES
		(@nuevoNombre
		,@nuevoSalario
		,1)

END

GO


