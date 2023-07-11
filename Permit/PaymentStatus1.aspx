<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentStatus1.aspx.cs" MasterPageFile="~/Default.Master" Inherits="PresentationLayer.Permit.PaymentStatus1" %>

<%@ MasterType VirtualPath="~/Default.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upRegistration" runat="server">
            <ContentTemplate>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            <a class="navigationbar" href="Dashboard.aspx">Home</a>
                            &nbsp; &gt;&gt; &nbsp;<a class="navigationbar" href="Inbox.aspx">Inbox</a>
                            <asp:Label runat="server" ID="lblsta"></asp:Label>
                            </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            <label class="hd1">Payments Status</label>
                            </td>
                        <td style="width: 5%;"></td>
                     </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                    </tr>
                  </table>
        <table style="width: 100%;">
            <tr>
                <td style="width: 10%;"></td>
                <td style="width: 80%; text-align:center">
                    
                   <asp:Label runat ="server" ID="lblResponse"></asp:Label>
                </td>
               
                <td style="width: 10%;"></td>
            </tr>
            <tr>
                <td colspan="3" style="width: 100%; height: 30px;"></td>
            </tr>
            <tr>
                <td style="width: 10%;"></td>
                <td style="width: 80%; text-align:center">
                    
                   <asp:Label runat ="server" ID="lblReceipt"></asp:Label>
                </td>
               
                <td style="width: 10%;"></td>
            </tr>
            <tr>
                <td colspan="3" style="width: 100%; height: 30px;"></td>
            </tr>
            <tr>
                <td style="width: 10%;"></td>
                <td style="width: 80%; text-align:center">
                    
                   <asp:Label runat ="server" ID="lblStatus"></asp:Label>
                </td>
               
                <td style="width: 10%;"></td>
            </tr>
            <tr>
                <td colspan="3" style="width: 100%; height: 30px;"></td>
            </tr>

            <tr>
                <td style="width: 10%;"></td>
                <td style="width: 80%; text-align:center">
                    
                   <asp:LinkButton runat="server" ID="lnkDB" OnClick="lnkDB_Click">Continue</asp:LinkButton>
                </td>
               
                <td style="width: 10%;"></td>
            </tr>
            <tr>
                <td colspan="3" style="width: 100%; height: 30px;"></td>
            </tr>

           
        </table>
 
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
</asp:Content>