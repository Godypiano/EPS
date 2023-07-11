<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OptReports_New.aspx.cs" MasterPageFile="~/Default_admin.Master" Inherits="PresentationLayer.Admin.OptReports_New" %>

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


<!--begin::Toolbar-->
<div class="toolbar" id="kt_toolbar">
    <div
        class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
        <!--begin::Info-->
        <div
            class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
            <!--begin::Title-->
            <h1 class="text-dark fw-bolder my-1 fs-2">Operational Reports
                <small class="text-muted fs-6 fw-normal ms-1"></small>
            </h1>
            <!--end::Title-->
            <!--begin::Breadcrumb-->
            <ul class="breadcrumb fw-bold fs-base my-1">
                <li class="breadcrumb-item text-breadcrumbs">
                    <a
                        href="Dashboard.aspx"
                        class="text-breadcrumbs text-hover-primary">Home</a>
                </li>
                <li class="breadcrumb-item text-dark">Operational Reports</li>
            </ul>
            <!--end::Breadcrumb-->
        </div>
        <!--end::Info-->
    </div>
</div>
<!--end::Toolbar-->

<!--begin::Post-->
<div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
    <!--begin::Container-->
    <div class="container px-3">
        <!--begin::Row-->
        <div class="row g-xl-8">
            <!--begin::Col-->
            <div class="col-xl-12">
                <!--begin::Chart Widget 1-->
                <div class="card card-xl-stretch mb-5 mb-xl-8">
                    <!--begin::Body-->
                    <div
                        class="card-body d-flex justify-content-between flex-column">

                        <div class="w-100 text-end">
                            <asp:LinkButton CssClass="btn btn-primary btn-sm white-space-wrap mb-3" ID="lnkViewOTdetails" runat="server" CausesValidation="False" onclick="lnkViewOTdetails_Click">View Transporter Details</asp:LinkButton>
                        </div>

                        <div class="d-none overflow-auto mb-10">
                        <!-- <div class="d-flex overflow-auto mb-10"> -->
                            <!--begin::Nav tabs-->
                            <ul class="nav nav-stretch nav-line-tabs w-100 nav-line-tabs-2x fs-4 fw-bold flex-nowrap">
                                <!--begin::Nav item-->
                                <li class="nav-item">
                                    <a href="overview.html" class="nav-link text-active-primary px-3 active">Overview</a>
                                </li>
                                <!--end::Nav item-->
                                <!--begin::Nav item-->
                                <li class="nav-item">
                                    <a href="projects.html" class="nav-link text-active-primary px-3">Projects</a>
                                </li>
                                <!--end::Nav item-->
                                <!--begin::Nav item-->
                                <li class="nav-item">
                                    <a href="activity.html" class="nav-link text-active-primary px-3">Activity</a>
                                </li>
                                <!--end::Nav item-->
                                <!--begin::Nav item-->
                                <li class="nav-item">
                                    <a href="documents.html" class="nav-link text-active-primary px-3">Documents</a>
                                </li>
                                <!--end::Nav item-->
                            </ul>
                            <!--end::Nav tabs-->
                        </div>

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
                                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic"
                                            CssClass="red" ErrorMessage="Please select from date"
                                            ControlToValidate="rpttxtdtDateFrom"></asp:RequiredFieldValidator>
                                        <asp:comparevalidator ID="cmpFDate" runat="server" Display="Dynamic" 
                                                  errormessage="The date must be less than today date" CssClass="red"  valuetocompare="<%# DateTime.Today.ToShortDateString() %>"
                                                  controltovalidate="rpttxtdtDateFrom" type="date"  Operator="LessThan" />
                                        &nbsp;<asp:Label ID="Ladateto" runat="server" Text="Date To"></asp:Label>     
                                        &nbsp;&nbsp;<asp:TextBox ID="rpttxtdtDateTo" runat="server" CssClass = "Displaytext" Width="100"></asp:TextBox>
                                            <asp:ImageButton ID="rptImgBtndtDateTo" runat="server" CausesValidation="false" ImageUrl="/images/calendar.png" />
                                            <ajaxToolkit:CalendarExtender ID="rptdtCalendarExtender2" runat="server" PopupButtonID="rptImgBtndtDateTo"
                                                    TargetControlID="rpttxtdtDateTo" Format="dd/MM/yyyy" />
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic"
                                            CssClass="red" ErrorMessage="Please select to date" ControlToValidate="rpttxtdtDateTo"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="cmpVal" ControlToCompare="rpttxtdtDateFrom" ControlToValidate="rpttxtdtDateTo" Display="Dynamic" CssClass="red"
                                                     Type="Date" Operator="GreaterThan"  ErrorMessage="To Date should be greater than From Date" 
                                                     runat="server"></asp:CompareValidator>
                                        &nbsp;<asp:Label ID="Label5" runat="server" Text="Transporter"></asp:Label>
                                        <asp:DropDownList ID="DropDownDailyTransaction" runat="server" 
                                            Width="120px" >
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
                                             AllowPaging="True" Width="100%"  ShowHeaderWhenEmpty="False" 
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
                                                        <asp:TemplateField HeaderText="S.No">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblname" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                      
                                                    <asp:BoundField DataField="Permit_Application_No" HeaderText="Application Number" HtmlEncode="false"  
                                                        SortExpression="Permit_Application_No" />
                                                    <asp:BoundField DataField="Posted_Date" HeaderText="Application Date" HtmlEncode="false"/>
                                                    <asp:BoundField DataField="Contact_Person" HeaderText="Transporter Name" HtmlEncode="false"/>
                                                    <asp:BoundField DataField="Cargo_Type" HeaderText="Cargo Type" HtmlEncode="false" 
                                                        SortExpression="Cargo_Type" />
                                                    <asp:BoundField DataField="Cargo_Details" HeaderText="Cargo Details" HtmlEncode="false"
                                                        SortExpression="Cargo_Details" />
                                                    <asp:BoundField DataField="Truck_No" HeaderText="Truck Number" HtmlEncode="false" 
                                                        SortExpression="Truck_No" />
                                                   <asp:BoundField DataField="Axel_Configuration" HeaderText="Axle Config" HtmlEncode="false"
                                                        SortExpression="Axel_Configuration" />
                                                        <asp:BoundField DataField="Total_Length" ItemStyle-HorizontalAlign="Right" HeaderText="Length (M)" HtmlEncode="false"
                                                        SortExpression="Total_Length" />
                                                        <asp:BoundField DataField="Total_Width" ItemStyle-HorizontalAlign="Right" HeaderText="Width (M)" HtmlEncode="false"
                                                        SortExpression="Total_Width" />
                                                        <asp:BoundField DataField="Total_Height" ItemStyle-HorizontalAlign="Right" HeaderText="height (M)" HtmlEncode="false"
                                                        SortExpression="Total_Height" />
                                                        <asp:BoundField DataField="GVM_Actual_Weight" DataFormatString="{0:N0}" ItemStyle-HorizontalAlign="Right" HeaderText="GVM (Kg)" HtmlEncode="false"
                                                        SortExpression="GVM_Actual_Weight" />
                            
                                                    <asp:BoundField DataField="Route_From" HeaderText="Route From" HtmlEncode="false"
                                                        SortExpression="Route_From" />
                                                    <asp:BoundField DataField="Route_To" HeaderText="Route To" HtmlEncode="false"
                                                        SortExpression="Route_To" />
                                                   <asp:BoundField DataField="Route_Via" HeaderText="Route Via" HtmlEncode="false"
                                                        SortExpression="Route_Via" />
                                                      
                                                        <asp:BoundField DataField="Status" HeaderText="Status" HtmlEncode="false"
                                                        SortExpression="Status" />
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
                                        &nbsp;<asp:RequiredFieldValidator runat="server" ID="rfvALPTextBox1" ControlToValidate="ALPTextBox1" Display="Dynamic" CssClass="red" ErrorMessage="Please select from date"></asp:RequiredFieldValidator>
                                                <asp:comparevalidator ID="cfpALPTextBox1" runat="server" Display="Dynamic" 
                                                  errormessage="The date must be less than today date" CssClass="red"  valuetocompare="<%# DateTime.Today.ToShortDateString() %>"
                                                  controltovalidate="ALPTextBox1" type="date"  Operator="LessThan" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                          
                                            <asp:Label ID="Label3" runat="server" Text="Date To"></asp:Label>   
                                        &nbsp;&nbsp;<asp:TextBox ID="ALPTextBox2" runat="server" CssClass = "Displaytext" width="100"></asp:TextBox >
                                            <asp:ImageButton ID="ALPImageButton2" runat="server" CausesValidation="false" ImageUrl="/images/calendar.png" />
                                            <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" PopupButtonID="ALPImageButton2"
                                                    TargetControlID="ALPTextBox2" Format="dd/MM/yyyy" />
                                        <asp:RequiredFieldValidator runat="server" ID="rfvALPTextBox2" ControlToValidate="ALPTextBox2" Display="Dynamic" CssClass="red" ErrorMessage="Please select to date"></asp:RequiredFieldValidator>
                                                <asp:CompareValidator ID="cmpval2" ControlToCompare="ALPTextBox1" ControlToValidate="ALPTextBox2" Display="Dynamic" CssClass="red"
                                                     Type="Date" Operator="GreaterThan"  ErrorMessage="To Date should be greater than From Date" 
                                                     runat="server"></asp:CompareValidator>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                          
                                       <asp:Label ID="lblAbnormalLoad" runat="server" Text="Transporter"></asp:Label> &nbsp;&nbsp;
                                        <asp:DropDownList ID="DrpAbnormalLoad" runat="server" 
                                            Width="150px" AppendDataBoundItems="True" CausesValidation="True">
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
                                             AllowPaging="True" Width="100%" ShowHeaderWhenEmpty="False" 
                                        HeaderStyle-CssClass="HeaderDatagrid" 
                                            AlternatingRowStyle-CssClass="AlternateItemStyle" 
                                            onrowdatabound="GVAL_RowDataBound"
                                             onpageindexchanging="gvALPermit_PageIndexChanging">
                                        <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="S.No">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblname" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                <asp:BoundField DataField="Permit_No" HeaderText="Permit<br/>Number" HtmlEncode="false" />
                                                <asp:BoundField DataField="Permit_Application_No" HeaderText="Application<br/>Number" HtmlEncode="false" />
                                                <asp:BoundField DataField="Permit_Issue" HeaderText="Permit<br/>Date" HtmlEncode="false"  />
                                                <asp:BoundField DataField="Posted_Date" HeaderText="Application<br/>Date" HtmlEncode="false" />
                                                
                                                <asp:BoundField DataField="Transporter_Name" HeaderText="Transporter<br/> Name" HtmlEncode="false" />
                                                <asp:BoundField DataField="Transporter_Address" HeaderText="Address" HtmlEncode="false" />
                                                <asp:BoundField DataField="Truck_No" HeaderText="Truck<br/>Number" HtmlEncode="false"  />
                                                <asp:BoundField DataField="Axel_Configuration" HeaderText="Axle<br/>Configuration" HtmlEncode="false"  />
                                               
                                                <asp:BoundField DataField="Cargo_Type" HeaderText="Cargo<br/>Name" HtmlEncode="false" />
                                                <asp:BoundField DataField="Total_Length" ItemStyle-HorizontalAlign="Right" HeaderText="Length<br/>(M)" HtmlEncode="false"  />
                                                <asp:BoundField DataField="Total_Width" ItemStyle-HorizontalAlign="Right" HeaderText="Width<br/>(M)" HtmlEncode="false"  />
                                                <asp:BoundField DataField="Total_Height" ItemStyle-HorizontalAlign="Right" HeaderText="Height<br/>(M)" HtmlEncode="false"  />
                                                
                                                <asp:BoundField DataField="GVM_Actual_Weight" DataFormatString="{0:N0}" ItemStyle-HorizontalAlign="Right" HeaderText="GVM<br/>(Kg)" HtmlEncode="false" />
                                                 <asp:BoundField DataField="Route_From" HeaderText="Route<br/>From" HtmlEncode="false"  />
                                                <asp:BoundField DataField="Route_To" HeaderText="Route<br/>To" HtmlEncode="false"  />
                                                <asp:BoundField DataField="Route_Via" HeaderText="Route<br/>Via" HtmlEncode="false" />
                                                 <asp:BoundField DataField="Authorized" HeaderText="Authorized<br/>By" HtmlEncode="false" />
                                                
                                                
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
                                            <asp:RequiredFieldValidator runat="server" ID="rfvrpttxtMFroma" ControlToValidate="rpttxtMFroma" Display="Dynamic" CssClass="red" ErrorMessage="Please select from month"></asp:RequiredFieldValidator>
                                            <asp:Label ID="lblMonthlydtTo" runat="server" Text="Month/Year To"></asp:Label>   
                                        <asp:TextBox ID="rpttxtMToa" runat="server" CssClass = "Displaytext" width="100"></asp:TextBox>
                                            <asp:ImageButton ID="rptImgBtnMToa" runat="server" CausesValidation="false" ImageUrl="/images/calendar.png" />
                                            <ajaxToolkit:CalendarExtender ID="CalendarExtender4a" runat="server" PopupButtonID="rptImgBtnMToa"
                                                    TargetControlID="rpttxtMToa" OnClientHidden="onCalendarHidden2" OnClientShown="onCalendarShown2" Format="MM/yyyy" BehaviorID="calendar2"  />
                                        <asp:RequiredFieldValidator runat="server" ID="rfvrpttxtMToa" ControlToValidate="rpttxtMToa" Display="Dynamic" CssClass="red" ErrorMessage="Please select to month"></asp:RequiredFieldValidator>
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
                                 <asp:GridView ID="GvAnnual" runat="server" AllowPaging="False" 
                                     AlternatingRowStyle-CssClass="AlternateItemStyle" AutoGenerateColumns="False" 
                                     HeaderStyle-CssClass="HeaderDatagrid" 
                                     onrowdatabound="GvAnnual_RowDataBound" ShowFooter="true" 
                                     ShowHeaderWhenEmpty="False" Width="100%" 
                                     onpageindexchanging="GvAnnual_PageIndexChanging">
                                     <RowStyle CssClass="FirstItemStyle" HorizontalAlign="Left" />
                                     <Columns>
                                         <asp:TemplateField HeaderText="S.No">
                                            <ItemTemplate>
                                                <asp:Label ID="lblname" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
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
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
