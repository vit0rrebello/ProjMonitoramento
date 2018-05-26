USE [bdcamera]
GO

/****** Object:  StoredProcedure [dbo].[PR_CONSULTAR_PLANO]    Script Date: 19/05/2018 10:06:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		Vitor Rebello
-- Create date: 18/05/2018
-- Description:	Consultar Mensagens
-- =============================================
CREATE PROCEDURE [dbo].[PR_CONSULTAR_PLANO]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT descricao, QtdCameras, NomeClientes, ValorPacotes, Fidelidade FROM TB_Plano;
END





GO


