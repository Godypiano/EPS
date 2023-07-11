<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PermitFeeReturn.aspx.cs" MasterPageFile="~/Default.Master" Inherits="PresentationLayer.Permit.PermitFeeReturn" %>

<%@ MasterType VirtualPath="~/Default.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upRegister" runat="server">
            <ContentTemplate>
                <table style="width: 100%;">
                    <tr>
                        <td class="frmhdrs" height="50px" align="center" colspan="2" style="background-color: #889cb1; color: #fff;">
                        <b>ABNORMAL LOAD PERMIT SYSTEM</b>
                        <br>
                        <b>Permit Fee</b>
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
                                HeaderStyle-CssClass="HeaderDatagrid" PageSize="10" AllowPaging="true" OnRowDataBound="gvmRowDataBound">
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
                            Total Permit Fee: <asp:Label runat="server" ID="lblTF"></asp:Label>
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
                                        Permit Fee=
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
                                        Surcharges=
                                    </td>
                                    <td style="width:62%;">
                                        <asp:Label runat="server" ID="lblSF"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 100%; height: 10px;"></td>
                                </tr>
                                <tr>
                                    <td style="width:3%;">
                                    </td>
                                    <td style="width:35%;">
                                        TOTAL=
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
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
