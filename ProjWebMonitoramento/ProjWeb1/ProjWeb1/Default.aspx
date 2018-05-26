<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjWeb1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Olá Turma!<br />
            <br />
            <asp:TextBox ID="TxtDescricao" runat="server" Width="229px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="BtnOK" runat="server" OnClick="BtnOK_Click" Text="OK" Width="130px" />
            <br />
            <br />
            <br />
            <asp:Label ID="LblMSG" runat="server"></asp:Label>
        </div>
        <p>
            <asp:Button ID="BtnListar" runat="server" OnClick="BtnListar_Click" Text="Listar" />
        </p>
        <p>
            <asp:Label ID="Lista" runat="server"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <asp:GridView ID="GDVMensagem" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
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
