USE [PlanillaObrera]
GO

/****** Object:  Table [dbo].[Departamento]    Script Date: 25/03/2021 04:43:41 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Departamento](
	[Id] [int] NOT NULL,
	[Nombre] [varchar](64) NOT NULL,
	[IdJefe] [int] NOT NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Departamento]  WITH CHECK ADD  CONSTRAINT [FK_Departamento_Empleado] FOREIGN KEY([IdJefe])
REFERENCES [dbo].[Empleado] ([Id])
GO

ALTER TABLE [dbo].[Departamento] CHECK CONSTRAINT [FK_Departamento_Empleado]
GO

