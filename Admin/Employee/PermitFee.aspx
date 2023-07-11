<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PermitFee.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.PermitFee" %>

<%@ MasterType VirtualPath="~/Default_custom.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upRegister" runat="server">
            <ContentTemplate>
                <table style="width: 100%;">
                    <tr>
                        <td class="frmhdrs" height="50px" align="center" colspan="2" style="background-color: #889cb1; color: #fff;">
                        <b>ROADS FUND BOARD</b>
                        <br>
                        <b>Permit Fee</b>
                        </td>
                    </tr>
                    </table>
                <table style="width: 100%;">
                    <tr>
                        <td colspan="5" style="width: 100%; height: 20px;"></td>
                    </tr>
                    <tr>
                        <td style="width:5%;"></td>
                        <td style="width: 80%;">
                            <asp:GridView ID="gvSurcharge" Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                runat="server" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                HeaderStyle-CssClass="HeaderDatagrid" PageSize="10" AllowPaging="true">
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
                        <td colspan="5" style="width: 100%; height: 40px;"></td>
                    </tr>
                    <tr>
                        <td style="width:5%;"></td>
                        <td style="width: 80%;">
                            <asp:GridView ID="gvGVM" Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                runat="server" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                HeaderStyle-CssClass="HeaderDatagrid" PageSize="10" AllowPaging="true">
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
                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                    </tr>
                    
                    <tr>
                        <td colspan="5" style="width: 100%; height: 20px;"></td>
                    </tr>
                </table>
                <!--<table style="width: 100%;">
                    <tr>
                        <td style="width:10%;">
                        </td>
                        <td style="width:80%;">
                            Total GVM Excess: <asp:Label runat="server" ID="lblGVM"></asp:Label>
                            &nbsp;&nbsp;&nbsp;=> Total Axel Fee: <asp:Label runat="server" ID="lblGVMFee"></asp:Label>
                            &nbsp;&nbsp;&nbsp;=> Total Axel Surcharge Fee: <asp:Label runat="server" ID="lblGVMSF"></asp:Label>
                        </td>
                        <td style="width:10%;">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                    </tr>
                    <tr>
                        <td style="width:10%;">
                        </td>
                        <td style="width:80%;">
                            Total Axel Excess: <asp:Label runat="server" ID="lblAxel"></asp:Label>
                            &nbsp;&nbsp;&nbsp;=> Total Axel Fee: <asp:Label runat="server" ID="lblAxfee"></asp:Label>
                            &nbsp;&nbsp;&nbsp;=> Total Axel Surcharge Fee: <asp:Label runat="server" ID="lblAxSF"></asp:Label>
                        </td>
                        <td style="width:10%;">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                    </tr>
                    </table>-->
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
