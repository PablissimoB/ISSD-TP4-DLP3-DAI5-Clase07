<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Clase7.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="No completo el campo Username" ForeColor="#CC3300" Display="None"></asp:RequiredFieldValidator>
            <br />
            Reingrese su Username
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox3" Display="None" ErrorMessage="No coinciden" ForeColor="#CC3300"></asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="No reingreso el Username" ForeColor="#CC3300" Display="None"></asp:RequiredFieldValidator>
            <br />
            Edad <asp:TextBox ID="TextBox2" runat="server" Width="78px"></asp:TextBox>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" Display="None" ErrorMessage="La edad no esta entre 12 y 99" ForeColor="#CC3300" MaximumValue="99" MinimumValue="12" Type="Integer"></asp:RangeValidator>
            <br />
            Año nacimiento
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Ingrese un año valido" ForeColor="#CC3300" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            <br />
            Email
            <asp:TextBox ID="TextBox4" runat="server" Width="426px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" Display="None" ErrorMessage="El valor ingresado no es un Email" ForeColor="#CC3300" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator>
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC3300" />
            <br />
            <br />

            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
