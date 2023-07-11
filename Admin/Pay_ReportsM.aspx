<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pay_ReportsM.aspx.cs" MasterPageFile="~/Default_admin.Master"
    Inherits="PresentationLayer.Admin.Pay_ReportsM" %>

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
                <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
                    <!--begin::Info-->
                    <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                        <!--begin::Title-->
                        <h1 class="text-dark fw-bolder my-1 fs-2">
                            Payment Reports - Monthly Report
                        </h1>
                        <!--end::Title-->
                        <!--begin::Breadcrumb-->
                        <ul class="breadcrumb fw-bold fs-base my-1">
                            <li class="breadcrumb-item text-breadcrumbs">
                                <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                            </li>
                            <li class="breadcrumb-item text-dark">Monthly Report</li>
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
                                        <asp:LinkButton ID="lnkViewTdetails" CssClass="btn btn-primary btn-sm"
                                            runat="server" CausesValidation="False" onclick="lnkViewTdetails_Click"><i
                                                class="fa fa-eye" aria-hidden="true"></i> View Transporter Details
                                        </asp:LinkButton>
                                         </div>
                                        <div class="row">
                                            <div class="form-group row mx-0 mb-3 align-items-sm-center col-lg-6">
                                                <asp:Label CssClass="col-auto ps-0 label-80px" ID="lblMonthlydtfrom"
                                                    runat="server" Text="Month From">
                                                </asp:Label>
                                                <div class="col-sm-9 col-md-7 col-lg-12 col-xl-10 px-0">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="rpttxtMFrom" runat="server"
                                                            CssClass="form-control">
                                                        </asp:TextBox>
                                                        <div class="input-group-append rounded-left-0">
                                                            <asp:ImageButton class="input-group-text"
                                                                ID="rptImgBtnMFrom" runat="server"
                                                                CausesValidation="false"
                                                                ImageUrl="/images/calendar.png" />
                                                        </div>
                                                        <ajaxToolkit:CalendarExtender ID="CalendarExtender1"
                                                            runat="server" PopupButtonID="rptImgBtnMFrom"
                                                            TargetControlID="rpttxtMFrom"
                                                            OnClientHidden="onCalendarHidden"
                                                            OnClientShown="onCalendarShown" Format="MM/yyyy"
                                                            BehaviorID="calendar1" />
                                                    </div>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                                        runat="server" ErrorMessage="Fill month from" ForeColor="Red"
                                                        ControlToValidate="rpttxtMFrom" Display="Dynamic">
                                                    </asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center col-lg-6">
                                                <asp:Label CssClass="col-auto ps-0 label-80px" ID="lblMonthlydtTo"
                                                    runat="server" Text="Month To">
                                                </asp:Label>
                                                <div class="col-sm-9 col-md-7 col-lg-12 col-xl-10 px-0">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="rpttxtMTo" runat="server"
                                                            CssClass="form-control">
                                                        </asp:TextBox>
                                                        <div class="input-group-append rounded-left-0">
                                                            <asp:ImageButton class="input-group-text" ID="rptImgBtnMTo"
                                                                runat="server" CausesValidation="false"
                                                                ImageUrl="/images/calendar.png" />
                                                        </div>
                                                        <ajaxToolkit:CalendarExtender ID="CalendarExtender2"
                                                            runat="server" BehaviorID="calendar2" Format="MM/yyyy"
                                                            OnClientHidden="onCalendarHidden2"
                                                            OnClientShown="onCalendarShown2"
                                                            PopupButtonID="rptImgBtnMTo" TargetControlID="rpttxtMTo" />
                                                    </div>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                                                        runat="server" ControlToValidate="rpttxtMTo"
                                                        ErrorMessage="Fill month to" ForeColor="Red" Display="Dynamic">
                                                    </asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center col-md-6">
                                                <asp:Label CssClass="col-auto ps-0 label-80px" ID="Ladateto1"
                                                    runat="server" Text="Transpoter">
                                                </asp:Label>
                                                <asp:DropDownList
                                                    CssClass="form-control col-sm-12 col-md-12 col-lg-12 col-xl-12"
                                                    ID="DropDownTranspoterMonthly" runat="server">
                                                    <asp:ListItem Selected="True">All</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center col-md-6">
                                                <label class="col-auto ps-0 label-80px mb-0 d-none d-xl-block"></label>
                                                <div class="input-group col-sm-12 px-0">
                                                    <asp:TextBox CssClass="form-control" ID="SearchTransporterMonthly"
                                                        runat="server" ToolTip="Type First letters or full name">
                                                    </asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <asp:Button CssClass="input-group-text btn btn-primary"
                                                            ID="btnMPTsearch" runat="server"
                                                            onclick="btnMPTsearch_Click" Text="Search" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- <asp:Label ID="lblmon" runat="server" ForeColor="Red">
                                        </asp:Label> -->

                                        <div class="form-group mb-3 d-flex justify-content-end">
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnRunMonthly" runat="server" Text="Run Report"
                                                onclick="btnRunMonthly_Click" />
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnDownloadMonthly" runat="server" Text="Download Pdf"
                                                onclick="btnDownloadMonthly_Click" />
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap"
                                                ID="btnMExcel" runat="server" Text="Download Excel"
                                                onclick="btnMExcel_Click" />
                                        </div>

                                        <div id="table__responsive_Wrapper1" class="mb-6 table-responsive">
                                            <asp:GridView ID="GridViewMonthly"
                                                CssClass="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1 display dataTable no-footer"
                                                runat="server" AllowPaging="True" Width="100%"
                                                EmptyDataText="No data exists." ShowHeaderWhenEmpty="True"
                                                HeaderStyle-CssClass="fw-bold fs-6 text-gray-800 border-bottom border-gray-200 table_header"
                                                AlternatingRowStyle-CssClass="AlternateItemStyle" ShowFooter="True"
                                                AutoGenerateColumns="False"
                                                onpageindexchanging="GridViewMonthly_PageIndexChanging"
                                                onrowdatabound="GridViewMonthly_RowDataBound">
                                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />

                                                <Columns>
                                                    <asp:BoundField DataField="S.no" HeaderText="S.no" />
                                                    <asp:BoundField DataField="Month" HeaderText="Month" />
                                                    <asp:BoundField DataField="permit_fee" DataFormatString="{0:N2}"
                                                        ItemStyle-HorizontalAlign="Right"
                                                        HeaderText="Permit Fee (USD)" />
                                                    <asp:BoundField DataField="surcharge_fee" DataFormatString="{0:N2}"
                                                        ItemStyle-HorizontalAlign="Right"
                                                        HeaderText="Surcharge (USD)" />
                                                    <asp:BoundField DataField="Total" DataFormatString="{0:N2}"
                                                        ItemStyle-HorizontalAlign="Right" HeaderText="Total (USD)" />
                                                    <asp:BoundField DataField="amount" DataFormatString="{0:N2}"
                                                        ItemStyle-HorizontalAlign="Right"
                                                        HeaderText="Amount Paid (TZS)" />
                                                </Columns>

                                                <FooterStyle CssClass="Ftstyle" />
                                                <HeaderStyle
                                                    CssClass="fw-bold fs-6 text-gray-800 border-bottom border-gray-200 table_header">
                                                </HeaderStyle>
                                                <PagerStyle CssClass="gridViewPager" />
                                                <AlternatingRowStyle CssClass="AlternateItemStyle">
                                                </AlternatingRowStyle>
                                            </asp:GridView>
                                        </div>


                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </asp:Content>