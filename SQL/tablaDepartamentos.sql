USE [PlanillaObrera]
GO

/****** Object:  Table [dbo].[Departamentos]    Script Date: 06/04/2021 02:23:01 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Departamentos](
	[Id] [int] NOT NULL,
	[Nombre] [varchar](64) NOT NULL,
	[IdJefe] [int] NULL,
 CONSTRAINT [PK_Departamentos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Departamentos]  WITH CHECK ADD  CONSTRAINT [FK_Departamentos_Empleado] FOREIGN KEY([IdJefe])
REFERENCES [dbo].[Empleado] ([Id])
GO

ALTER TABLE [dbo].[Departamentos] CHECK CONSTRAINT [FK_Departamentos_Empleado]
GO

