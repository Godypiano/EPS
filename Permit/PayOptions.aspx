<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PayOptions.aspx.cs" MasterPageFile="~/Default.Master" Inherits="PresentationLayer.Permit.PayOptions" %>

<%@ MasterType VirtualPath="~/Default.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 2%;"></td>
                        <td style="width: 50%;">
                            <a class="navigationbar" href="Dashboard.aspx">Home</a>
                            &nbsp; &gt;&gt; &nbsp;<a class="navigationbar" href="Inbox.aspx">Inbox</a>
                            <asp:Label runat="server" ID="lblview"></asp:Label>
                            <asp:Label runat="server" ID="lblfee"></asp:Label>
                            </td>
                        <td style="width: 46%; text-align:right">
                            </td>
                        <td style="width: 2%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    </table>
                    
                <table style="width: 100%;">
                    
                    <tr>
                        <td style="width:2%;"></td>
                        <td style="width: 96%;">
                            
                        </td>
                        <td style="width:2%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 40px;"></td>
                    </tr>
                    <tr>
                        <td style="width:2%;"></td>
                        <td style="width: 96%;">
                           <asp:Label runat="server" ID="lblPay" Font-Size="22">Payment</asp:Label>&nbsp;&nbsp;
                            <asp:Label runat="server" ID="lblDes" Font-Size="10">Choose Payment method you Prefer</asp:Label>                                    
                        </td>
                        <td style="width:2%;"></td>
                    </tr>
                    
                    <tr>
                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                    </tr>
                    
                    <tr>
                        <td style="width:2%;"></td>
                        <td style="width: 96%; height: 1px; background-color:#8c8b8b;"></td>
                        <td style="width:2%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                    </tr>
                </table>
                <table style="width: 100%;">
                    <tr>
                        <td style="width:2%;"></td>
                        <td style="width: 96%;">
                            <table style="width: 100%;">
                                <tr>
                                    <td style="width:23%;">
                                        <asp:Label runat="server" ID="lblCC" Font-Size="18">CREDIT CARD</asp:Label>
                                    </td>
                                    <td style="width:2%;"></td>
                                    <td style="width:23%;">
                                        <asp:Label runat="server" ID="lblCRDB" Visible="false" Font-Size="18">CRDB BANK</asp:Label>
                                    </td>
                                    <td style="width:2%;"></td>
                                    <td style="width:23%;">
                                    </td>
                                    <td style="width:2%;"></td>
                                    <td style="width:23%;"></td>
                                    <td style="width:2%;"></td>
                                </tr>
                                <tr>
                                    <td colspan="8" style="width: 100%; height: 40px;"></td>
                                </tr>
                                <tr>
                                    <td style="width:23%;">
                                        <asp:Label runat="server" Visible="false" ID="lblCC1" Font-Size="12">You can use Visa/Master Credit Cards</asp:Label>
                                    </td>
                                    <td style="width:2%;"></td>
                                    <td style="width:23%;">
                                        <asp:Label runat="server" ID="lblCRDB1" Visible="false" Font-Size="12">You can use either<br /> CRDB ALPS ONLINE PAYMENTS (BRANCH)<br /> OR<br /> FAHARI HUDUMA WITH SMARTPOS<br /> Payment Method.</asp:Label>
                                    </td>
                                    <td style="width:2%;"></td>
                                    <td style="width:23%;">
                                    </td>
                                    <td style="width:2%;"></td>
                                    <td style="width:23%;"></td>
                                    <td style="width:2%;"></td>
                                </tr>
                                <tr>
                                    <td colspan="8" style="width: 100%; height: 40px;"></td>
                                </tr>
                                <tr>
                                    <td style="width:23%; text-align:right">
                                        <asp:LinkButton runat="server" Font-Size="12" CssClass="navigationbar" Visible="true" ID="lnkCC" OnClick="lnkCC_Click">Continue</asp:LinkButton>
                                    </td>
                                    <td style="width:2%;"></td>
                                    <td style="width:23%; text-align:right">
                                        <asp:LinkButton runat="server" Font-Size="12" CssClass="navigationbar" Visible="false" ID="lnkCRDB" OnClick="lnkCRDB_Click">Continue</asp:LinkButton>
                                    </td>
                                    <td style="width:2%;"></td>
                                    <td style="width:23%;">
                                    </td>
                                    <td style="width:2%;"></td>
                                    <td style="width:23%;"></td>
                                    <td style="width:2%;"></td>
                                </tr>
                                <tr>
                                    <td colspan="8" style="width: 100%; height: 40px;"></td>
                                </tr>
                                <tr>
                                    <td style="width:23%;height: 1px; background-color:#8c8b8b; text-align:right;">
                                    </td>
                                    <td style="width:2%;"></td>
                                    <td style="width:23%;height: 1px; background-color:#8c8b8b; text-align:right;">
                                    </td>
                                    <td style="width:2%;"></td>
                                    <td style="width:23%;">
                                    </td>
                                    <td style="width:2%;"></td>
                                    <td style="width:23%;"></td>
                                    <td style="width:2%;"></td>
                                </tr>
                                <tr>
                                    <td colspan="8" style="width: 100%; height: 40px;"></td>
                                </tr>
                                </table>
                        </td>
                        <td style="width:2%;"></td>
                    </tr>
                    </table>
                   
                
    </div>
</asp:Content>
