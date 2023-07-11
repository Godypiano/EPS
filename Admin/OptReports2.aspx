<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OptReports2.aspx.cs" MasterPageFile="~/Default_admin.Master"
    Inherits="PresentationLayer.Admin.OptReports2" %>

    <%@ MasterType VirtualPath="~/Default_admin.master" %>
        <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <link href="/Styles/styles_reports.css" rel="stylesheet" type="text/css" />

            <link rel="stylesheet" href="/assets/dataTable/css/jquery.dataTables.min.css">

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
                <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
                    <!--begin::Info-->
                    <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                        <!--begin::Title-->
                        <h1 class="text-dark fw-bolder my-1 fs-2">
                            Operational Reports - Daily Transaction
                            Report
                        </h1>
                        <!--end::Title-->
                        <!--begin::Breadcrumb-->
                        <ul class="breadcrumb fw-bold fs-base my-1">
                            <li class="breadcrumb-item text-breadcrumbs">
                                <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                            </li>
                            <li class="breadcrumb-item text-dark">Daily
                                Transaction Report</li>
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
                                <div class="card-body d-flex justify-content-between flex-column">

                                    <div class="form-group d-flex justify-content-end mb-3">
                                        <asp:LinkButton CssClass="btn btn-primary btn-sm" ID="lnkViewOTdetails"
                                            runat="server" CausesValidation="False" onclick="lnkViewOTdetails_Click"> <i
                                                class="fa fa-eye" aria-hidden="true"></i> View Transporter Details
                                        </asp:LinkButton>
                                    </div>

                                    <div class="row">
                                        <div class="form-group row mx-0 mb-3 align-items-sm-center col-lg-6">
                                            <asp:Label CssClass="col-auto ps-0 label-100px" ID="Label4" runat="server"
                                                Text="Select Category">
                                            </asp:Label>
                                            <asp:DropDownList
                                                class="col-sm-9 col-md-7 col-lg-12 col-xl-10 px-0 form-control"
                                                ID="DropDailyTransactCategory" runat="server"></asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group row mx-0 mb-3 align-items-sm-center col-lg-6">
                                            <asp:Label CssClass="col-auto ps-0 label-100px" ID="lblDoprRpr"
                                                runat="server" Text="Date From">
                                            </asp:Label>
                                            <div class="col-sm-9 col-md-7 col-lg-12 col-xl-10 px-0">
                                                <div class="input-group ">
                                                    <asp:TextBox ID="rpttxtdtDateFrom" runat="server"
                                                        CssClass="form-control"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <asp:ImageButton class="input-group-text"
                                                            ID="rptImgBtndtDateFrom" runat="server"
                                                            CausesValidation="false" ImageUrl="/images/calendar.png" />
                                                    </div>

                                                    <ajaxToolkit:CalendarExtender ID="rptdtCalendarExtender1"
                                                        runat="server" Format="dd/MM/yyyy"
                                                        PopupButtonID="rptImgBtndtDateFrom"
                                                        TargetControlID="rpttxtdtDateFrom" />

                                                </div>

                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                    ErrorMessage="*Date" ForeColor="Red"
                                                    ControlToValidate="rpttxtdtDateFrom" Display="Dynamic">
                                                </asp:RequiredFieldValidator>
                                                <asp:CompareValidator ID="cmpFDate" runat="server" Display="Dynamic"
                                                    ErrorMessage="The date must be less than equal to today date" CssClass="red"
                                                    ValueToCompare="<%# DateTime.Today.ToShortDateString() %>"
                                                    ControlToValidate="rpttxtdtDateFrom" Type="date" Operator="LessThanEqual" />
                                            </div>
                                        </div>

                                        <div class="form-group row mx-0 mb-3 align-items-sm-center col-lg-6">
                                            <asp:Label CssClass="col-auto ps-0 label-100px" ID="Ladateto" runat="server"
                                                Text="Date To">
                                            </asp:Label>
                                            <div class="col-sm-9 col-md-7 col-lg-12 col-xl-10 px-0">
                                                <div class="input-group ">
                                                    <asp:TextBox ID="rpttxtdtDateTo" runat="server"
                                                        CssClass="form-control"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <asp:ImageButton class="input-group-text" ID="rptImgBtndtDateTo"
                                                            runat="server" CausesValidation="false"
                                                            ImageUrl="/images/calendar.png" />
                                                    </div>

                                                    <ajaxToolkit:CalendarExtender ID="rptdtCalendarExtender2"
                                                        runat="server" PopupButtonID="rptImgBtndtDateTo"
                                                        TargetControlID="rpttxtdtDateTo" Format="dd/MM/yyyy" />

                                                </div>

                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                    ErrorMessage="*Date" ForeColor="Red"
                                                    ControlToValidate="rpttxtdtDateTo" Display="Dynamic">
                                                </asp:RequiredFieldValidator>
                                                <asp:CompareValidator ID="cmpVal" ControlToCompare="rpttxtdtDateFrom"
                                                    ControlToValidate="rpttxtdtDateTo" Display="Dynamic"
                                                    CssClass="text-danger" Type="Date" Operator="GreaterThanEqual"
                                                    ErrorMessage="To Date should be greater than equal to From Date"
                                                    runat="server"></asp:CompareValidator>
                                                <asp:CompareValidator ID="cmpval1" 
                                                ControlToValidate="rpttxtdtDateTo" Display="Dynamic" CssClass="red"
                                                Type="Date" Operator="LessThanEqual" ValueToCompare="<%# DateTime.Today.ToShortDateString() %>"
                                                ErrorMessage="To Date should be less than equal to today date"
                                                runat="server"></asp:CompareValidator>
                                            </div>
                                        </div>

                                        <div class="form-group row mx-0 mb-3 align-items-sm-center col-md-6">
                                            <asp:Label CssClass="col-auto ps-0 label-100px" ID="Label5" runat="server"
                                                Text="Transporter">
                                            </asp:Label>
                                            <asp:DropDownList
                                                CssClass="form-control col-sm-12 col-md-12 col-lg-12 col-xl-12"
                                                ID="DropDownDailyTransaction" runat="server"
                                                AppendDataBoundItems="True">
                                            </asp:DropDownList>
                                        </div>

                                        <div class="form-group row mx-0 mb-3 align-items-sm-center col-md-6">
                                            <label class="col-auto ps-0 label-100px mb-0 d-none d-xl-block"></label>
                                            <div class="input-group col-sm-12 px-0">
                                                <asp:TextBox CssClass="form-control" ID="txtDailyTransaction"
                                                    runat="server" ToolTip="Type Start letter of full name">
                                                </asp:TextBox>
                                                <div class="input-group-append rounded-left-0">
                                                    <asp:Button CssClass="input-group-text btn btn-primary"
                                                        ID="btnDTTsearch" runat="server" onclick="btnDTTsearch_Click"
                                                        Text="Search" />
                                                </div>

                                            </div>
                                        </div>

                                        <div class="form-group mb-3 d-flex justify-content-end">
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btndtRunReport" runat="server" Text="Run Report"
                                                onclick="btndtRunReport_Click" />

                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btndtDownloadPdf" runat="server" Text="Download Pdf"
                                                onclick="btndtDownloadPdf_Click" />

                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap"
                                                ID="btnDExcel" runat="server" Text="Download Excel"
                                                onclick="btnDExcel_Click" />
                                        </div>

                                        <asp:Label ID="lbldalyt" runat="server" ForeColor="Red">
                                        </asp:Label>

                                        <div class="table-responsive mb-1">
                                            <asp:GridView ID="GVDailyTransaction"
                                                CssClass="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1 display dataTable no-footer"
                                                ShowFooter="true" runat="server" AutoGenerateColumns="false"
                                                AllowPaging="True" Width="100%" ShowHeaderWhenEmpty="True"
                                                HeaderStyle-CssClass=" fw-bold fs-6 text-gray-800 border-bottom border-gray-200 table_header"
                                                AlternatingRowStyle-CssClass="AlternateItemStyle"
                                                onpageindexchanging="GVDailyTransaction_PageIndexChanging"
                                                onrowdatabound="GVDailyTransaction_RowDataBound">
                                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                                <FooterStyle CssClass="Ftstyle" />
                                                <HeaderStyle
                                                    CssClass="fw-bold fs-6 text-gray-800 border-bottom border-gray-200 table_header">
                                                </HeaderStyle>
                                                <PagerStyle CssClass="gridViewPager" />
                                                <AlternatingRowStyle CssClass="AlternateItemStyle">
                                                </AlternatingRowStyle>
                                                <Columns>
                                                    <asp:BoundField DataField="S.no" HeaderText="S.no" HtmlEncode="false"  
                                                    SortExpression="S.no" />
                                                <asp:BoundField DataField="permit_app_no" HeaderText="Application<br/>Number" HtmlEncode="false"  
                                                    SortExpression="permit_app_no" />
                                                    <asp:BoundField DataField="permit_app_no"
                                                        HeaderText="Application<br/>Number" HtmlEncode="false"
                                                        SortExpression="Application_No" />
                                                    <asp:BoundField DataField="posted_date"
                                                        HeaderText="Application<br/>Date" HtmlEncode="false" />
                                                    <asp:BoundField DataField="transporter_name"
                                                        HeaderText="Transporter<br/> Name" HtmlEncode="false" />
                                                    <asp:BoundField DataField="cargo" HeaderText="Cargo<br/> Type"
                                                        HtmlEncode="false" SortExpression="Cargo_Type" />
                                                    <asp:BoundField DataField="cargo_details"
                                                        HeaderText="Cargo<br/> Details" HtmlEncode="false"
                                                        SortExpression="Cargo_Details" />
                                                    <asp:BoundField DataField="registration_no"
                                                        HeaderText="Truck <br/>Number" HtmlEncode="false"
                                                        SortExpression="Truck_Number" />
                                                    <asp:BoundField DataField="axle_configuration"
                                                        HeaderText="Axle<br/> Config" HtmlEncode="false"
                                                        SortExpression="Axle_Config" />
                                                    <asp:BoundField DataField="total_length" ItemStyle-HorizontalAlign="Right"
                                                        HeaderText="Length<br/> (M)" HtmlEncode="false"
                                                        SortExpression="Length" />
                                                    <asp:BoundField DataField="total_width" ItemStyle-HorizontalAlign="Right"
                                                        HeaderText="Width<br/> (M)" HtmlEncode="false"
                                                        SortExpression="Width" />
                                                    <asp:BoundField DataField="total_height" ItemStyle-HorizontalAlign="Right"
                                                        HeaderText="height<br/> (M)" HtmlEncode="false"
                                                        SortExpression="Height" />
                                                    <asp:BoundField DataField="total_weight" DataFormatString="{0:N0}"
                                                        ItemStyle-HorizontalAlign="Right" HeaderText="GVM <br/>(Kg)"
                                                        HtmlEncode="false" SortExpression="GVM" />

                                                    <asp:BoundField DataField="route_from" HeaderText="Route<br/> From"
                                                        HtmlEncode="false" SortExpression="Route_From" />
                                                    <asp:BoundField DataField="route_to" HeaderText="Route<br/> To"
                                                        HtmlEncode="false" SortExpression="Route_To" />
                                                    <asp:BoundField DataField="route_via" HeaderText="Route<br/> Via"
                                                        HtmlEncode="false" SortExpression="Route_Via" />

                                                    <asp:BoundField DataField="status" HeaderText="Status"
                                                        HtmlEncode="false" SortExpression="Status" />
                                                </Columns>
                                            </asp:GridView>
                                        </div>

                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </asp:Content>


        <asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
            <script src="/assets/dataTable/js/jquery.dataTables.min.js"></script>

            <script>
                (function () {
                    $(function () {
                        var table1 = $('table[id$=GVDailyTransaction]');
                        var thead_row1 = $(table1).find($('.table_header'));
                        var thead1 = $("<thead/>").append($(thead_row1));
                        var table__responsive_Wrapper1 = $('#table__responsive_Wrapper1').children();
                        // var tfooter1 = $(table1).find($('.gridViewPager'));

                        // $(tfooter1).remove();

                        // Add required classes
                        $(table__responsive_Wrapper1).addClass('table-responsive mb-1');

                        //   Append thead to tables
                        $(table1).prepend($(thead1));

                        $(table1).DataTable({
                            "stateSave": true,
                            "stateDuration": 60 * 1,
                            "responsive": true,
                            "lengthMenu": [
                                [10, 20, 30, 50, -1],
                                [10, 20, 30, 50, "All"]
                            ],
                            "sPaginationType": "full_numbers"
                        });

                    });
                }());
            </script>

        </asp:Content>