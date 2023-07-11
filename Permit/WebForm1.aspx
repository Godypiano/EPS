<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="PresentationLayer.Permit.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="MyScriptManager" runat="server" />

            <br />

            <br />

            <table border="0">

                <tr>

                    <td>

                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">

                            <asp:ListItem Value="0">Choose...</asp:ListItem>

                            <asp:ListItem Value="1">test1</asp:ListItem>

                            <asp:ListItem Value="2">Test2</asp:ListItem>

                        </asp:DropDownList>

                    </td>

                    <td>

                        

                    </td>

                </tr>

                <tr>

                    <td>

                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">

                            <ContentTemplate>

                                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" style="height: 22px">
                                </asp:DropDownList>

                               

                            </ContentTemplate>

                            <Triggers>

                                <asp:AsyncPostBackTrigger ControlID="DropDownList1" EventName="SelectedIndexChanged" />

                            </Triggers>

                        </asp:UpdatePanel>

                    </td>

                    <td></td>

                </tr>
                <tr>
                <td style="width: 10%;"></td>
                <td style="width: 30%;">
                    <label>Cargo Images & Drawings</label>
                </td>
                <td style="width: 50%;">
                    <asp:FileUpload runat="server" ID="fuDraw" />
                    <asp:RequiredFieldValidator runat="server" ID="rfvDraw" ControlToValidate="fuDraw" Display="Dynamic" ErrorMessage="Please upload file"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 10%;"></td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height: 10px;"></td>
            </tr>
            </table>
        </div>

        
<asp:TextBox ID="txtDate" runat="server" ReadOnly="true"></asp:TextBox>
<asp:ImageButton ID="imgPopup" ImageUrl="images/calendar.png" ImageAlign="Bottom"
    runat="server" />
<ajaxToolkit:CalendarExtender ID="Calendar1" PopupButtonID="imgPopup" runat="server" TargetControlID="txtDate"
    Format="dd/MM/yyyy">
</ajaxToolkit:CalendarExtender>
        
    </form>
</body>
</html>
