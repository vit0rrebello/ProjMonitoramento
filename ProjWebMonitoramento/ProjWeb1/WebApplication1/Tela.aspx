<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tela.aspx.cs" Inherits="WebApplication1.teste" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 494px;
            width: 798px;
        }
        #d1{
            float:left
        }
         #d2{
            float:right
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Label ID="Label1" runat="server" Text="Compra de Câmeras"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Nome Cliente"></asp:Label>
        <br />
        <asp:TextBox ID="txtCliente" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Quantidade de câmeras"></asp:Label>
        <br />
        <asp:TextBox ID="txtQtdCam" type="number" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Valor Unitário"></asp:Label>
        <br />
        <asp:TextBox ID="txtVlUnitario" type="number" step="0.01" runat="server"></asp:TextBox>
        <br />
        
        <br />
        <asp:Label ID="Label5" runat="server" Text="Descrição"></asp:Label>
        <br />
        <asp:TextBox ID="txtDescricao" runat="server" OnTextChanged="txtDescricao_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Fidelidade:"></asp:Label>
        <asp:RadioButton id=Radio1 
           Text="Sim" 
           GroupName="RadioGroup1" 
           runat="server" Checked="True"/>
      <asp:RadioButton id=Radio2 
           Text="Não" 
           GroupName="RadioGroup1"  
           runat="server" /><br>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Valor Total"></asp:Label>
        <br />
        <asp:TextBox ID="txtVlTotal" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Finalizar Compra" />
        <asp:Button ID="btnConsultar" runat="server" OnClick="btnConsultar_Click" style="margin-left: 18px" Text="Consultar" Width="104px" />
        <asp:Button ID="btnLimpar" runat="server" OnClick="btnLimpar_Click" style="margin-left: 23px" Text="Limpar Campos" Width="117px" />
        <div style="margin-left: 40px">
        </div>
        <div style="margin-left: 40px">
        </div>
        <br />
        <br />
        <asp:GridView ID="GVPlano" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    </form>
    </body>
</html>
