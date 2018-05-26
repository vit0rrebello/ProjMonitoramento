USE [bdcamera]
GO

/****** Object:  StoredProcedure [dbo].[PR_INSERIR_PLANO]    Script Date: 19/05/2018 10:06:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Vitor Rebello>
-- Create date: <18/05/2018>
-- Description:	<Incluir msg na base de dados>
-- =============================================
CREATE PROCEDURE [dbo].[PR_INSERIR_PLANO]
	-- Add the parameters for the stored procedure here
	@Descricao VARCHAR (40),
    @QtdCameras Int,
    @NomeClientes Varchar (40),
    @ValorPacotes Decimal (8, 2),
    @Fidelidade bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO TB_Plano(Descricao, QtdCameras, NomeClientes, ValorPacotes, Fidelidade) 
	values (@Descricao, @QtdCameras, @NomeClientes, @ValorPacotes,  @Fidelidade);

END



GO


