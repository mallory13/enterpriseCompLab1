<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="enterprise_lesson2._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblFirstname" runat="server"></asp:Label>
        <asp:Literal ID="ltlFirstname" runat="server"></asp:Literal>
        <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox>
        <asp:Button ID="btnFirstname" runat="server" Text=" Click Me" OnClick="btnFirstname_Click" />
        <asp:Label ID="lblx" runat="server" Visible="false"></asp:Label>
    </div>
    <div>
        <asp:Literal ID="ltlToppings" runat="server" />
        <asp:DropDownList runat="server" ID="ddlCountry">
            <asp:ListItem Value="1" Text="Canada"></asp:ListItem>
            <asp:ListItem Value="2" Text="Brazil"></asp:ListItem>
            <asp:ListItem Value="3" Text="India"></asp:ListItem>
        </asp:DropDownList>
        <asp:Button runat="server" ID="btnSelections" Text="Show Selections" OnClick="btnSelections_Click" />
        <asp:checkboxlist runat="server" ID="cblToppings">
            <asp:ListItem Value="1" Text="Pepperoni"></asp:ListItem>
            <asp:ListItem Value="2" Text="Mushroom"></asp:ListItem>
            <asp:ListItem Value="3" Text="Chicken"></asp:ListItem>
        </asp:checkboxlist>
    </div>
    </form>
</body>
</html>
