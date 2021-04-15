USE [PlanillaObrera]
GO

/****** Object:  Table [dbo].[Empleado]    Script Date: 15/04/2021 02:23:59 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Empleado](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idPuesto] [int] NOT NULL,
	[idDepartamento] [int] NOT NULL,
	[idTipoDocIdentidad] [int] NOT NULL,
	[nombre] [varchar](40) NOT NULL,
	[fechaNacimiento] [varchar](40) NOT NULL,
	[valorDocIdentidad] [int] NOT NULL,
	[saldoVacaciones] [int] NOT NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

