<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeBehind="ReportDaily.aspx.cs" MasterPageFile="~/Default.Master" Inherits="PresentationLayer.Admin.Reports.ReportDaily" %>
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
                            <label>Year</label>&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList runat="server" ID="ddlYear">
                                <asp:ListItem Value="">Select Year</asp:ListItem>
                                <asp:ListItem Value="2015">2015</asp:ListItem>
                                <asp:ListItem Value="2016">2016</asp:ListItem>
                                <asp:ListItem Value="2017">2017</asp:ListItem>
                                <asp:ListItem Value="2018">2018</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 45%;">
                            <label>Month</label>&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList runat="server" ID="ddlMonth">
                                <asp:ListItem Value="">Select Month</asp:ListItem>
                                <asp:ListItem Value="1">January</asp:ListItem>
                                <asp:ListItem Value="2">February</asp:ListItem>
                                <asp:ListItem Value="3">March</asp:ListItem>
                                <asp:ListItem Value="4">April</asp:ListItem>
                                <asp:ListItem Value="5">May</asp:ListItem>
                                <asp:ListItem Value="6">June</asp:ListItem>
                                <asp:ListItem Value="7">July</asp:ListItem>
                                <asp:ListItem Value="8">August</asp:ListItem>
                                <asp:ListItem Value="9">September</asp:ListItem>
                                <asp:ListItem Value="10">October</asp:ListItem>
                                <asp:ListItem Value="11">November</asp:ListItem>
                                <asp:ListItem Value="12">December</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    
                    <tr>
                        <td colspan="4" style="width: 100%; height: 20px;"></td>
                    </tr>
                    
                    <tr>
                        <td style="width: 5%;"></td>
                        <td colspan="2" style="width: 90%;">
                            <asp:GridView ID="gvDaily" Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                runat="server" ShowFooter="true" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                HeaderStyle-CssClass="HeaderDatagrid" OnRowDataBound="gvDaily_RowDataBound" PageSize="20" AllowPaging="true">
                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <PagerStyle CssClass="gridViewPager" />
                                <FooterStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <Columns>
                                    <asp:BoundField DataField="Application_Submit_Date" HeaderText="Application Date" FooterText="Total" />
                                    <asp:BoundField DataField="Permit_Application_No" HeaderText="Application No" />
                                    <asp:BoundField DataField="Contact_Person" HeaderText="Transporter Name" />
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
                                    <asp:TemplateField HeaderText="Total">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="lblTFee" Text='<%#Eval("HTotal") %>'></asp:Label>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                         <asp:Label ID="lblTTotal" runat="server"></asp:Label>
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
                            <asp:GridView ID="gvMonthly" Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                runat="server" ShowFooter="true" AutoGenerateColumns="false" OnRowDataBound="gvMonthly_RowDataBound" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                HeaderStyle-CssClass="HeaderDatagrid" PageSize="20" AllowPaging="true">
                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <PagerStyle CssClass="gridViewPager" />
                                <FooterStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <Columns>
                                    <asp:BoundField DataField="Month" HeaderText="Month" FooterText="Total" />
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
                                    <asp:TemplateField HeaderText="Total">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="lblTFee" Text='<%#Eval("HTotal") %>'></asp:Label>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                         <asp:Label ID="lblTTotal" runat="server"></asp:Label>
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