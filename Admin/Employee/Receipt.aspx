<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Receipt.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.Receipt" %>

<%@ MasterType VirtualPath="~/Default_custom.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upRegister" runat="server">
            <ContentTemplate>
                <table style="width: 100%;">
                    <tr>
                    <td style="width: 2%;"></td>
                    <td style="width: 96%;">
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 2%;"></td>
                        <td style="width: 96%;">
                            <a class="navigationbar" href="Dashboard.aspx">Home</a>
                            &nbsp; &gt;&gt; &nbsp;<a class="navigationbar" href="Inbox.aspx">Inbox</a>
                            <asp:Label runat="server" ID="lblview"></asp:Label>
                            </td>
                        <td style="width: 2%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 10px;"></td>
                    </tr>
                  </table>
                         <fieldset>
                        <legend>
                            <asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label>
                            <label class="hd1">View Receipt</label>
                         </legend>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 100%; height: 20px;"></td>
                    </tr>
                  </table>
                <table style="width: 100%;">
                    
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%; text-align:center;font-size:18px;">
                            THE UNITED REPUBLIC OF TANZANIA
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%; text-align:center;font-size:18px;">
                            MINISTRY OF WORKS, TRANSPORT AND COMMUNICATION
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%; text-align:center">
                            <img height="50px" width="50px" src="/Images/coarm.JPG" />
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%; text-align:center;font-size:18px;">
                            Receipt
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 30px;"></td>
                    </tr>
                </table>
               <table style="width: 100%;">
                   <tr>
                       <td style="width: 5%;"></td>
                       <td style="width: 90%; text-align:right">
                           <asp:Label runat="server" ID="lblrecno"></asp:Label>
                       </td>
                       <td style="width: 5%;"></td>
                   </tr>
                   <tr>
                        <td colspan="3" style="width: 100%; height: 15px;"></td>
                    </tr>
                  <tr>
                       <td style="width: 5%;"></td>
                       <td style="width: 90%; text-align:right">
                           <asp:Label runat="server" ID="lblrecdate"></asp:Label>
                       </td>
                       <td style="width: 5%;"></td>
                   </tr>
                   <tr>
                        <td colspan="3" style="width: 100%; height: 15px;"></td>
                    </tr>
                   
                   </table>
                    <table style="width: 100%;">
                   <tr>
                       <td style="width: 5%;"></td>
                       <td style="width: 15%;">
                           M/S in Form:
                       </td>
                       <td style="width: 60%;">
                           <asp:Label runat="server" ID="lbln"></asp:Label>
                       </td>
                       <td style="width: 15%;">
                          
                       </td>
                       <td style="width: 5%;"></td>
                   </tr>
                   <tr>
                        <td colspan="5" style="width: 100%; height: 5px;"></td>
                    </tr>

                   <tr>
                       <td style="width: 5%;"></td>
                       <td style="width: 15%;">
                           P.O.Box:
                       </td>
                       <td style="width: 60%;">
                           <asp:Label runat="server" ID="lbladd1"></asp:Label>
                       </td>
                       <td style="width: 15%;">
                           
                       </td>
                       <td style="width: 5%;"></td>
                   </tr>
                   <tr>
                        <td colspan="5" style="width: 100%; height: 5px;"></td>
                    </tr>
                    <tr runat="server" id="tradd2" visible="false">
                       <td style="width: 5%;"></td>
                       <td style="width: 15%;">
                           Zip/Postal Code:
                       </td>
                       <td style="width: 60%;">
                           <asp:Label runat="server" ID="lblpo"></asp:Label>
                       </td>
                       <td style="width: 15%;">
                       </td>
                       <td style="width: 5%;"></td>
                   </tr>
                   <tr runat="server" id="tgadd2" visible="false">
                        <td colspan="5" style="width: 100%; height: 5px;"></td>
                    </tr>
                      <tr runat="server" id="trcity" visible="false">
                       <td style="width: 5%;"></td>
                       <td style="width: 15%;">
                           City:
                       </td>
                       <td style="width: 60%;">
                           <asp:Label runat="server" ID="lblcity"></asp:Label>
                       </td>
                       <td style="width: 15%;">
                       </td>
                       <td style="width: 5%;"></td>
                   </tr>
                   <tr runat="server" id="trrcity" visible="false">
                        <td colspan="5" style="width: 100%; height: 5px;"></td>
                    </tr>
                    <tr>
                       <td style="width: 5%;"></td>
                       <td style="width: 15%;">
                           Country:
                       </td>
                       <td style="width: 60%;">
                           <asp:Label runat="server" ID="lblCountry"></asp:Label>
                       </td>
                       <td style="width: 15%;">
                       </td>
                       <td style="width: 5%;"></td>
                   </tr>
                   <tr>
                        <td colspan="5" style="width: 100%; height: 30px;"></td>
                    </tr>
                   </table>
                
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            <asp:Label runat="server" ID="lblinvno"></asp:Label>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                    <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            <asp:Label runat="server" ID="lblappno"></asp:Label>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            Payments to be made against A/c No : 0150237556200
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                    <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            <asp:Label runat="server" ID="lblpmode"></asp:Label>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 30px;"></td>
                    </tr>
                    </table>
                    <table style="width: 100%;">
                    <tr>
                    <td style="width: 5%;"></td>
                    <td style="width: 20%;">
                        Paid Amount:-
                    </td>
                    <td style="width: 70%;">
                        <asp:Label runat="server" ID="lblperfee"></asp:Label>
                    </td>
                    <td style="width: 5%;"></td>
                    </tr>
                        <tr>
                        <td colspan="3" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr runat="server" id="trsur" visible="false">
                    <td style="width: 5%;"></td>
                    <td style="width: 20%;">
                        
                    </td>
                    <td style="width: 70%;">
                        <asp:Label runat="server" ID="lblsurfee"></asp:Label>
                    </td>
                    <td style="width: 5%;"></td>
                    </tr>
                        <tr runat="server" id="trrsur">
                        <td colspan="3" style="width: 100%; height: 10px;"></td>
                    </tr>
                        <tr>
                    <td style="width: 5%;"></td>
                    <td style="width: 20%;">
                       
                    </td>
                    <td style="width: 70%;">
                        <asp:Label runat="server" ID="lbltotfee"></asp:Label>
                    </td>
                    <td style="width: 5%;"></td>
                    </tr>
                        <tr>
                        <td colspan="3" style="width: 100%; height: 30px;"></td>
                    </tr>
                        </table>
                    <table style="width: 100%;">
                         <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            <asp:Label runat="server" ID="lblvehi"></asp:Label>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 30px;"></td>
                    </tr>
                        </table>
                
                    
                     </fieldset>
                          </td>
                    <td style="width: 2%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                    </tr>
                </table>
                
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
