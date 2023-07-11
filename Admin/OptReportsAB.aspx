<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OptReportsAB.aspx.cs" MasterPageFile="~/Default_admin.Master" Inherits="PresentationLayer.Admin.OptReportsAB" %>

<%@ MasterType VirtualPath="~/Default_admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/Styles/styles_reports.css" rel="stylesheet" type="text/css" />
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript" language="javascript">
        function onCalendarShown() {
            var cal = $find("calendar1");
            cal._switchMode("months", true);
            if (cal._monthsBody) {
                for (var i = 0; i < cal._monthsBody.rows.length; i++) {
                    var row = cal._monthsBody.rows[i];
                    for (var j = 0; j < row.cells.length; j++) {
                        Sys.UI.DomEvent.addHandler(row.cells[j].firstChild, "click", call);
                    }
                }
            }
        }

        function onCalendarHidden() {
            var cal = $find("calendar1");
            if (cal._monthsBody) {
                for (var i = 0; i < cal._monthsBody.rows.length; i++) {
                    var row = cal._monthsBody.rows[i];
                    for (var j = 0; j < row.cells.length; j++) {
                        Sys.UI.DomEvent.removeHandler(row.cells[j].firstChild, "click", call);
                    }
                }
            }
        }

        function call(eventElement) {
            var target = eventElement.target;
            switch (target.mode) {
                case "month":
                    var cal = $find("calendar1");
                    cal.set_selectedDate(target.date);
                    cal._blur.post(true);
                    cal.raiseDateSelectionChanged(); break;
                    break;
            }
        }
        function onCalendarShown2() {
            var cal = $find("calendar2");
            cal._switchMode("months", true);
            if (cal._monthsBody) {
                for (var i = 0; i < cal._monthsBody.rows.length; i++) {
                    var row = cal._monthsBody.rows[i];
                    for (var j = 0; j < row.cells.length; j++) {
                        Sys.UI.DomEvent.addHandler(row.cells[j].firstChild, "click", call2);
                    }
                }
            }
        }

        function onCalendarHidden2() {
            var cal = $find("calendar2");
            if (cal._monthsBody) {
                for (var i = 0; i < cal._monthsBody.rows.length; i++) {
                    var row = cal._monthsBody.rows[i];
                    for (var j = 0; j < row.cells.length; j++) {
                        Sys.UI.DomEvent.removeHandler(row.cells[j].firstChild, "click", call2);
                    }
                }
            }
        }

        function call2(eventElement) {
            var target = eventElement.target;
            switch (target.mode) {
                case "month":
                    var cal = $find("calendar2");
                    cal.set_selectedDate(target.date);
                    cal._blur.post(true);
                    cal.raiseDateSelectionChanged(); break;
                    break;
            }
        }

    </script>

    <div style = "width:100%">
        <table style="width: 100%;">
                    <tr>
                    <td style="width: 2%;"></td>
                    <td style="width: 96%;">
                    
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 2%;"></td>
                        <td style="width: 96%; height:20px; text-align:right">
                            <asp:LinkButton ID="lnkViewOTdetails" runat="server" CausesValidation="False" onclick="lnkViewOTdetails_Click">View Transporter Details</asp:LinkButton>
                            </td>
                        <td style="width: 2%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 2%;"></td>
                        <td style="width: 96%;">
                            <a class="navigationbar" href="Dashboard.aspx">Home</a>&nbsp; &gt;&gt; &nbsp;<a class="navigationbar" href="OptReportsAB.aspx">Abnormal/Wide Load Permit</a>
                            </td>
                        <td style="width: 2%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 10px;"></td>
                    </tr>
                </table>
                <fieldset>
                    <legend>
                            <label class="hd1">OPERATIONAL REPORTS - Abnormal/Wide Load Permit</label>
                             </legend>
        <table style = "width:100%; border-spacing: 0px;">
    <tr>
 <td colspan="3" style= "height:20px;" ></td>
 
</table>
<table style = "width:100%; border-top-width:6px; border-top-color:#889cb1; border-spacing: 0px;" frame="box">

<tr>
 <td colspan="3" align="center" style="height:25px" ></td>
 </tr>
<tr>
<td colspan="3" style="width:100%">
        <table style = "width:100%; border-spacing: 0px;">
        <tr>
          <td style="width:2%;"></td>  
        <td align="center" style="width:96%;">
            <asp:Label ID="Label2" runat="server" Text="Date From"></asp:Label>
            &nbsp;&nbsp;<asp:TextBox ID="ALPTextBox1" runat="server" CssClass="Displaytext" width="100"></asp:TextBox>
            <asp:ImageButton ID="ALPImageButton1" runat="server" CausesValidation="false" 
                ImageUrl="/images/calendar.png" />
            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" 
                Format="dd/MM/yyyy" PopupButtonID="ALPImageButton1" 
                TargetControlID="ALPTextBox1" />
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="Fill date from" ForeColor="Red" 
                ControlToValidate="ALPTextBox1"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                          
                <asp:Label ID="Label3" runat="server" Text="Date To"></asp:Label>   
            &nbsp;&nbsp;<asp:TextBox ID="ALPTextBox2" runat="server" CssClass = "Displaytext" width="100"></asp:TextBox >
                <asp:ImageButton ID="ALPImageButton2" runat="server" CausesValidation="false" ImageUrl="/images/calendar.png" />
                <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" PopupButtonID="ALPImageButton2"
                        TargetControlID="ALPTextBox2" Format="dd/MM/yyyy" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="Fill date to" ForeColor="Red" ControlToValidate="ALPTextBox2"></asp:RequiredFieldValidator>
            
           <asp:Label ID="lblAbnormalLoad" runat="server" Text="Transporter"></asp:Label> 
            <asp:DropDownList ID="DrpAbnormalLoad" runat="server" 
                Width="200px" AppendDataBoundItems="True" CausesValidation="True">
            </asp:DropDownList>&nbsp;<asp:TextBox ID="txtAbnormalLoad" runat="server" 
                ToolTip="Type Start letter of full name" Width="90px"></asp:TextBox>&nbsp;<asp:Button 
                ID="btnALPTsearch" runat="server" onclick="btnALPTsearch_Click" Text="Search" />
        </td>
            <td style="width:2%;"></td>  
        </tr>
        <tr>
 <td align="center" colspan="3" style="height:10px; width:100%" >
     <asp:Label ID="lblALP" runat="server" ForeColor="Red"></asp:Label>
            </td>
 </tr>
        <tr>
            <td style="width:2%;"></td>  
         <td style="width:96%;">
             <div style="overflow: auto; max-width: 960px">
            <asp:GridView ID="gvALPermit" ShowFooter="true" runat="server" AutoGenerateColumns= "False" 
                 AllowPaging="True" Width="100%" EmptyDataText="No data exists." ShowHeaderWhenEmpty="True" 
            HeaderStyle-CssClass="HeaderDatagrid" 
                AlternatingRowStyle-CssClass="AlternateItemStyle" 
                 onpageindexchanging="gvALPermit_PageIndexChanging">
            <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                <Columns>
                <asp:BoundField DataField="S.no" HeaderText="S.no" HtmlEncode="false" />
                    <asp:BoundField DataField="permit_no" HeaderText="Permit<br/>Number" HtmlEncode="false" />
                    <asp:BoundField DataField="permit_date" HeaderText="Permit<br/>Date" HtmlEncode="false"  />
                    <asp:BoundField DataField="application_date" HeaderText="Application<br/>Date" HtmlEncode="false" />
                    
                    <asp:BoundField DataField="transporter_name" HeaderText="Transporter<br/> Name" HtmlEncode="false" />
                    <asp:BoundField DataField="address1" HeaderText="Address" HtmlEncode="false" />
                    <asp:BoundField DataField="registration_no" HeaderText="Truck<br/>Number" HtmlEncode="false"  />
                    <asp:BoundField DataField="axle_configuration" HeaderText="Axle<br/>Configuration" HtmlEncode="false"  />
                   
                    <asp:BoundField DataField="cargo" HeaderText="Cargo<br/>Name" HtmlEncode="false" />
                     <asp:BoundField DataField="total_length" ItemStyle-HorizontalAlign="Right" HeaderText="Length<br/>(M)" HtmlEncode="false"  />
                    <asp:BoundField DataField="total_width" ItemStyle-HorizontalAlign="Right" HeaderText="Width<br/>(M)" HtmlEncode="false"  />
                    <asp:BoundField DataField="total_height" ItemStyle-HorizontalAlign="Right" HeaderText="Height<br/>(M)" HtmlEncode="false"  />
                    
                    <asp:BoundField DataField="total_weight" DataFormatString="{0:N0}" ItemStyle-HorizontalAlign="Right" HeaderText="GVM<br/>(Kg)" HtmlEncode="false" />
                     <asp:BoundField DataField="route_from" HeaderText="Route<br/>From" HtmlEncode="false"  />
                    <asp:BoundField DataField="route_to" HeaderText="Route<br/>To" HtmlEncode="false"  />
                    <asp:BoundField DataField="route_via" HeaderText="Route<br/>Via" HtmlEncode="false" />
                     <asp:BoundField DataField="authorized" HeaderText="Authorized<br/>By" HtmlEncode="false" />
                    
                    
                </Columns>
            <FooterStyle CssClass = "Ftstyle" />
           <HeaderStyle CssClass="HeaderDatagrid"></HeaderStyle>
             <PagerStyle CssClass="gridViewPager" />
         <AlternatingRowStyle CssClass="AlternateItemStyle"></AlternatingRowStyle>
         
            </asp:GridView>
                 </div>
            </td>
            <td style="width:2%;"></td>  
        </tr>
        <tr>
                <td align="right" colspan="3" style= "height:20px; width:100%;">            
               </td>
           </tr>
         <tr>
             <td align="center" style="width:2%"></td>
         <td align="right" style= "width:96%;">
             <asp:Button ID="btnRunPermit" runat="server"  
                 Text="Run Report" onclick="btnRunPermit_Click" />
             &nbsp;&nbsp;&nbsp;
             <asp:Button ID="tntDownloadPermit" runat="server" Text="Download Pdf" 
                 onclick="tntDownloadPermit_Click" />
             &nbsp;&nbsp;&nbsp;
             <asp:Button ID="btnAExcel" runat="server" Text="Download Excel" 
                 onclick="btnAExcel_Click" />
             </td>
             <td align="center" style="width:2%"></td>
        </tr>
           <tr>
                <td align="right" colspan="3" style= "height:20px; width:100%;">            
               </td>
           </tr>
        </table>
 
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
        </div>
</asp:Content>
