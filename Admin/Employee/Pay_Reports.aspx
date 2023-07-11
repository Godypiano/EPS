<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pay_Reports.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.Pay_Reports" %>

<%@ MasterType VirtualPath="~/Default_custom.master" %>
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
                            <a class="navigationbar" href="Dashboard.aspx">Home</a>&nbsp; &gt;&gt; &nbsp;<a class="navigationbar" href="Pay_Reports.aspx">PAYMENT REPORTS</a>
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
                           <label class="hd1">PAYMENT REPORTS</label>
                             </legend>
        <table style = "width:100%; border-spacing: 0px;">
    <tr>
 <td colspan="3" style= "height:20px;" ></td>
 </tr>
   <!-- <tr>
 <td colspan="3" align="center" ><asp:Label CssClass ="fontHeader" ID="lblPheader" runat="server" 
        Font-Bold="True" >PAYMENT REPORTS</asp:Label></td>
 </tr>
 <tr>
 <td colspan="3" style= "height:20px;" ></td>
 </tr>-->
    </table>
<table style = "width:100%; border-spacing: 0px; border-top-width:6px; border-top-color:#889cb1" frame="box">
 
 <tr style="background-color: #889cb1; vertical-align:top; height:27px; font-weight:bold; ">
 <td style="width:33%; text-align:center" id = "dailyTd" runat="server">
    <asp:LinkButton ID="lnkDaily" runat="server" Font-Underline="false" 
         Font-Size="Medium" onclick="lnkDaily_Click" CausesValidation="False">Daily Report</asp:LinkButton></td>
 <td style="width:34%; text-align:center" id = "monthlyTd" runat="server">
    <asp:LinkButton ID="lnkMonthly" runat="server" Font-Underline="false" 
         Font-Size="Medium" onclick="lnkMonthly_Click" CausesValidation="False">Monthly Report</asp:LinkButton></td>
 <td style="width:33%; text-align:center" id = "invoiceTd" runat="server">
    <asp:LinkButton ID="lnkInvoice" runat="server" Font-Underline="false" 
         Font-Size="Medium" onclick="lnkInvoice_Click" CausesValidation="False">Invoice</asp:LinkButton></td>
 </tr>
 <tr>
 <td colspan="3" align="center" style="height:25px" ></td>
 </tr>
 <tr>
 <td colspan="3" align="center" style="width:100%;" >
     <asp:MultiView ID="MltVPayments" runat="server">
        <asp:View ID="DailyView" runat="server">
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
        </asp:View>
        <asp:View ID="MonthlyView" runat="server">
        <table style = "width:100%; border-spacing: 0px;">
        <tr>
        <td style="width:2%;"></td>  
        <td align="center" style="width:96%;">
          <asp:Label ID="lblMonthlydtfrom" runat="server" Text="Month From" ></asp:Label>   
            <asp:TextBox ID="rpttxtMFrom" runat="server" CssClass = "Displaytext" width="100"></asp:TextBox>
                <asp:ImageButton ID="rptImgBtnMFrom" runat="server" CausesValidation="false" ImageUrl="/images/calendar.png" />           
                <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" PopupButtonID="rptImgBtnMFrom"
                        TargetControlID="rpttxtMFrom" OnClientHidden="onCalendarHidden" OnClientShown="onCalendarShown" Format="MM/yyyy" BehaviorID="calendar1"  />                              
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Fill month from" ForeColor="Red" 
                ControlToValidate = "rpttxtMFrom"></asp:RequiredFieldValidator>
            &nbsp;<asp:Label ID="lblMonthlydtTo" runat="server" Text="Month To"></asp:Label>
            <asp:TextBox ID="rpttxtMTo" runat="server" CssClass="Displaytext" width="100"></asp:TextBox>
            <asp:ImageButton ID="rptImgBtnMTo" runat="server" CausesValidation="false" 
                ImageUrl="/images/calendar.png" />
            <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" 
                BehaviorID="calendar2" Format="MM/yyyy" OnClientHidden="onCalendarHidden2" 
                OnClientShown="onCalendarShown2" PopupButtonID="rptImgBtnMTo" 
                TargetControlID="rpttxtMTo" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="rpttxtMTo" ErrorMessage="Fill month to" ForeColor="Red"></asp:RequiredFieldValidator>

            <asp:Label ID="Ladateto1" runat="server" Text="Transpoter"></asp:Label>
            <asp:DropDownList ID="DropDownTranspoterMonthly" runat="server" 
                Width="150px">
                <asp:ListItem Selected="True">All</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="SearchTransporterMonthly" runat="server" 
                ToolTip="Type First letters or full name" Width="90px"></asp:TextBox>
            <asp:Button ID="btnMPTsearch" runat="server" onclick="btnMPTsearch_Click" 
                Text="Search" />
        </td>
            <td style="width:2%;"></td>
        </tr>
        <tr>
 <td colspan="3" align="center" style="height:10px" >
     <asp:Label ID="lblmon" runat="server" ForeColor="Red"></asp:Label>
            </td>
 </tr>
        <tr>
        <td style="width:2%;"></td>  
         <td style="width:96%;">
        <div style="overflow: auto; max-width: 960px"> 
        <asp:GridView ID="GridViewMonthly" runat="server"
        AllowPaging="True" Width="100%" EmptyDataText="No data exists." ShowHeaderWhenEmpty="True" 
        HeaderStyle-CssClass="HeaderDatagrid" 
                AlternatingRowStyle-CssClass="AlternateItemStyle" ShowFooter="True" 
                AutoGenerateColumns="False" 
                onpageindexchanging="GridViewMonthly_PageIndexChanging" 
                onrowdatabound="GridViewMonthly_RowDataBound" >
    <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                        
                  <Columns>
                      <asp:BoundField DataField="S.no" HeaderText="S.no" />
                      <asp:BoundField DataField="Month" HeaderText="Month" />
                      <asp:BoundField DataField="permit_fee" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right"  HeaderText="Permit Fee (USD)" />
                      <asp:BoundField DataField="surcharge_fee" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right" HeaderText="Surcharge (USD)" />
                      <asp:BoundField DataField="Total" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right" HeaderText="Total (USD)" />
                      <asp:BoundField DataField="amount" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right" HeaderText="Amount Paid (TZS)" />
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
                <td align="right" style= "height:20px;">            
               </td>
           </tr>
         <tr>
         <td align="center" style="width:2%"></td>
         <td align="right" style= "width:96%;">
             <asp:Button ID="btnRunMonthly" runat="server"
                 Text="Run Report" onclick="btnRunMonthly_Click" />
             &nbsp;&nbsp;&nbsp;
             <asp:Button ID="btnDownloadMonthly" runat="server" Text="Download Pdf" 
                 onclick="btnDownloadMonthly_Click" />
              &nbsp;&nbsp;&nbsp;
             <asp:Button ID="btnMExcel" runat="server" Text="Download Excel" 
                 onclick="btnMExcel_Click" />
             </td>
             <td align="center" style="width:2%"></td>
        </tr>
            <tr>
                <td align="right" style= "height:20px;">            
               </td>
           </tr>
        </table>
        </asp:View>
        <asp:View ID="InvoiceView" runat="server">
        <table cellpadding="0" cellspacing="0" width="100%" border="0"> 
    
        <tr>
        <td style="width:2%"></td>    
        <td align="center" style="width:96%">
            <asp:Label ID="invoicelbldatefrom" runat="server" Text="Date From" 
                ForeColor="Black"></asp:Label>   
            <asp:TextBox ID="invoicetxtDateFrom" runat="server" CssClass = "Displaytext" width="100"></asp:TextBox>
                <asp:ImageButton ID="invoiceImgBtnDateFrom" runat="server" CausesValidation="false" ImageUrl="/images/calendar.png" />                           
                <ajaxToolkit:CalendarExtender ID="invoiceCalendarExtender1" runat="server" PopupButtonID="invoiceImgBtnDateFrom"
                        TargetControlID="invoicetxtDateFrom" Format="dd/MM/yyyy" />                          
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="Fill date from" ForeColor="Red" 
                ControlToValidate="invoicetxtDateFrom"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;<asp:Label ID="invoicelbldateto" runat="server" Text="Date To" 
                ForeColor="Black"></asp:Label>   
            <asp:TextBox ID="invoicetxtDateTo" runat="server" CssClass = "Displaytext" width="100"></asp:TextBox>
                <asp:ImageButton ID="invoiceImgBtnDateTo" runat="server" CausesValidation="false" ImageUrl="/images/calendar.png" />
                <ajaxToolkit:CalendarExtender ID="invoiceCalendarExtender2" runat="server" PopupButtonID="invoiceImgBtnDateTo"
                        TargetControlID="invoicetxtDateTo" Format="dd/MM/yyyy" /> 
           
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="Fill date to" ForeColor="Red" 
                ControlToValidate="invoicetxtDateTo"></asp:RequiredFieldValidator>
           
            <asp:Label ID="Ladateto2" runat="server" Text="Transpoter"></asp:Label>
            &nbsp;<asp:DropDownList ID="DropDownTranspoterInvoice" runat="server" 
                Width="150px">
                <asp:ListItem Selected="True">All</asp:ListItem>
            </asp:DropDownList>
           
            <asp:TextBox ID="SearchTransporterInvoice" runat="server" 
                ToolTip="Type Start letters or full name" Width="90px"></asp:TextBox>
            <asp:Button ID="btnIPTsearch" runat="server" onclick="btnIPTsearch_Click" 
                Text="Search" />
           
            </td>
            <td style="width:2%"></td>
        </tr>
        <tr>
        <td align="center" style="height:20px" colspan="3">
               
            <asp:Label ID="lbldateValidation" runat="server" ForeColor="Red"></asp:Label>
               
            </td>
        </tr>
        <tr>
        <td style="width:2%"></td>
        <td align="center" style="width:96%" >
           <div style="overflow: auto; max-width: 960px"> 
           <asp:GridView ID="GridViewInvoice" runat="server"
        AllowPaging="True" Width="100%" EmptyDataText="No data exists." ShowHeaderWhenEmpty="True" 
        HeaderStyle-CssClass="HeaderDatagrid" 
                AlternatingRowStyle-CssClass="AlternateItemStyle" ShowFooter="True"
                AutoGenerateColumns="False" 
                onpageindexchanging="GridViewInvoice_PageIndexChanging" 
                onrowdatabound="GridViewInvoice_RowDataBound">
    <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                      <Columns>
                      <asp:BoundField DataField="S.no" HeaderText="S.no" HtmlEncode="false" />
                      <asp:BoundField DataField="application_no" HeaderText="App No" HtmlEncode="false" />
                      <asp:BoundField DataField="transporter_name" HeaderText="Transporter" HtmlEncode="false" />
                      <asp:BoundField DataField="invoice_no" HeaderText="Invoice No" />
                      <asp:BoundField DataField="submit_date" HeaderText="Invoice Date" />

                      <asp:BoundField DataField="permit_fee" DataFormatString="{0:N2}" 
                          ItemStyle-HorizontalAlign="Right" HeaderText="Fee" 
                          HtmlEncode="false"  >
                      <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="surcharge_fee" DataFormatString="{0:N2}" 
                          ItemStyle-HorizontalAlign="Right" HeaderText="Surcharge" 
                          HtmlEncode="false" >
                      <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="amount" DataFormatString="{0:N2}" 
                      ItemStyle-HorizontalAlign="Right" HeaderText="Amount (TZS)" 
                      HtmlEncode="false" />
                      <asp:BoundField DataField="receipt_no" HeaderText="Receipt No" />
                      <asp:BoundField DataField="payment_date" HeaderText="Receipt Date" />
                      <asp:BoundField DataField="total_weight" DataFormatString="{0:N2}" 
                          ItemStyle-HorizontalAlign="Right" HeaderText="G. V. M (Kg)" HtmlEncode="false" >
                      <ItemStyle HorizontalAlign="Right" />
                      </asp:BoundField>
                      <asp:BoundField DataField="route_from" HeaderText="Route From"/>
                      <asp:BoundField DataField="route_to" HeaderText="Route To"/>
                      <asp:BoundField DataField="permit_no" HeaderText="Permit No" HtmlEncode="false"/> 
                      <asp:BoundField DataField="permit_date" HeaderText="Permit Date" HtmlEncode="false"/>                
                      <asp:BoundField DataField="control_num" HeaderText="Control No." HtmlEncode="false"/>
                  </Columns>
        <FooterStyle CssClass = "Ftstyle" />                        
        
    <HeaderStyle CssClass="HeaderDatagrid"></HeaderStyle>
    <PagerStyle CssClass="gridViewPager" />
<AlternatingRowStyle CssClass="AlternateItemStyle"></AlternatingRowStyle>
  </asp:GridView>  
             </div>      
        </td>
            <td style="width:2%"></td>
        </tr>
        <tr>
                <td align="right" style= "height:20px;">            
               </td>
           </tr> 
           <tr>
                <td align="center" style="width:2%"></td>
                <td align="right" style= "width:96%;">
                   <asp:Button ID="BtnRunInvoice" runat="server" Text="Run Invoice" 
                      onclick="BtnRunInvoice_Click"/> &nbsp;&nbsp; 
                  <asp:Button ID="btnDonloadinvoice" runat="server" Text="Download Pdf" 
                      onclick="btnDonloadinvoice_Click"/>
                    &nbsp;&nbsp;
             <asp:Button ID="btnIExcel" runat="server" Text="Download Excel" 
                 onclick="btnIExcel_Click" />
              </td>
               <td align="center" style="width:2%"></td>
          </tr>
            <tr>
                <td align="right" style= "height:20px;">            
               </td>
           </tr>
       </table>
        </asp:View>
    </asp:MultiView>
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
