<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pay_ReportsI.aspx.cs" MasterPageFile="~/Default_admin.Master" Inherits="PresentationLayer.Admin.Pay_ReportsI" %>

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
                            <a class="navigationbar" href="Dashboard.aspx">Home</a>&nbsp; &gt;&gt; &nbsp;<a class="navigationbar" href="Pay_ReportsI.aspx">Invoice Report</a>
                            </td>
                        <td style="width: 2%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 10px;"></td>
                    </tr>
                </table>
                <fieldset>
                    <legend>
                            <label class="hd1">PAYMENT REPORTS - Invoice</label>
                             </legend>
        <table style = "width:100%; border-spacing: 0px;">
    <tr>
 <td colspan="3" style= "height:20px;" ></td>

    </table>
<table style = "width:100%; border-spacing: 0px; border-top-width:6px; border-top-color:#889cb1" frame="box">
 
 <tr>
 <td colspan="3" align="center" style="height:25px" ></td>
 </tr>
 <tr>
 <td colspan="3" align="center" style="width:100%;" >
     
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
