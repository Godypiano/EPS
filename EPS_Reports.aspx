<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EPS_Reports.aspx.cs" MasterPageFile="~/Default_Plain.Master" Inherits="PresentationLayer.EPS_Reports" %>
<%@ MasterType VirtualPath="~/Default_Plain.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upDefault" runat="server">
            <ContentTemplate>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    
                    <tr>
                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                    </tr>
                  </table>
        <table style="width: 100%;">
            `<tr>
                <td style="width: 10%;"></td>
                <td style="width:80%;">
                    <div class="login-card">
                        <h1>Log-in</h1><br>
                        <label>User ID</label>
                        <asp:TextBox runat="server" ID="txtEmail" MaxLength="100"></asp:TextBox><br />
                        <asp:RequiredFieldValidator CssClass="red" runat="server" ID="rfvEmail" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Please enter Login ID"></asp:RequiredFieldValidator>
                        <br />
                        <label>Password</label>
                        <asp:TextBox runat="server" ID="txtPwd" TextMode="Password" MaxLength="50"></asp:TextBox><br />
                        <asp:RequiredFieldValidator runat="server" ID="rfvPwd" CssClass="red" ControlToValidate="txtPwd" Display="Dynamic" ErrorMessage="Please enter password"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Button runat="server" ID="btnLogin" Text="Login" ToolTip="Login to ALPS Portal" CssClass="login login-submit" OnClick="btnLogin_Click" />
                      
                    </div>
                </td>
                <td style="width: 10%;"></td>
            </tr>
            <tr>
                <td colspan="3" style="width: 100%; height: 20px;"></td>
            </tr>
            
            </table>

                </ContentTemplate>
           
            </asp:UpdatePanel>
        </div>
</asp:Content>