<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SampleService.aspx.cs" Inherits="PresentationLayer.SampleService" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Registration Number: <asp:TextBox ID="txtRegNo" runat="server"></asp:TextBox>
        <asp:Button runat="server" ID="btnSubmit" Text="Submit" OnClick="btnSubmit_Click" />
    </div>
    </form>
</body>
</html>
