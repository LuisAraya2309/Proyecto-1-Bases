USE [PlanillaObrera]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE sp_CargarXML 
	
AS
BEGIN

INSERT INTO Puesto

	SELECT
		puesto.value('@Id','INT') AS id,
		puesto.value('@Nombre','VARCHAR(40)') AS Nombre,
		puesto.value('@SalarioXHora','INT') AS salarioxHora,
		1 AS activo  
		
	FROM
	(
		SELECT CAST(c AS XML) FROM
		OPENROWSET(
			BULK 'E:\TEC\I SEMESTRE 2021\Bases de Datos I\Proyecto 1\Proyecto-1-Bases\SQL\StoredProcedures\Catalogo_con_ID_BD.xml',
			SINGLE_BLOB
		) AS T(c)
		) AS S(C)
		CROSS APPLY c.nodes('Datos/Catalogos/Puestos/Puesto') AS A(puesto)

INSERT INTO TipoDocIdentidad

	SELECT
		tipodoc.value('@Id','INT') AS id,
		tipodoc.value('@Nombre','VARCHAR(40)') AS nombre,
		1 AS activo
		
	FROM
	(
		SELECT CAST(c AS XML) FROM
		OPENROWSET(
			BULK 'E:\TEC\I SEMESTRE 2021\Bases de Datos I\Proyecto 1\Proyecto-1-Bases\SQL\StoredProcedures\Catalogo_con_ID_BD.xml',
			SINGLE_BLOB
		) AS T(c)
		) AS S(C)
		CROSS APPLY c.nodes('Datos/Catalogos/Tipos_de_Documento_de_Identificacion/TipoIdDoc') AS A(tipodoc)

INSERT INTO Departamento

	SELECT
		departamento.value('@Id','INT') AS id,
		departamento.value('@Nombre','VARCHAR(40)') AS nombre,
		NULL AS idJefe ,  
		1 AS activo
		
	FROM
	(
		SELECT CAST(c AS XML) FROM
		OPENROWSET(
			BULK 'E:\TEC\I SEMESTRE 2021\Bases de Datos I\Proyecto 1\Proyecto-1-Bases\SQL\StoredProcedures\Catalogo_con_ID_BD.xml',
			SINGLE_BLOB
		) AS T(c)
		) AS S(C)
		CROSS APPLY c.nodes('Datos/Catalogos/Departamentos/Departamento') AS A(departamento)

INSERT INTO Empleado

	SELECT
		
		empleado.value('@idPuesto','INT') AS idPuesto,
		empleado.value('@IdDepartamento','INT') AS idDepartamento,
		empleado.value('@idTipoDocumentacionIdentidad','INT') AS idTipoDocIdentidad,
		empleado.value('@Nombre','VARCHAR(40)') AS nombre,
		empleado.value('@FechaNacimiento','VARCHAR(40)') AS fechaNacimiento,
		empleado.value('@ValorDocumentoIdentidad','INT') AS valorDocIdentidad,
		1 AS activo
		
	FROM
	(
		SELECT CAST(c AS XML) FROM
		OPENROWSET(
			BULK 'E:\TEC\I SEMESTRE 2021\Bases de Datos I\Proyecto 1\Proyecto-1-Bases\SQL\StoredProcedures\Catalogo_con_ID_BD.xml',
			SINGLE_BLOB
		) AS T(c)
		) AS S(C)
		CROSS APPLY c.nodes('Datos/Empleados/Empleado') AS A(empleado)


INSERT INTO dbo.Usuarios

	SELECT
		usuario.value('@username','VARCHAR(40)') AS username,
		usuario.value('@pwd','VARCHAR(40)') AS pwd,
		usuario.value('@tipo','INT') AS tipo,
		1 AS activo
		
	FROM
	(
		SELECT CAST(c AS XML) FROM
		OPENROWSET(
			BULK 'E:\TEC\I SEMESTRE 2021\Bases de Datos I\Proyecto 1\Proyecto-1-Bases\SQL\StoredProcedures\Catalogo_con_ID_BD.xml',
			SINGLE_BLOB
		) AS T(c)
		) AS S(C)
		CROSS APPLY c.nodes('Datos/Catalogos/Usuarios/Usuario') AS A(usuario)


END
GO

EXEC sp_CargarXML