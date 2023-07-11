<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OptReportsP.aspx.cs" MasterPageFile="~/Default_admin.Master"
    Inherits="PresentationLayer.Admin.OptReportsP" %>

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
                            Operational Reports - Permits Issued
                        </h1>
                        <!--end::Title-->
                        <!--begin::Breadcrumb-->
                        <ul class="breadcrumb fw-bold fs-base my-1">
                            <li class="breadcrumb-item text-breadcrumbs">
                                <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                            </li>
                            <li class="breadcrumb-item text-dark">Permits Issued</li>
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
                                        <asp:LinkButton ID="lnkViewOTdetails" CssClass="btn btn-primary btn-sm"
                                            runat="server" CausesValidation="False" onclick="lnkViewOTdetails_Click"><i
                                                class="fa fa-eye" aria-hidden="true"></i> View Transporter Details
                                        </asp:LinkButton>
                                        </div>
                                        <div class="row">
                                            <div class="form-group row mx-0 mb-3 align-items-sm-center col-lg-6">
                                                <asp:Label CssClass="col-auto ps-0 label-80px" ID="lblMonthlydtfrom"
                                                    runat="server" Text="Month/Year From">
                                                </asp:Label>
                                                <div class="col-sm-9 col-md-7 col-lg-12 col-xl-10 px-0">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="rpttxtMFroma" runat="server"
                                                            CssClass="form-control">
                                                        </asp:TextBox>
                                                        <div class="input-group-append rounded-left-0">
                                                            <asp:ImageButton class="input-group-text"
                                                                ID="rptImgBtnMFroma" runat="server"
                                                                CausesValidation="false"
                                                                ImageUrl="/images/calendar.png" />
                                                        </div>
                                                        <ajaxToolkit:CalendarExtender ID="CalendarExtender3a"
                                                            runat="server" PopupButtonID="rptImgBtnMFroma"
                                                            TargetControlID="rpttxtMFroma"
                                                            OnClientHidden="onCalendarHidden"
                                                            OnClientShown="onCalendarShown" Format="MM/yyyy"
                                                            BehaviorID="calendar1" />
                                                    </div>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                                                        runat="server" ErrorMessage="Fill month from" ForeColor="Red"
                                                        ControlToValidate="rpttxtMFroma" Display="Dynamic">
                                                    </asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center col-lg-6">
                                                <asp:Label CssClass="col-auto ps-0 label-80px" ID="lblMonthlydtTo"
                                                    runat="server" Text="Month/Year To">
                                                </asp:Label>
                                                <div class="col-sm-9 col-md-7 col-lg-12 col-xl-10 px-0">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="rpttxtMToa" runat="server"
                                                            CssClass="form-control">
                                                        </asp:TextBox>
                                                        <div class="input-group-append rounded-left-0">
                                                            <asp:ImageButton class="input-group-text" ID="rptImgBtnMToa"
                                                                runat="server" CausesValidation="false"
                                                                ImageUrl="/images/calendar.png" />
                                                        </div>
                                                        <ajaxToolkit:CalendarExtender ID="CalendarExtender4a"
                                                            runat="server" PopupButtonID="rptImgBtnMToa"
                                                            TargetControlID="rpttxtMToa"
                                                            OnClientHidden="onCalendarHidden2"
                                                            OnClientShown="onCalendarShown2" Format="MM/yyyy"
                                                            BehaviorID="calendar2" />
                                                    </div>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                                                        runat="server" ErrorMessage="Fill month" ForeColor="Red"
                                                        ControlToValidate="rpttxtMToa" Display="Dynamic">
                                                    </asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center col-md-6">
                                                <asp:Label CssClass="col-auto ps-0 label-80px" ID="lblAnnualTrans"
                                                    runat="server" Text="Transporter">
                                                </asp:Label>
                                                <asp:DropDownList
                                                    CssClass="form-control col-sm-12 col-md-12 col-lg-12 col-xl-12"
                                                    ID="DropAnnualTrans" runat="server" AppendDataBoundItems="True"
                                                    CausesValidation="True">
                                                </asp:DropDownList>
                                            </div>

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center col-md-6">
                                                <label class="col-auto ps-0 label-80px mb-0 d-none d-xl-block"></label>
                                                <div class="input-group col-sm-12 px-0">
                                                    <asp:TextBox CssClass="form-control" ID="txtAnnualTrans"
                                                        runat="server" ToolTip="Type Start letter of full name">
                                                    </asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <asp:Button CssClass="input-group-text btn btn-primary"
                                                            ID="btnARTsearch" runat="server"
                                                            onclick="btnARTsearch_Click" Text="Search" />
                                                    </div>
                                                    <asp:Label ID="lblannual" runat="server" ForeColor="Red">
                                                    </asp:Label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group mb-3 d-flex justify-content-end">
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnAnnualReport" runat="server" Text="Run Report"
                                                onclick="btnAnnualReport_Click" />
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnDownloadAnnualReport" runat="server" Text="Download Pdf"
                                                onclick="btnDownloadAnnualReport_Click" />
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap"
                                                ID="btnANExcel" runat="server" Text="Download Excel"
                                                onclick="btnANExcel_Click" />
                                        </div>

                                        <div id="table__responsive_Wrapper1" class="mb-6 table-responsive">
                                            <asp:GridView ID="GvAnnual"
                                                CssClass="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1 display dataTable no-footer"
                                                runat="server" AllowPaging="True"
                                                AlternatingRowStyle-CssClass="AlternateItemStyle"
                                                AutoGenerateColumns="False" EmptyDataText="No data exists."
                                                HeaderStyle-CssClass="fw-bold fs-6 text-gray-800 border-bottom border-gray-200 table_header"
                                                onrowdatabound="GvAnnual_RowDataBound" ShowFooter="true"
                                                ShowHeaderWhenEmpty="True" Width="100%"
                                                onpageindexchanging="GvAnnual_PageIndexChanging">
                                                <RowStyle CssClass="FirstItemStyle" HorizontalAlign="Left" />
                                                <Columns>
                                                    <asp:BoundField DataField="S.no" HeaderText="Serial No."
                                                        HtmlEncode="false" />
                                                    <asp:BoundField DataField="year" HeaderText="Year"
                                                        HtmlEncode="false" />
                                                    <asp:BoundField DataField="Month" HeaderText="Month"
                                                        HtmlEncode="false" />
                                                    <asp:BoundField DataField="ttr" DataFormatString="{0:N0}"
                                                        HeaderText="Number of Permits Issued" HtmlEncode="false"
                                                        ItemStyle-HorizontalAlign="Right" />
                                                </Columns>
                                                <FooterStyle CssClass="Ftstyle" />
                                                <HeaderStyle
                                                    CssClass="fw-bold fs-6 text-gray-800 border-bottom border-gray-200 table_header" />
                                                <PagerStyle CssClass="gridViewPager" />
                                                <AlternatingRowStyle CssClass="AlternateItemStyle" />
                                            </asp:GridView>
                                        </div>
                                    

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </asp:Content>