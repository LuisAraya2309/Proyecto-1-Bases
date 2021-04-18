USE [PlanillaObrera]
GO

/****** Object:  Table [dbo].[TipoDocIdentidad]    Script Date: 18/04/2021 11:41:05 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TipoDocIdentidad](
	[id] [int] NOT NULL,
	[nombre] [varchar](40) NOT NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_TipoDocIdentidad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

