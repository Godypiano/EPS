<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pay_Reports.aspx.cs" MasterPageFile="~/Default_admin.Master" Inherits="PresentationLayer.Admin.Pay_Reports" %>

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
                            <asp:LinkButton ID="lnkViewTdetails" runat="server" CausesValidation="False" onclick="lnkViewTdetails_Click">View Transporter Details</asp:LinkButton>
                            </td>
                        <td style="width: 2%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 2%;"></td>
                        <td style="width: 96%;">
                            <a class="navigationbar" href="Dashboard.aspx">Home</a>&nbsp; &gt;&gt; &nbsp;<a class="navigationbar" href="Pay_Reports.aspx">Daily Report</a>
                            </td>
                        <td style="width: 2%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 10px;"></td>
                    </tr>
                </table>
                <fieldset>
                    <legend>
                            <label class="hd1">PAYMENT REPORTS - Daily Report</label>
                             </legend>
        <table style = "width:100%; border-spacing: 0px;">
    <tr>
 <td colspan="3" style= "height:20px;" ></td>
 </tr>
  
    </table>
<table style = "width:100%; border-spacing: 0px; border-top-width:6px; border-top-color:#889cb1" frame="box">
 
 
 <tr>
 <td colspan="3" align="center" style="height:25px" ></td>
 </tr>
 <tr>
 <td colspan="3" align="center" style="width:100%;" >
        <table style = "width:100%; border-spacing: 0px;">
        <tr>
        <td colspan="3" align="center" >
            <asp:Label ID="lbldatefrom" runat="server" Text="Date From" ></asp:Label>   
            &nbsp;&nbsp;<asp:TextBox ID="rpttxtDateFrom" runat="server" CssClass = "Displaytext" width="100"></asp:TextBox>
                <asp:ImageButton ID="rptImgBtnDateFrom" runat="server" CausesValidation="false" ImageUrl="/images/calendar.png" />           
                <ajaxToolkit:CalendarExtender ID="rptCalendarExtender1" runat="server" PopupButtonID="rptImgBtnDateFrom"
                        TargetControlID="rpttxtDateFrom" Format="dd/MM/yyyy" />                              
                &nbsp;<asp:RequiredFieldValidator ID="RequiredPaymentDateFrom" runat="server" 
                ErrorMessage="Fill date from" ForeColor="Red" 
                ControlToValidate="rpttxtDateFrom"></asp:RequiredFieldValidator>
            &nbsp;<asp:Label ID="Ladateto" runat="server" Text="Date To"></asp:Label>
            &nbsp;&nbsp;<asp:TextBox ID="rpttxtDateTo" runat="server" CssClass="Displaytext" width="100"></asp:TextBox>
            <asp:ImageButton ID="rptImgBtnDateTo" runat="server" CausesValidation="false" 
                ImageUrl="/images/calendar.png" />
            <ajaxToolkit:CalendarExtender ID="rptCalendarExtender2" runat="server" 
                Format="dd/MM/yyyy" PopupButtonID="rptImgBtnDateTo" 
                TargetControlID="rpttxtDateTo" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="rpttxtDateTo" ErrorMessage="Fill date to" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:Label ID="Ladateto0" runat="server" Text="Transpoter"></asp:Label>
            &nbsp;<asp:DropDownList ID="DropDownTranspoter" runat="server" 
                Width="150px" AppendDataBoundItems="True" 
                AutoPostBack="True">
               </asp:DropDownList>
            <asp:TextBox ID="SearchTransporter" runat="server" 
                ToolTip="Type Start letter of full name" Width="90px"></asp:TextBox>
            <asp:Button ID="btnDPTsearch" runat="server" onclick="btnDPTsearch_Click" 
                Text="Search" />
        </td>
        </tr>
        <tr>
 <td colspan="3" align="center" style="height:10px" >
     <asp:Label ID="lbldt" runat="server" ForeColor="Red"></asp:Label>
            </td>
 </tr>
        <tr>
        <td align="center" style="width:2%"></td>
         <td style="width:96%;">
             <div style="overflow: auto; max-width: 960px">
         <asp:GridView ID="GridPaymentReport" runat="server" AutoGenerateColumns="False" 
        AllowPaging="True" Width="100%" EmptyDataText="No data exists." ShowHeaderWhenEmpty="True" 
        HeaderStyle-CssClass="HeaderDatagrid" 
                AlternatingRowStyle-CssClass="AlternateItemStyle" ShowFooter="True" 
                onpageindexchanging="GridPaymentReport_PageIndexChanging" 
                onrowdatabound="GridPaymentReport_RowDataBound" >
       <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                        <Columns>
                        <asp:BoundField DataField="S.no" HeaderText="S.no" 
                                SortExpression="S.no" />
                            <asp:BoundField DataField="application_no" HeaderText="App No" 
                                SortExpression="application_no">
                            <FooterStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="posted_date" HeaderText="App Date" 
                                SortExpression="posted_date" />
                            <asp:BoundField DataField="transporter_name" HeaderText="Transporter" 
                                SortExpression="transporter_name" />
                                <asp:BoundField DataField="submit_date" HeaderText="Invoice Date" 
                                SortExpression="submit_date" />
                                
                            <asp:BoundField DataField="permit_fee" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right" HeaderText="Permit Fee" 
                                SortExpression="permit_fee" />
                            <asp:BoundField DataField="surcharge_fee" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right" HeaderText="Surcharge" 
                                SortExpression="surcharge_fee" />
                            <asp:BoundField DataField="total_fee" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right" HeaderText="Total (USD)" 
                                SortExpression="total_fee" />
                                <asp:BoundField DataField="amount" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right" HeaderText="Amount (TZS)" 
                                SortExpression="Total" />
                                <asp:BoundField DataField="payment_date" HeaderText="Payment Date" 
                                SortExpression="payment_date" />
                                <asp:BoundField DataField="receipt_no" HeaderText="Receipt" 
                                SortExpression="receipt_no" />
                            <asp:BoundField DataField="control_num" HeaderText="Control No." 
                                SortExpression="control_num" />
                        </Columns>
                        <FooterStyle CssClass = "Ftstyle" />
    <HeaderStyle CssClass="HeaderDatagrid"></HeaderStyle>
    <PagerStyle CssClass="gridViewPager" />
<AlternatingRowStyle CssClass="AlternateItemStyle"></AlternatingRowStyle>
            </asp:GridView>
                 </div>
        </td>
            <td align="center" style="width:2%"></td>
        </tr>
        <tr>
                <td align="right" style= "height:20px;">            
               </td>
           </tr>
         <tr>
         <td align="center" style="width:2%"></td>   
         <td align="right" style="width:96%">
             <asp:Button ID="btnRunReport" runat="server" onclick="btnRunReport_Click" 
                 Text="Run Report" />
             &nbsp;&nbsp;&nbsp;
             <asp:Button ID="btnDownloadPdf" runat="server" Text="Download Pdf" 
                 onclick="btnDownloadPdf_Click" />
             &nbsp;&nbsp;&nbsp;
             <asp:Button ID="btnDExcel" runat="server" Text="Download Excel" 
                 onclick="btnDExcel_Click" />
             </td>
             <td align="center" style="width:2%"></td>
        </tr>
            <tr>
                <td align="right" style= "height:20px;">            
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
