<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportsAll.aspx.cs" MasterPageFile="~/Default.Master" Inherits="PresentationLayer.Admin.Reports.ReportsAll" %>
<%@ MasterType VirtualPath="~/Default.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
         <asp:UpdatePanel ID="upReportDaily" runat="server">
            <ContentTemplate>
                <table style="width: 100%;">
                    <tr>
                        <td colspan="4" style="width: 100%; height: 20px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 45%;">
                            <label>Select Report Type</label>&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList runat="server" ID="ddlReports">
                                <asp:ListItem Value="">Select Report Type</asp:ListItem>
                                <asp:ListItem Value="invoice">Invoice Report</asp:ListItem>
                                <asp:ListItem Value="dtr">Daily Transaction Report</asp:ListItem>
                                <asp:ListItem Value="abn">Abnormal/Wide Load Permit Report</asp:ListItem>
                                <asp:ListItem Value="drp">Daily Report</asp:ListItem>
                                <asp:ListItem Value="mrp">Monthly Report</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 45%;">
                            
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    
                    <tr>
                        <td colspan="4" style="width: 100%; height: 20px;"></td>
                    </tr>
                    
                    <tr>
                        <td style="width: 5%;"></td>
                        <td colspan="2" style="width: 90%;">
                            <asp:GridView ID="gvInvoice" Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                runat="server" ShowFooter="true" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                HeaderStyle-CssClass="HeaderDatagrid" OnRowDataBound="gvInvoice_RowDataBound" PageSize="20" AllowPaging="true">
                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <PagerStyle CssClass="gridViewPager" />
                                <FooterStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <Columns>
                                    <asp:BoundField DataField="Permit_Application_No" HeaderText="Application No" FooterText="Total" />
                                    <asp:TemplateField HeaderText="Permit Fee">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="lblPFee" Text='<%#Eval("Permit_Fee") %>'></asp:Label>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                         <asp:Label ID="lblPFTotal" runat="server"></asp:Label>
                                         </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Surcharage Fee">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="lblSFee" Text='<%#Eval("Surcharge_Fee") %>'></asp:Label>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                         <asp:Label ID="lblSFTotal" runat="server"></asp:Label>
                                         </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Contact_Person" HeaderText="Transporter Name" />
                                    <asp:BoundField DataField="Truck_No" HeaderText="Truck Number" />
                                    <asp:BoundField DataField="GVM_Actual_Weight" HeaderText="GVM" />
                                    <asp:BoundField DataField="Route_From" HeaderText="From" />
                                    <asp:BoundField DataField="Route_To" HeaderText="To" />
                                    <asp:BoundField DataField="Application_Submit_Date" HeaderText="Application Date" />
                                    
                                    
                                </Columns>
                            </asp:GridView>
                        </td>
                        <td style="width: 5%;"></td>
                        </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 20px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td colspan="2" style="width: 90%;">
                            <asp:GridView ID="gvdtr" Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                runat="server" ShowFooter="true" AutoGenerateColumns="false" OnRowDataBound="gvdtr_RowDataBound" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                HeaderStyle-CssClass="HeaderDatagrid" PageSize="20" AllowPaging="true">
                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <PagerStyle CssClass="gridViewPager" />
                                <FooterStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <Columns>
                                    <asp:BoundField DataField="Permit_Application_No" HeaderText="Application No" FooterText="Total" />
                                    <asp:BoundField DataField="Contact_Person" HeaderText="Transporter Name" />
                                    <asp:BoundField DataField="Cargo_Type" HeaderText="Type of Cargo" />
                                    <asp:BoundField DataField="Cargo_Details" HeaderText="Cargo Details" />
                                    <asp:BoundField DataField="Truck_No" HeaderText="Truck Number" />
                                    <asp:BoundField DataField="Axel_Configuration" HeaderText="Axel Configuration" />
                                    <asp:BoundField HeaderText="Horse Power" Visible="false" />
                                    <asp:BoundField DataField="Total_Length" HeaderText="L" />
                                    <asp:BoundField DataField="Total_Width" HeaderText="W" />
                                    <asp:BoundField DataField="Total_Height" HeaderText="H" />
                                    <asp:BoundField HeaderText="Category" Visible="false" />
                                    <asp:BoundField DataField="GVM_Actual_Weight" HeaderText="GVM" />
                                    <asp:BoundField DataField="Route_From" HeaderText="From" />
                                    <asp:BoundField DataField="Route_To" HeaderText="To" />
                                    <asp:BoundField DataField="Route_Via" HeaderText="Via" />
                                    <asp:TemplateField HeaderText="Permit Fee">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="lblPFee" Text='<%#Eval("Permit_Fee") %>'></asp:Label>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                         <asp:Label ID="lblPFTotal" runat="server"></asp:Label>
                                         </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Surcharage Fee">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="lblSFee" Text='<%#Eval("Surcharge_Fee") %>'></asp:Label>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                         <asp:Label ID="lblSFTotal" runat="server"></asp:Label>
                                         </FooterTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </td>
                        <td style="width: 5%;"></td>
                        </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 20px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td colspan="2" style="width: 90%;">
                            <asp:GridView ID="gvabn" Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                runat="server" ShowFooter="true" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                HeaderStyle-CssClass="HeaderDatagrid" PageSize="20" AllowPaging="true">
                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <PagerStyle CssClass="gridViewPager" />
                                <FooterStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <Columns>
                                    <asp:BoundField DataField="Permit_No" HeaderText="Permit No" />
                                    <asp:BoundField DataField="Transporter_Name" HeaderText="Transporter Name" />
                                    <asp:BoundField DataField="Transporter_Address" HeaderText="Transporter Address" />
                                    <asp:BoundField DataField="Permit_Issue" HeaderText="Date of Issue" />
                                    <asp:BoundField DataField="Route_From" HeaderText="From" />
                                    <asp:BoundField DataField="Route_To" HeaderText="To" />
                                    <asp:BoundField DataField="Route_Via" HeaderText="Via" />
                                    <asp:BoundField DataField="Validity_Days" HeaderText="Validity (Days)" />
                                    <asp:BoundField DataField="Truck_No" HeaderText="Truck Number" />
                                    <asp:BoundField HeaderText="Horse Power" Visible="false" />
                                    <asp:BoundField DataField="Cargo_Details" HeaderText="Cargo Details" />
                                    <asp:BoundField DataField="Axel_Configuration" HeaderText="Axel Configuration" />
                                    <asp:BoundField DataField="Total_Length" HeaderText="L" />
                                    <asp:BoundField DataField="Total_Width" HeaderText="W" />
                                    <asp:BoundField DataField="Total_Height" HeaderText="H" />
                                    <asp:BoundField DataField="GVM_Actual_Weight" HeaderText="GVM" />
                                    <asp:BoundField  DataField="Examined" HeaderText="Examined by" />
                                    <asp:BoundField  DataField="Authorized" HeaderText="Authorized by" />
                                </Columns>
                            </asp:GridView>
                        </td>
                        <td style="width: 5%;"></td>
                        </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 20px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td colspan="2" style="width: 90%;">
                            <asp:GridView ID="gvdrp" Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                runat="server" ShowFooter="true" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                HeaderStyle-CssClass="HeaderDatagrid" PageSize="20" AllowPaging="true">
                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <PagerStyle CssClass="gridViewPager" />
                                <FooterStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <Columns>
                                    <asp:BoundField DataField="Application_Submit_Date" HeaderText="Application Date" />
                                    <asp:BoundField DataField="Transporter_Name" HeaderText="Transporter Name" />
                                    <asp:BoundField DataField="Permit_Application_No" HeaderText="Application Number" />
                                    <asp:BoundField DataField="Permit_No" HeaderText="Permit No" />
                                    <asp:BoundField DataField="Permit_Fee" HeaderText="Permit Fee" />
                                    <asp:BoundField DataField="Surcharge_Fee" HeaderText="Surcharge Fee" />
                                    <asp:BoundField DataField="Permit_Issue" HeaderText="Approval Date" />
                                    <asp:BoundField DataField="Permit_Issue" HeaderText="Permit Generated Date" />
                                    <asp:BoundField HeaderText="Remark" Visible="false" />
                                    <asp:BoundField HeaderText="Status" Visible="false" />
                                    <asp:BoundField HeaderText="User/Actor" Visible="false" />
                                </Columns>
                            </asp:GridView>
                        </td>
                        <td style="width: 5%;"></td>
                        </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 20px;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; text-align:right;">
                            <asp:Button runat="server" ID="btnShow" Text="Show" OnClick="btnShow_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button runat="server" ID="btnExport" Text="Export To Excel" OnClick="btnExport_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 20px;"></td>
                    </tr>
                    </table>
                  </ContentTemplate>
             <Triggers>
        <asp:PostBackTrigger ControlID="btnExport" />
    </Triggers>
            </asp:UpdatePanel>
    </div>
</asp:Content>