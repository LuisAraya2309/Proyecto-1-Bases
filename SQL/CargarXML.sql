USE [PlanillaObrera]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE sp_CargarXML 
	
AS
BEGIN
	DECLARE
		@mydoc XML
		SET @mydoc =
		
		'
<Datos>
<Catalogos>
    
    <Puestos>
        <Puesto Id="1"  Nombre="Administrador" SalarioXHora="1200"/>
        <Puesto Id="2"  Nombre="Analyst Junior" SalarioXHora="800"/>
        <Puesto Id="3"  Nombre="Accountant" SalarioXHora="600"/>
        <Puesto Id="4"  Nombre="Analyst Senior" SalarioXHora="1700"/>
        <Puesto Id="5"  Nombre="Sellers" SalarioXHora="2000"/>
        <Puesto Id="6"  Nombre="Janitor" SalarioXHora="550"/>
        <Puesto Id="7"  Nombre="Training" SalarioXHora="12500"/>
        <Puesto Id="8"  Nombre="Proyect Manager" SalarioXHora="200"/>
        <Puesto Id="9"  Nombre="Technical Support" SalarioXHora="200"/>
        <Puesto Id="10" Nombre="Secretary" SalarioXHora="1400"/>
    </Puestos>
    
    
    <Departamentos>
        <Departamento Id="1"  Nombre="Marketing"/>
        <Departamento Id="2"  Nombre="Electronic"/>
        <Departamento Id="3"  Nombre="Communications"/>
        <Departamento Id="4"  Nombre="CustomerService"/>
        
    </Departamentos>
    
    
    <Tipos_de_Documento_de_Identificacion>
        <TipoIdDoc Id="1" Nombre="Identidy Card"/>
        <TipoIdDoc Id="2" Nombre="Passport"/>
    </Tipos_de_Documento_de_Identificacion>
</Catalogos>


<Empleados>

    <Empleado  idTipoDocumentacionIdentidad="1" 
    idPuesto="2"  IdDepartamento="4" ValorDocumentoIdentidad="504450926" Nombre="Marco Diaz Ramirez" FechaNacimiento="1992-02-22"  />
    
    <Empleado  idTipoDocumentacionIdentidad="1" 
    idPuesto="3"  IdDepartamento="3" ValorDocumentoIdentidad="504340972" Nombre="Pepe Gomez Raul" FechaNacimiento="1997-10-30"  />
    
    <Empleado  idTipoDocumentacionIdentidad="1" 
    idPuesto="4"  IdDepartamento="2" ValorDocumentoIdentidad="102220173" Nombre="Juan Rivel Gomez" FechaNacimiento="2001-05-01"  />
    
    <Empleado  idTipoDocumentacionIdentidad="1" 
    idPuesto="5"  IdDepartamento="1" ValorDocumentoIdentidad="204340124" Nombre="Maria Lara Wong" FechaNacimiento="1982-12-13"  />
    
    <Empleado   idTipoDocumentacionIdentidad="1" 
    idPuesto="6"   IdDepartamento="2" ValorDocumentoIdentidad="701210384" Nombre="Daniela Alvarado Guitierrez" FechaNacimiento="1962-07-23"  />
    
    <Empleado  idTipoDocumentacionIdentidad="1" 
    idPuesto="8"   IdDepartamento="3" ValorDocumentoIdentidad="601210734" Nombre="Patricia Aguilar Silva" FechaNacimiento="1982-09-15"  />
    
    <Empleado idTipoDocumentacionIdentidad="1" 
    idPuesto="9"   IdDepartamento="4" ValorDocumentoIdentidad="60585987" Nombre="Patricio Wong Chan" FechaNacimiento="1972-12-08"  />
    
    <Empleado  idTipoDocumentacionIdentidad="1" 
    idPuesto="10"   IdDepartamento="1" ValorDocumentoIdentidad="104320946" Nombre="Luis Oviedo Aguero" FechaNacimiento="2002-03-29"  />
    
    <Empleado  idTipoDocumentacionIdentidad="1" 
    idPuesto="7"   IdDepartamento="4" ValorDocumentoIdentidad="302220943" Nombre="Edgar Wong Aguilar" FechaNacimiento="2000-08-11"  />
    
    <Empleado   idTipoDocumentacionIdentidad="1" 
    idPuesto="10"   IdDepartamento="1" ValorDocumentoIdentidad="404320843" Nombre="Tania Sevilla Gomez" FechaNacimiento="1999-10-15"  />
    
    <Empleado  idTipoDocumentacionIdentidad="1" 
    idPuesto="6"   IdDepartamento="3" ValorDocumentoIdentidad="90" Nombre="Magdalena Ruiz Dias" FechaNacimiento="1973-11-25"  />
    
    <Empleado  idTipoDocumentacionIdentidad="2" 
    idPuesto="8"   IdDepartamento="3" ValorDocumentoIdentidad="904340924" Nombre="Marco Anthonio Solis" FechaNacimiento="1994-07-09"  />
    
    <Empleado  idTipoDocumentacionIdentidad="2" 
    idPuesto="1"   IdDepartamento="3" ValorDocumentoIdentidad="902340124" Nombre="Guillermo Diaz Ibanez " FechaNacimiento="1998-04-18"  />
    
    <Empleado  idTipoDocumentacionIdentidad="2" 
    idPuesto="10"   IdDepartamento="2" ValorDocumentoIdentidad="905450453" Nombre="Samuel Luque Rodriguez" FechaNacimiento="1986-02-21"  />
    
    <Empleado  idTipoDocumentacionIdentidad="1" 
    idPuesto="6"   IdDepartamento="2" ValorDocumentoIdentidad="604220943" Nombre="Cristina Lopez Aguilar" FechaNacimiento="1972-06-06"  />
    
    <Empleado  idTipoDocumentacionIdentidad="1" 
    idPuesto="7"   IdDepartamento="2" ValorDocumentoIdentidad="506660923" Nombre="Alonso Ledezma Cruz" FechaNacimiento="1982-08-22"  />
    
    <Empleado  idTipoDocumentacionIdentidad="2" 
    idPuesto="8"   IdDepartamento="4" ValorDocumentoIdentidad="801230212" Nombre="Geaninna Martinez Milanez" FechaNacimiento="1986-11-18"  />
    
    <Empleado  idTipoDocumentacionIdentidad="1" 
    idPuesto="9"   IdDepartamento="2" ValorDocumentoIdentidad="102310743" Nombre="Genesis Obando Castro" FechaNacimiento="1992-02-15"  />
    
    <Empleado idTipoDocumentacionIdentidad="1" 
    idPuesto="10"   IdDepartamento="4" ValorDocumentoIdentidad="504210663" Nombre="Miguel Suarez Chan" FechaNacimiento="1992-02-12"  />
    
    <Empleado idTipoDocumentacionIdentidad="1" 
    idPuesto="8"   IdDepartamento="2" ValorDocumentoIdentidad="703430123" Nombre="Jose Baldioceda Castro" FechaNacimiento="1992-02-06"  />
    
</Empleados>

<Usuarios>
    <Usuario username="Goku" pwd="1234" tipo="1"/>
    <Usuario username="Willy" pwd="1234" tipo="1"/>
</Usuarios>
</Datos>
		'

INSERT INTO Puesto

	SELECT
		puesto.value('@Nombre','VARCHAR(54)') AS Nombre,
		puesto.value('@SalarioXHora','INT') AS salarioxHora,
		1 AS activo  --- porque siempre se ponen de manera activa 

	FROM
	(
		SELECT CAST(c AS XML) FROM
		OPENROWSET(
			BULK 'E:\TEC\I SEMESTRE 2021\Bases de Datos I\Proyecto 1\Proyecto-1-Bases\SQL\StoredProcedures\Catalogo_con_ID_BD.xml',
			SINGLE_BLOB
		) AS T(c)
		) AS S(C)
		CROSS APPLY c.nodes('Datos/Catalogos/Puestos/Puesto') AS A(puesto)
		

END
GO

EXEC sp_CargarXML