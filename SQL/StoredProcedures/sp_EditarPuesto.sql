
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE sp_EditarPuesto @buscarNombre varchar(40), @nuevoNombre varchar(40),@nuevoSalario int
--Este procedimiento edita un puesto el cual es buscado por un nombre, y el parametro nuevoNombre y nuevoSalario seran los nuevos atributos 
AS

BEGIN

	UPDATE dbo.Puesto
	SET 
		Nombre = @nuevoNombre
		, SalarioXHora = @nuevoSalario
	WHERE Nombre = @buscarNombre

END

GO

