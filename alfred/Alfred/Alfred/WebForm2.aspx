<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Alfred.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        table
        {
            border: 1px solid #ccc;
        }
        table th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }
        table th, table td
        {
            padding: 5px;
            border-color: #ccc;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
         <br />
      
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="IdDia" HeaderText="Customer Id" ItemStyle-Width="100" />
            <asp:BoundField DataField="numero_dia" HeaderText="Name" ItemStyle-Width="150" />
            <asp:BoundField DataField="Nombre_Mes" HeaderText="Country" ItemStyle-Width="150" />
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>
