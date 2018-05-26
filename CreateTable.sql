USE [bdcamera]
GO

/****** Object:  Table [dbo].[TB_Plano]    Script Date: 19/05/2018 10:05:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TB_Plano](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
	[QtdCameras] [int] NOT NULL,
	[NomeClientes] [varchar](50) NOT NULL,
	[ValorPacotes] [decimal](8, 2) NOT NULL,
	[Fidelidade] [bit] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


