<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" MasterPageFile="~/Default_admin.Master" Inherits="PresentationLayer.Admin.Dashboard" %>

<%@ MasterType VirtualPath="~/Default_admin.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="/assets/dataTable/css/jquery.dataTables.min.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

                <!--begin::Toolbar-->
                <div class="toolbar" id="kt_toolbar">
                    <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
                        <!--begin::Info-->
                        <div
                            class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                            <!--begin::Title-->
                            <h1 class="text-dark fw-bolder my-1 fs-2">
                                Dashboard - View All Applications Status Count
                            </h1>
                            <!--end::Title-->
                            <!--begin::Breadcrumb-->
                            <ul class="breadcrumb fw-bold fs-base my-1">
                                <li class="breadcrumb-item text-dark">Home</li>
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
                                <div class="row">

                                    <div class="col-sm-6">
                                        <div class="card card-gradient-1">
                                            <div
                                                class="card-body d-flex justify-content-between align-items-start">
                                                <div class="card-details">
                                                    <h1 class="display-6"><%= TRAC %></h1>
                                                    <p class="card-text pt-6">Transporters</p>
                                                </div>
                                                <div class="card-icon">
                                                    <div class="image-wrapper">
                                                        <img class="img-fluid"
                                                            src="/images/tranporter.png"
                                                            alt="Transporters">
                                                    </div>
                                                    <div>
                                                        <asp:Button runat="server" ID="btnTrans" CssClass="btn mt-2 btn-sm btn-primary px-3" Text="View" OnClick="btnTrans_Click" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-sm-6 mt-3 mt-sm-0 mb-xl-4">
                                        <div class="card card-gradient-2">
                                            <div
                                                class="card-body d-flex justify-content-between align-items-start">
                                                <div class="card-details">
                                                    <h1 class="display-6"><%= WCC %></h1>
                                                    <p class="card-text pt-6">Waiting for Control Number (Last 10 Days)</p>
                                                </div>
                                                <div class="card-icon">
                                                    <div class="image-wrapper">
                                                        <img class="img-fluid"
                                                            src="/images/control-number.png"
                                                            alt="Transporters">
                                                    </div>
                                                    <div>
                                                        <asp:Button runat="server" ID="btnControl" CssClass="btn mt-2 btn-sm btn-primary px-3" Text="View" OnClick="btnControl_Click" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xl-6 mt-3 mt-xl-0">
                                        <div class="card card-gutter-sm">
                                            <div class="card-body px-4">
                                                <div
                                                    class="chart-header d-flex justify-content-between align-items-baseline">
                                                    <h4>Transporter's Application Status</h4>
                                                </div>
                                                <div class="row justify-content-between">
                                                    <div class="form-group col-sm-6 col-md-6">
                                                        <asp:DropDownList CssClass="form-control" ID="ddlTrans" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTrans_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                    </div>

                                                    <div
                                                        class="d-flex justify-content-end col-auto mt-3 mt-sm-0 ps-xl-0">
                                                        <div class="btn-group" role="group"
                                                            aria-label="Button group">
                                                            <asp:Button runat="server" ID="btnDay" CssClass="btn btn-primary btn-sm px-xl-3 active" Text="Day" OnClick="btnDay_Click" />
                                                            <asp:Button runat="server" ID="btnWeek" CssClass="btn btn-primary btn-sm px-xl-3" Text="Week" OnClick="btnWeek_Click" />
                                                            <asp:Button runat="server" ID="btnMonth" CssClass="btn btn-primary btn-sm px-xl-3" Text="Month" OnClick="btnMonth_Click" />
                                                            <asp:Button runat="server" ID="btnYear" CssClass="btn btn-primary btn-sm px-xl-3" Text="Year" OnClick="btnYear_Click" />
                                                            <!--<button type="button" name=""
                                                                id="todayAppTransporter"
                                                                class="btn btn-primary btn-sm px-xl-3 active">Day</button>
                                                            <button type="button" name=""
                                                                id="weekAppTransporter"
                                                                class="btn btn-primary btn-sm px-xl-3">Week</button>
                                                            <button type="button" name=""
                                                                id="monthAppTransporter"
                                                                class="btn btn-primary btn-sm px-xl-3">Month</button>
                                                            <button type="button" name=""
                                                                id="yearAppTransporter"
                                                                class="btn btn-primary btn-sm px-xl-3">Year</button>-->
                                                        </div>
                                                    </div>

                                                </div>

                                                <hr>

                                                <div class="chart-wrapper">
                                                    <canvas id="appTransporterStatusCanvas"></canvas>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xl-6 mt-3 mt-xl-0">
                                        <div class="card card-gutter-sm">
                                            <div class="card-body">
                                                <div
                                                    class="chart-header d-flex justify-content-between align-items-baseline">
                                                    <h4>Pending Application By Designation</h4>
                                                </div>

                                                <div
                                                    class="d-none justify-content-end col-auto mt-3 mt-sm-0 mt-xl-3">
                                                    <div class="btn-group" role="group"
                                                        aria-label="Button group">
                                                        <button type="button" name=""
                                                            id="todayAppDesignation" class="btn btn-primary btn-sm px-3 active btn-lg
                                                            btn-block">Day</button>
                                                        <button type="button" name=""
                                                            id="weekAppDesignation" class="btn btn-primary btn-sm px-3 btn-lg
                                                            btn-block">Week</button>
                                                        <button type="button" name=""
                                                            id="monthAppDesignation" class="btn btn-primary btn-sm px-3 btn-lg
                                                            btn-block">Month</button>
                                                        <button type="button" name=""
                                                            id="yearAppDesignation" class="btn btn-primary btn-sm px-3 btn-lg
                                                            btn-block">Year</button>
                                                    </div>
                                                </div>
                                                <hr>

                                                <div class="chart-wrapper chart-modified">
                                                    <canvas id="appByDesignationStatusCanvas"></canvas>
                                                </div>
                                            </div>
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
     <!--begin::Javascript-->
    <!--begin::Global Javascript Bundle(used by all pages)-->
    <!--<script src="/assets/plugins/global/plugins.bundle.js"></script>
    <script src="/assets/js/scripts.bundle.js"></script>
    <!--end::Global Javascript Bundle-->
    <!--begin::Page Vendors Javascript(used by this page)-->
    <!--<script src="/assets/plugins/custom/leaflet/leaflet.bundle.js"></script>
    <!--end::Page Vendors Javascript-->
    <!--begin::Page Custom Javascript(used by this page)-->
    <script src="/assets/js/custom/modals/create-app.js"></script>
    <script src="/assets/js/custom/modals/select-location.js"></script>
    <script src="/assets/js/custom/widgets.js"></script>
    <script src="/assets/js/custom/modals/create-project.bundle.js"></script>
    <script src="/assets/js/custom/modals/upgrade-plan.js"></script>
    <script src="/assets/js/custom/intro.js"></script>

    <script src="/assets/chart-js/chart.2.8.0.js"></script>
    <script src="/assets/numeral.js/numeral.min.js"></script>

    <script src="/Scripts/AdminMenuScript.js" type="text/javascript"></script>

    <script src="/assets/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>

    <script src="/dashboard.js"></script>

    <!--end::Page Custom Javascript-->

    <script>
        $(document).ready(function () {

            // Application Processing Status Pie Chart Init
            applicationTransporter();

            // Application by Designation Status Bar Chart Init
            applicationByDesignation();

        });

        var appTransporterData = appTransporterStatusPieChart;

        function applicationTransporterStatusActions(elementID, data, labels = ["Approval for Payament",
            "Waiting Control Number", "Deleted Application", "Issued Permit",
            "Expired Invoice", "Fee Paid", "Cancelled Applications"
        ], ) {
            $('#' + elementID).on('click', function (e) {
                e.preventDefault();

                chartUpdate_single_dataset(
                    appTransporterStatusData,
                    labels,
                    data,
                    appTransporterStatusPieChart
                );

                setButtonStatusActive(elementID);
            });
        }

        function setButtonStatusActive(elementID) {
            $('#' + elementID).parent().children().removeClass('active');
            $('#' + elementID).addClass('active');
        }


        function applicationTransporter() {

            chartUpdate_single_dataset(
                appTransporterStatusData,
                [<%= Trans %>
                ], //Labels
                [<%= TransC %>], // Data
                appTransporterStatusPieChart
            );

            // Action on button clicks
            applicationTransporterStatusActions('btnDay', [102, 101, 210, 87, 81, 154, 212]);
            applicationTransporterStatusActions('btnWeek', [120, 253, 105, 71, 15, 148, 222]);
            applicationTransporterStatusActions('btnMonth', [103, 1, 190, 23, 52, 198, 93]);
            applicationTransporterStatusActions('btnYear', [50, 128, 99, 131, 27, 82, 116]);

            resizeWindow();

        }

        function resizeWindow() {

            if ((window.innerWidth >= 2000) && (window.innerHeight >= 1440)) {
                // Align Left the chart map keys
                appTransporterStatusPieChart.options.legend.position = 'top';
                appTransporterStatusPieChart.update();
            } else {
                if (window.innerWidth >= 480) {
                    // Align Left the chart map keys
                    appTransporterStatusPieChart.options.legend.position = 'left';
                    appTransporterStatusPieChart.update();
                }
            }

            $(window).resize(function () {
                if ((window.innerWidth >= 2000) && (window.innerHeight >= 1440)) {
                    // Align Left the chart map keys
                    appTransporterStatusPieChart.options.legend.position = 'top';
                    appTransporterStatusPieChart.update();
                } else {
                    if (window.innerWidth >= 480) {
                        // Align Left the chart map keys
                        appTransporterStatusPieChart.options.legend.position = 'left';
                        appTransporterStatusPieChart.update();
                    } else {
                        // Align Top the chart map keys
                        appTransporterStatusPieChart.options.legend.position = 'top';
                        appTransporterStatusPieChart.update();
                    }
                }

            });
        }

        function applicationByDesignation() {

            chartUpdate_single_dataset(
                appByDesignationStatusData,
                [<%= Desig %>], //Labels
                [<%= DesigC %>], // Data
                appByDesignationStatusBarChart
            );

        }
    </script>

</asp:Content>