USE [PlanillaObrera]
GO

/****** Object:  StoredProcedure [dbo].[sp_ListarTipoDocIdentidad]    Script Date: 14/04/2021 06:43:21 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_ListarTipoDocIdentidad]
AS
BEGIN

    SELECT * FROM TipoDocIdentidad 
    ORDER BY Nombre

END
GO

