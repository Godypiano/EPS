<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="PresentationLayer.Permit.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     Enter Barcode Code:<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Generate" />
            &nbsp;
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Show" />
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" />
                        
    </div>
    </form>
</body>
</html>
