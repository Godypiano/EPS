<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="T_Details.aspx.cs" MasterPageFile="~/Default_RFB.Master" Inherits="PresentationLayer.RFB.T_Details" %>
<%@ MasterType VirtualPath="~/Default_RFB.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/Styles/styles_reports.css" rel="stylesheet" type="text/css" />
    </asp:Content>
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
                            
                            <asp:LinkButton ID="lnkBackToReport" CssClass="navigationbar" runat="server" CausesValidation="False" onclick="lnkBackToReport_Click">Back To Reports</asp:LinkButton>
                            </td>
                        <td style="width: 2%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 10px;"></td>
                    </tr>
                </table>
                <fieldset>
                    <legend>
                            <label class="hd1">TRANSPORTER DETAILS</label>
                             </legend>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 2%;"></td>
                        <td style="width: 96%;">
                            
                            </td>
                        <td style="width: 2%;"></td>
                     </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                    </tr>
                  </table>
                        
                 <table style="width: 100%;">
                    <tr>
          <td colspan="3" style= "height:20px;" ></td>
         </tr>
         <tr>
          <td colspan="3" align="center" style= "height:20px;" >
            <asp:TextBox ID="txtTransportersSearch" runat="server" 
                ToolTip="Type Start letter of full name" Width="200px"></asp:TextBox>
            <asp:Button ID="btnTransportersSearch" runat="server" onclick="btnDTTsearch_Click" 
                Text="Search Transporter" 
                  ToolTip="Search by first letter or full name of a company or contact person" />
             </td>
         </tr>
         <tr>
          <td colspan="3" style= "height:20px;" ></td>
         </tr>
         <tr>
          <td colspan="3" >
          <div style="overflow: auto; max-width: 960px"> 
              <asp:GridView ID="GridVTransporterDetails" runat="server" AutoGenerateColumns="False" 
        AllowPaging="True" Width="100%" EmptyDataText="No data exists." ShowHeaderWhenEmpty="True" 
        HeaderStyle-CssClass="HeaderDatagrid" 
                AlternatingRowStyle-CssClass="AlternateItemStyle" onpageindexchanging="GridVTransporterDetails_PageIndexChanging" >
                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                        <Columns>
                        
                        <asp:BoundField DataField="S.no" HeaderText="S.no" 
                                SortExpression="S.no" ></asp:BoundField>
                            <asp:BoundField DataField="transporter_id" HeaderText="ID" 
                                SortExpression="transporter_id" ></asp:BoundField>
                            <asp:BoundField DataField="trans_comp_reg_no" HeaderText="TIN Number" 
                                SortExpression="trans_comp_reg_no" />
                            <asp:BoundField DataField="transporter_name" HeaderText="Company Name" 
                                SortExpression="transporter_name" />
                            <asp:BoundField DataField="contact_person" HeaderText="Contact Person" 
                                SortExpression="contact_person" />
                            <asp:BoundField DataField="address1" HeaderText="P.O.Box" 
                                SortExpression="address1" />
                            <asp:BoundField DataField="city" HeaderText="City" 
                                SortExpression="city" />
                                <asp:BoundField DataField="contact_per_email" HeaderText="Email" 
                                SortExpression="contact_per_email" />
                                
                                <asp:BoundField DataField="contact_per_phone" HeaderText="Mobile No." 
                                SortExpression="contact_per_phone" />
                        </Columns>
                        <FooterStyle CssClass = "Ftstyle" />
    <HeaderStyle CssClass="HeaderDatagrid"></HeaderStyle>
    <PagerStyle CssClass="gridViewPager" />
<AlternatingRowStyle CssClass="AlternateItemStyle"></AlternatingRowStyle>
              </asp:GridView>
              </div>
          </td>
          
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

