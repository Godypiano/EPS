<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OptReports.aspx.cs" MasterPageFile="~/Default_admin.Master" Inherits="PresentationLayer.Admin.OptReports" %>

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
                            <a class="navigationbar" href="Dashboard.aspx">Home</a>&nbsp; &gt;&gt; &nbsp;<a class="navigationbar" href="OptReports.aspx">Daily Transaction Report</a>
                            </td>
                        <td style="width: 2%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 10px;"></td>
                    </tr>
                </table>
                <fieldset>
                    <legend>
                            <label class="hd1">OPERATIONAL REPORTS - Daily Transaction Report</label>
                             </legend>
        <table style = "width:100%; border-spacing: 0px;">
    <tr>
 <td colspan="3" style= "height:20px;" ></td>
 </tr>
 
</table>
<table style = "width:100%; border-top-width:6px; border-top-color:#889cb1; border-spacing: 0px;" frame="box">

<tr>
 <td colspan="3" align="center" style="height:25px" ></td>
 </tr>
<tr>
<td colspan="3" style="width:100%">
        <table style = "width:100%; border-spacing: 0px;">
        <tr>
         <td align="center" style="width:2%"></td>   
        <td align="center" style="width:96%">
            <asp:Label ID="Label4" runat="server" Text="Select Category"></asp:Label>
            &nbsp;<asp:DropDownList ID="DropDailyTransactCategory" runat="server" Width="80">
                <asp:ListItem Selected="True">All</asp:ListItem>
                <asp:ListItem>One</asp:ListItem>
                <asp:ListItem>Two</asp:ListItem>
                <asp:ListItem>Three</asp:ListItem>
                <asp:ListItem>Four</asp:ListItem>
                <asp:ListItem>Five</asp:ListItem>
                <asp:ListItem>Six</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;<asp:Label ID="lblDoprRpr" runat="server" Text="Date From"></asp:Label>
            &nbsp;&nbsp;<asp:TextBox ID="rpttxtdtDateFrom" runat="server" CssClass="Displaytext" Width="100"></asp:TextBox>
            <asp:ImageButton ID="rptImgBtndtDateFrom" runat="server" CausesValidation="false" 
                ImageUrl="/images/calendar.png" />
            <ajaxToolkit:CalendarExtender ID="rptdtCalendarExtender1" runat="server" 
                Format="dd/MM/yyyy" PopupButtonID="rptImgBtndtDateFrom" 
                TargetControlID="rpttxtdtDateFrom" />
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="*Date" ForeColor="Red" 
                ControlToValidate="rpttxtdtDateFrom"></asp:RequiredFieldValidator>
            &nbsp;<asp:Label ID="Ladateto" runat="server" Text="Date To"></asp:Label>     
            &nbsp;&nbsp;<asp:TextBox ID="rpttxtdtDateTo" runat="server" CssClass = "Displaytext" Width="100"></asp:TextBox>
                <asp:ImageButton ID="rptImgBtndtDateTo" runat="server" CausesValidation="false" ImageUrl="/images/calendar.png" />
                <ajaxToolkit:CalendarExtender ID="rptdtCalendarExtender2" runat="server" PopupButtonID="rptImgBtndtDateTo"
                        TargetControlID="rpttxtdtDateTo" Format="dd/MM/yyyy" />
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="*Date" ForeColor="Red" ControlToValidate="rpttxtdtDateTo"></asp:RequiredFieldValidator>
            &nbsp;<asp:Label ID="Label5" runat="server" Text="Transporter"></asp:Label>
            <asp:DropDownList ID="DropDownDailyTransaction" runat="server" 
                Width="120px" AppendDataBoundItems="True" 
                AutoPostBack="True">
            </asp:DropDownList>
            <asp:TextBox ID="txtDailyTransaction" runat="server" 
                ToolTip="Type Start letter of full name" Width="80px"></asp:TextBox>
            <asp:Button ID="btnDTTsearch" runat="server" onclick="btnDTTsearch_Click" 
                Text="Search" />
        </td>
        <td align="center" style="width:2%"></td>    
        </tr>
        <tr>
 <td align="center" style="height:10px" colspan="3">
     <asp:Label ID="lbldalyt" runat="server" ForeColor="Red"></asp:Label>
            </td>
 </tr>
        <tr>
         <td align="center" style="width:2%"></td>
         <td style="width:96%;">
             <div style="overflow: auto; max-width: 960px">
            <asp:GridView ID="GVDailyTransaction" ShowFooter="true" runat="server" AutoGenerateColumns="false" 
                 AllowPaging="True" Width="100%" EmptyDataText="No data exists." ShowHeaderWhenEmpty="True" 
            HeaderStyle-CssClass="HeaderDatagrid" 
                AlternatingRowStyle-CssClass="AlternateItemStyle" 
                 onpageindexchanging="GVDailyTransaction_PageIndexChanging" 
                 onrowdatabound="GVDailyTransaction_RowDataBound">
            <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
            <FooterStyle CssClass = "Ftstyle" />
           <HeaderStyle CssClass="HeaderDatagrid"></HeaderStyle>
             <PagerStyle CssClass="gridViewPager" />
         <AlternatingRowStyle CssClass="AlternateItemStyle"></AlternatingRowStyle>
         <Columns>
          <asp:BoundField DataField="S.no" HeaderText="S.no" HtmlEncode="false"  
                            SortExpression="S.no" />
                        <asp:BoundField DataField="permit_app_no" HeaderText="Application<br/>Number" HtmlEncode="false"  
                            SortExpression="permit_app_no" />
                        <asp:BoundField DataField="posted_date" HeaderText="Application<br/>Date" HtmlEncode="false"/>
                        <asp:BoundField DataField="transporter_name" HeaderText="Transporter<br/> Name" HtmlEncode="false"/>
                        <asp:BoundField DataField="cargo" HeaderText="Cargo<br/> Type" HtmlEncode="false" 
                            SortExpression="cargo" />
                        <asp:BoundField DataField="cargo_details" HeaderText="Cargo<br/> Details" HtmlEncode="false"
                            SortExpression="cargo_details" />
                        <asp:BoundField DataField="registration_no" HeaderText="Truck <br/>Number" HtmlEncode="false" 
                            SortExpression="registration_no" />
                       <asp:BoundField DataField="axle_configuration" HeaderText="Axle<br/> Config" HtmlEncode="false"
                            SortExpression="axle_configuration" />
                            <asp:BoundField DataField="total_length" ItemStyle-HorizontalAlign="Right" HeaderText="Length<br/> (M)" HtmlEncode="false"
                            SortExpression="total_length" />
                            <asp:BoundField DataField="total_width" ItemStyle-HorizontalAlign="Right" HeaderText="Width<br/> (M)" HtmlEncode="false"
                            SortExpression="total_width" />
                            <asp:BoundField DataField="total_height" ItemStyle-HorizontalAlign="Right" HeaderText="height<br/> (M)" HtmlEncode="false"
                            SortExpression="total_height" />
                            <asp:BoundField DataField="total_weight" DataFormatString="{0:N0}" ItemStyle-HorizontalAlign="Right" HeaderText="GVM <br/>(Kg)" HtmlEncode="false"
                            SortExpression="total_weight" />

                        <asp:BoundField DataField="route_from" HeaderText="Route<br/> From" HtmlEncode="false"
                            SortExpression="route_from" />
                        <asp:BoundField DataField="route_to" HeaderText="Route<br/> To" HtmlEncode="false"
                            SortExpression="route_to" />
                       <asp:BoundField DataField="route_via" HeaderText="Route<br/> Via" HtmlEncode="false"
                            SortExpression="route_to" />
                          
                            <asp:BoundField DataField="status" HeaderText="Status" HtmlEncode="false"
                            SortExpression="status" />
                    </Columns>
            </asp:GridView>
                 </div>
            </td>
            <td align="center" style="width:2%"></td>
        </tr>
        <tr>
                <td align="right" colspan="3" style= "height:20px; width:100%">            
               </td>
           </tr>
         <tr>
         <td align="center" style="width:2%"></td>   
         <td align="right" style="width:96%">
             <asp:Button ID="btndtRunReport" runat="server"  
                 Text="Run Report" onclick="btndtRunReport_Click" />
             &nbsp;&nbsp;&nbsp;
             <asp:Button ID="btndtDownloadPdf" runat="server" Text="Download Pdf" 
                 onclick="btndtDownloadPdf_Click" />
             &nbsp;&nbsp;&nbsp;
             <asp:Button ID="btnDExcel" runat="server" Text="Download Excel" 
                 onclick="btnDExcel_Click" />
             </td>
             <td align="center" style="width:2%"></td>
        </tr>
            <tr>
                <td align="right" colspan="3" style= "height:20px; width:100%">            
               </td>
           </tr>
        </table>
    
        
        
    
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
        </div>
</asp:Content>
