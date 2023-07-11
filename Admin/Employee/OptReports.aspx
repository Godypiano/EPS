<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OptReports.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.OptReports" %>

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
                            <a class="navigationbar" href="Dashboard.aspx">Home</a>
                            &nbsp; &gt;&gt; &nbsp;<a class="navigationbar" href="OptReports.aspx">OPERATIONAL REPORTS</a>
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
                            <label class="hd1">OPERATIONAL REPORTS</label>
                             </legend>
        <table style = "width:100%; border-spacing: 0px;">
    <tr>
 <td colspan="3" style= "height:20px;" ></td>
 </tr>
 <!--   <tr>
 <td colspan="3" align="center" ><asp:Label CssClass ="fontHeader" ID="lblPheader" runat="server" 
        Font-Bold="True" >OPERATIONAL REPORTS</asp:Label></td>
 </tr>
 <tr>
 <td colspan="3" style= "height:20px;" ></td>
 </tr>-->
</table>
<table style = "width:100%; border-top-width:6px; border-top-color:#889cb1; border-spacing: 0px;" frame="box">
<tr style="background-color: #889cb1; vertical-align:top; height:27px; font-weight:bold; ">
<td style="width:33%; text-align:center" id="DTreport" runat="server">
    <asp:LinkButton ID="lnkDailtransact" runat="server" Font-Underline="false" 
        Font-Size="Medium" onclick="lnkDailtransact_Click" 
        CausesValidation="False">Daily Transaction Report</asp:LinkButton></td>
<td style="width:34%; text-align:center" id="ALreport" runat="server">
    <asp:LinkButton ID="lnkloadpermit" runat="server" Font-Underline="false" 
        Font-Size="Medium" onclick="lnkloadpermit_Click" CausesValidation="False">Abnormal/Wide Load Permit</asp:LinkButton> </td>
<td style="width:33%; text-align:center" id="Dreport" runat="server">
    <asp:LinkButton ID="lnkAnnualReport" runat="server" Font-Underline="false" 
        Font-Size="Medium" onclick="lnkAnnualReport_Click" 
        CausesValidation="False" >Permits Issued</asp:LinkButton></td>

</tr>
<tr>
 <td colspan="3" align="center" style="height:25px" ></td>
 </tr>
<tr>
<td colspan="3" style="width:100%">
    <asp:MultiView ID="MltOperational" runat="server">
        <asp:View ID="ViewDailyTransaction" runat="server">
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
        </asp:View>
        <asp:View ID="ViewLoadPermit" runat="server">
            
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
        </asp:View>
        <asp:View ID="ViewAnnualReport" runat="server">
        <table style = "width:100%; border-spacing: 0px;">
        <tr>
        <td style="width:2%"></td>    
        <td align="center" style="width:96%">
            <asp:Label ID="lblMonthlydtfrom" runat="server" Text="Month/Year From"></asp:Label>
            
           <asp:TextBox ID="rpttxtMFroma" runat="server" CssClass = "Displaytext" width="100"></asp:TextBox>
                <asp:ImageButton ID="rptImgBtnMFroma" runat="server" CausesValidation="false" ImageUrl="/images/calendar.png" />           
                <ajaxToolkit:CalendarExtender ID="CalendarExtender3a" runat="server" PopupButtonID="rptImgBtnMFroma"
                        TargetControlID="rpttxtMFroma" OnClientHidden="onCalendarHidden" OnClientShown="onCalendarShown" Format="MM/yyyy" BehaviorID="calendar1"  />                              
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="Fill month from" ForeColor="Red" 
                ControlToValidate="rpttxtMFroma"></asp:RequiredFieldValidator>                      
                <asp:Label ID="lblMonthlydtTo" runat="server" Text="Month/Year To"></asp:Label>   
            <asp:TextBox ID="rpttxtMToa" runat="server" CssClass = "Displaytext" width="100"></asp:TextBox>
                <asp:ImageButton ID="rptImgBtnMToa" runat="server" CausesValidation="false" ImageUrl="/images/calendar.png" />
                <ajaxToolkit:CalendarExtender ID="CalendarExtender4a" runat="server" PopupButtonID="rptImgBtnMToa"
                        TargetControlID="rpttxtMToa" OnClientHidden="onCalendarHidden2" OnClientShown="onCalendarShown2" Format="MM/yyyy" BehaviorID="calendar2"  />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ErrorMessage="Fill month" ForeColor="Red" ControlToValidate="rpttxtMToa"></asp:RequiredFieldValidator>
            
            <asp:Label ID="lblAnnualTrans" runat="server" Text="Transporter"></asp:Label>
            &nbsp;<asp:DropDownList ID="DropAnnualTrans" runat="server" 
                Width="120px" AppendDataBoundItems="True" CausesValidation="True">
            </asp:DropDownList>
            <asp:TextBox ID="txtAnnualTrans" runat="server" 
                ToolTip="Type Start letter of full name" Width="100px"></asp:TextBox>
            <asp:Button ID="btnARTsearch" runat="server" onclick="btnARTsearch_Click" 
                Text="Search" /><br/> <asp:Label ID="lblannual" runat="server" ForeColor="Red"></asp:Label><br/>
         
        </td>
            <td style="width:2%"></td>
            </tr>
        <tr>
        <td align="center" colspan="3" style="height:10px; width:100%" >
            
            </td>
        </tr>
        <tr>
                <td align="right" colspan="3" style= "height:10px; width:100%">            
               </td>
           </tr>
        <tr>
            <td style="width:2%"></td>
 <td align="center" style="width:96%" >
     <div style="overflow: auto; max-width: 960px">
     <asp:GridView ID="GvAnnual" runat="server" AllowPaging="True" 
         AlternatingRowStyle-CssClass="AlternateItemStyle" AutoGenerateColumns="False" 
         EmptyDataText="No data exists." HeaderStyle-CssClass="HeaderDatagrid" 
         onrowdatabound="GvAnnual_RowDataBound" ShowFooter="true" 
         ShowHeaderWhenEmpty="True" Width="100%" 
         onpageindexchanging="GvAnnual_PageIndexChanging">
         <RowStyle CssClass="FirstItemStyle" HorizontalAlign="Left" />
         <Columns>
         <asp:BoundField DataField="S.no" HeaderText="Serial No." HtmlEncode="false" />
             <asp:BoundField DataField="year" HeaderText="Year" HtmlEncode="false" />
             <asp:BoundField DataField="Month" HeaderText="Month" HtmlEncode="false" />
             <asp:BoundField DataField="ttr" DataFormatString="{0:N0}" 
                 HeaderText="Number of Permits Issued" HtmlEncode="false" 
                 ItemStyle-HorizontalAlign="Right" />
         </Columns>
         <FooterStyle CssClass="Ftstyle" />
         <HeaderStyle CssClass="HeaderDatagrid" />
         <PagerStyle CssClass="gridViewPager" />
         <AlternatingRowStyle CssClass="AlternateItemStyle" />
     </asp:GridView>
         </div>
            </td>
            <td style="width:2%"></td>
 </tr>
        
        <tr>
                <td align="right" colspan="3" style= "height:20px; width:100%">            
               </td>
           </tr>
         <tr>
             <td align="center" style="width:2%"></td>
         <td align="right" style= "width:96%;">
             <asp:Button ID="btnAnnualReport" runat="server"  
                 Text="Run Report" onclick="btnAnnualReport_Click" />
             &nbsp;&nbsp;&nbsp;
             <asp:Button ID="btnDownloadAnnualReport" runat="server" Text="Download Pdf" 
                 onclick="btnDownloadAnnualReport_Click" />
             &nbsp;&nbsp;&nbsp;
             <asp:Button ID="btnANExcel" runat="server" Text="Download Excel" 
                 onclick="btnANExcel_Click" />
             </td>
             <td align="center" style="width:2%"></td>
        </tr>
            <tr>
                <td align="right" colspan="3" style= "height:20px; width:100%">            
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
