<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewInvoice.aspx.cs" MasterPageFile="~/Default_admin.Master" Inherits="PresentationLayer.Admin.ViewInvoice" %>

<%@ MasterType VirtualPath="~/Default_admin.master" %>
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
                            &nbsp; &gt;&gt; &nbsp;<a class="navigationbar" href="Archive.aspx">Archive</a>
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
                            <label class="hd1">View Invoice</label>
                         </legend>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 100%; height: 20px;"></td>
                    </tr>
                  </table>
                <table style="width: 100%;">
                    <tr>
                        <td colspan="3" style="width: 100%; text-align:center">
                            <asp:LinkButton runat="server" ID="lnkInvoice" CausesValidation="false" OnClick="lnkInvoice_Click">Print to PDF</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 15px;"></td>
                    </tr>
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
                            Special Load Permit Invoice
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
                           <asp:Label runat="server" ID="lblcnt"></asp:Label><br />
                           <asp:Label runat="server" ID="lblinvno"></asp:Label>
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
                        <td style="width: 90%;">
                            <asp:Label runat="server" ID="lblappno"></asp:Label>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <!--<tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            Payments to be made against A/c No : 0150237556200
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 15px;"></td>
                    </tr>-->
                    <tr>
                    <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            <asp:Label runat="server" ID="lblappdate"></asp:Label>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 15px;"></td>
                    </tr>
                       <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            <asp:Label runat="server" ID="lblexpdate"></asp:Label>
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
                    <td style="width: 15%;">
                        Kindly Pay:-
                    </td>
                    <td style="width: 70%;">
                        <asp:Label runat="server" ID="lblperfee"></asp:Label>
                    </td>
                    <td style="width: 10%;"></td>
                    </tr>
                        <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr runat="server" id="trsur" visible="false">
                    <td style="width: 5%;"></td>
                    <td style="width: 15%;">
                        
                    </td>
                    <td style="width: 70%;">
                        <asp:Label runat="server" ID="lblsurfee"></asp:Label>
                    </td>
                    <td style="width: 10%;"></td>
                    </tr>
                     <tr runat="server" id="trrsur" visible="false">
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                        <tr>
                    <td style="width: 5%;"></td>
                    <td style="width: 15%;">
                       
                    </td>
                    <td style="width: 70%;">
                        <asp:Label runat="server" ID="lbltotfee"></asp:Label>
                    </td>
                    <td style="width: 10%;"></td>
                    </tr>
                        <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                         <tr>
                    <td style="width: 5%;"></td>
                    <td style="width: 15%;">
                       
                    </td>
                    <td style="width: 70%;">
                        <asp:Label runat="server" ID="lblOne"></asp:Label>
                    </td>
                    <td style="width: 10%;"></td>
                    </tr>
                        <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                         <tr>
                    <td style="width: 5%;"></td>
                    <td style="width: 15%;">
                       
                    </td>
                    <td style="width: 70%;">
                        <asp:Label runat="server" ID="lblTsh"></asp:Label>
                    </td>
                    <td style="width: 10%;"></td>
                    </tr>
                        <tr>
                        <td colspan="4" style="width: 100%; height: 30px;"></td>
                    </tr>
                        </table>
                    <table style="width: 100%;">
                         <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 15%;">
                            Details: 
                        </td>
                        <td style="width: 70%;">
                            <asp:Label runat="server" ID="lblvehi"></asp:Label>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 30px;"></td>
                    </tr>
                        </table>
                    <!--<table style="width: 100%;">
                         <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            Payments to be made against A/c No : 0150237556200
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
                            Mode of Payment : VISA/MASTERCARD
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 30px;"></td>
                    </tr>
                        </table>-->
                    <table style="width: 100%;">
                         <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 15%;">
                            Approved By: 
                        </td>
                        <td style="width: 70%;">
                            <asp:Label runat="server" ID="lblapprove"></asp:Label>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 15px;"></td>
                    </tr>
                          <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 15%;">
                            Designation: 
                        </td>
                        <td style="width: 70%;">
                            DSE
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 15px;"></td>
                    </tr>
                          <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 15%;">
                            Date: 
                        </td>
                        <td style="width: 70%;">
                            <asp:Label runat="server" ID="lblinvdate"></asp:Label>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 30px;"></td>
                    </tr>
                        </table>
                    <table style="width: 100%;">
                         <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            Kindly Make payments through Bank(NMB/CRDB), VISA/MASTERCARD or Mobile (AirtelMoney / HaloPesa / M-Pesa / TigoPesa / TPesa) by selecting \"Government Payments\". Use provided Payment Control Number as your payment reference.
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 10px;"></td>

                    </tr>
                        <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            For More Information Please contact your Service Provider.
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
