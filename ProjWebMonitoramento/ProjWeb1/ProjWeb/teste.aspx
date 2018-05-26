<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teste.aspx.cs" Inherits="WebApplication1.teste" %>

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
        <asp:Label ID="Label2" runat="server" Text="Quantidade de câmeras"></asp:Label>
        <br />
        <asp:TextBox ID="txtQtdCam" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Valor Unitário"></asp:Label>
        <br />
        <asp:TextBox ID="txtVlUnitario" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Nome Cliente"></asp:Label>
        <br />
        <asp:TextBox ID="txtCliente" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Descrição"></asp:Label>
        <br />
        <asp:TextBox ID="txtDescricao" runat="server" OnTextChanged="txtDescricao_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Fidelidade ?"></asp:Label>
        <br />
        <asp:RadioButton id=Radio1 
           Text="Sim" 
           GroupName="RadioGroup1" 
           runat="server"/><br>
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
        <br />
        <br />
    </form>
    </body>
</html>
