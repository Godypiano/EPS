<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PermitFee1.aspx.cs" MasterPageFile="~/Default.Master" Inherits="PresentationLayer.Permit.PermitFee1" %>

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
                            <asp:LinkButton runat="server" CssClass="navigationbar" Visible="true" ID="lnkEnglish" OnClick="lnkEnglish_Click">English</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton runat="server" Visible="true" CssClass="navigationbar" ID="lnkSwahili" OnClick="lnkSwahili_Click">Swahili</asp:LinkButton>
                            </td>
                        <td style="width: 2%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    </table>
                    <table style="width: 100%;">
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            <asp:Label runat="server" ID="lbl_P_Fee" CssClass="hd1">Permit Fee</asp:Label>
                            </td>
                        <td style="width: 5%;"></td>
                     </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                    </tr>
                  </table>
                <table style="width: 100%;">
                    <tr>
                        <td class="frmhdrs" height="50px" align="center" colspan="2" style="background-color: #889cb1; color: #fff;">
                        <b><asp:Label runat="server" ID="lbl_ALPS">ABNORMAL LOAD PERMIT SYSTEM</asp:Label></b>
                        <br/>
                        <b><asp:Label runat="server" ID="lbl_Permit_Fee">Permit Fee</asp:Label></b>
                        </td>
                    </tr>
                    </table>
                <table style="width: 100%;">
                    <tr>
                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                    </tr>
                    <tr>
                        <td style="width:5%;"></td>
                        <td style="width: 90%;">
                            <asp:GridView ID="gvSurcharge" Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                runat="server" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                HeaderStyle-CssClass="HeaderDatagrid" PageSize="10" AllowPaging="true" OnRowDataBound="schRowDataBound">
                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <PagerStyle CssClass="gridViewPager" />
                                <Columns>
                                    <asp:BoundField DataField="Axel_No" HeaderText="Axle" />
                                    <asp:BoundField DataField="Axel_Actual_Weight" HeaderText="Actual Weight" />
                                    <asp:BoundField DataField="Axel_Allowed_Weight" HeaderText="Allowed Weight" />
                                    <asp:BoundField DataField="Overload_Weight" HeaderText="Over Weight" />
                                    <asp:BoundField DataField="Fees" HeaderText="Fees" />
                                    <asp:BoundField DataField="Axel_Surcharge_Amount" HeaderText="Axle Surcharge" />

                                </Columns>
                            </asp:GridView>                                       
                        </td>
                        <td style="width:5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 40px;"></td>
                    </tr>
                    <tr>
                        <td style="width:5%;"></td>
                        <td style="width: 90%;">
                            <asp:GridView ID="gvGVM" Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                runat="server" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                HeaderStyle-CssClass="HeaderDatagrid" PageSize="10" OnRowDataBound="gvmRowDataBound" AllowPaging="true">
                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <PagerStyle CssClass="gridViewPager" />
                                <Columns>
                                    <asp:BoundField DataField="Axel_Configuration" HeaderText="Axle Configuration" />
                                    <asp:BoundField DataField="GVM_Actual_Weight" HeaderText="Actual GVM" />
                                    <asp:BoundField DataField="GVM_Allowed_Weight" HeaderText="Allowed GVM" />
                                    <asp:BoundField DataField="Overload_GVM_Weight" HeaderText="Over Weight" />
                                    <asp:BoundField DataField="Overload_GVM_Fee" HeaderText="Fees" />
                                    <asp:BoundField DataField="GVM_Surcharge_Amount" HeaderText="GVM Surcharge" />
                                </Columns>
                            </asp:GridView>                                       
                        </td>
                        <td style="width:5%;"></td>
                    </tr>
                    
                    <tr>
                        <td colspan="3" style="width: 100%; height: 10px;"></td>
                    </tr>
                    
                    <tr>
                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                    </tr>
                </table>
                
                    <table style="width: 100%;">
                    <tr>
                        <td style="width:5%;">
                        </td>
                        <td style="width:30%;">
                            <asp:Label runat="server" ID="lblTotal_PerFee">Total Permit Fee</asp:Label>: <asp:Label runat="server" ID="lblTF"></asp:Label>
                        </td>
                        <td style="width:25%;">
                            <table style="width:100%; border:1px solid black;">
                                <tr>
                                    <td colspan="3" style="width: 100%; height: 10px;"></td>
                                </tr>
                                <tr>
                                    <td style="width:3%;">
                                    </td>
                                    <td style="width:35%;">
                                        <asp:Label runat="server" ID="lbl_PerFee">Permit Fee</asp:Label>=
                                    </td>
                                    <td style="width:62%;">
                                        <asp:Label runat="server" ID="lblPFee"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 100%; height: 10px;"></td>
                                </tr>
                                <tr>
                                    <td style="width:3%;">
                                    </td>
                                    <td style="width:35%;">
                                        <asp:Label runat="server" ID="lblSurcharges">Surcharges</asp:Label>=
                                    </td>
                                    <td style="width:62%;">
                                        <asp:Label runat="server" ID="lblSF"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 100%; height: 10px;"></td>
                                </tr>
                                <tr runat="server" id="trppf" visible="false">
                                    <td style="width:3%;">
                                    </td>
                                    <td style="width:35%;">
                                        Previous paid permit fee=
                                    </td>
                                    <td style="width:62%;">
                                        <asp:Label runat="server" ID="lblppf"></asp:Label>
                                    </td>
                                </tr>
                                <tr runat="server" id="trrppf" visible="false">
                                    <td colspan="3" style="width: 100%; height: 10px;"></td>
                                </tr>
                                <tr runat="server" id="trsf" visible="false">
                                    <td style="width:3%;">
                                    </td>
                                    <td style="width:35%;">
                                        Previous paid surcharge fee=
                                    </td>
                                    <td style="width:62%;">
                                        <asp:Label runat="server" ID="lblpsf"></asp:Label>
                                    </td>
                                </tr>
                                <tr runat="server" id="trrsf" visible="false">
                                    <td colspan="3" style="width: 100%; height: 10px;"></td>
                                </tr>
                                <tr>
                                    <td style="width:3%;">
                                    </td>
                                    <td style="width:35%;">
                                        <asp:Label runat="server" ID="lbl_TotalFee">TOTAL Fee</asp:Label>=
                                    </td>
                                    <td style="width:62%;">
                                        <asp:Label runat="server" ID="lbltotF"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 100%; height: 10px;"></td>
                                </tr>
                                </table>
                        </td>
                        <td style="width:25%;"></td>
                        <td style="width:20%;"></td>
                        <td style="width:5%;">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6" style="width: 100%; height: 20px;"></td>
                    </tr>
                    </table>
                <table style="width: 100%;">
                    <tr>
                        <td style="width:5%;"></td>
                        <td style="width: 90%;">
                            <asp:Label runat="server" ID="lbl_Mean">Mean</asp:Label> = <asp:Label runat="server" ID="lblMean"></asp:Label> TZS for 100 USD; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <asp:Label runat="server" ID="lbl_SBuying">Spot Buying</asp:Label> = <asp:Label runat="server" ID="lblBuy"></asp:Label> TZS for 100 USD; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <asp:Label runat="server" ID="lbl_SSelling">Spot Selling</asp:Label> = <asp:Label runat="server" ID="lblSell"></asp:Label> TZS for 100 USD; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            </td>
                        <td style="width:5%;"></td>
                    </tr>
                     <tr>
                        <td colspan="3" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width:5%;"></td>
                        <td style="width: 90%;">
                            <asp:Label runat="server" ID="lbl_RefNo">Your Reference No</asp:Label>: <asp:Label runat="server" ID="iRef"></asp:Label><br /><br />
                            <asp:Label runat="server" ID="lbl_One">One</asp:Label> USD = <asp:Label runat="server" ID="lblUSD"></asp:Label> TZS <asp:Label runat="server" ID="lbl_AsOn">as on</asp:Label> 
                            <asp:Label runat="server" ID="lblDate"></asp:Label><br /><br />
                            <asp:Label runat="server" ID="lbl_Total_Permit_Fee">Total Permit Fee</asp:Label> = <asp:Label runat="server" ID="lbltot"></asp:Label> X 
                            <asp:Label runat="server" ID="lbltzs"></asp:Label> TZS = <asp:Label runat="server" ID="lbltottzs"></asp:Label> TZS
                            
                            </td>
                        <td style="width:5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 30px;"></td>
                    </tr>
                    <tr>
                        <td style="width:5%;"></td>
                        <td style="width: 90%; text-align:center">
                            <asp:Button runat="server" ID="btnPay" Text="Pay Permit Fee" OnClick="btnPay_Click" />
                            </td>
                        <td style="width:5%;"></td>
                        </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 30px;"></td>
                    </tr>
                    </table>
    </div>
</asp:Content>
