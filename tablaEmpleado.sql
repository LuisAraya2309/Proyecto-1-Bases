USE [PlanillaObrera]
GO

/****** Object:  Table [dbo].[Empleado]    Script Date: 23/03/2021 16:14:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Empleado](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](64) NOT NULL,
	[FechaNacimiento] [varchar](64) NOT NULL,
	[ValorDocIdentidad] [int] NOT NULL,
	[SaldoVacaciones] [int] NOT NULL,
 CONSTRAINT [PK_Empleado1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

