<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard_DSE.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.Dashboard_DSE" %>

<%@ MasterType VirtualPath="~/Default_custom.master" %>

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
                                <asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label>
                                <asp:Label CssClass="hd1">
                                Dashboard - View All Applications Status Count </asp:Label>
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
                                                    <p class="card-text pt-6">Incoming</p>
                                                </div>
                                                <div class="card-icon">
                                                    <div class="image-wrapper">
                                                        <img class="img-fluid"
                                                            src="/images/tranporter.png"
                                                            alt="Transporters">
                                                    </div>
                                                    <div>
                                                        <asp:Button runat="server" ID="btnTrans" Visible="false" CssClass="btn mt-2 btn-sm btn-primary px-3" Text="View" OnClick="btnTrans_Click" />
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
                                                    <p class="card-text pt-6">Waiting for Control Number</p>
                                                </div>
                                                <div class="card-icon">
                                                    <div class="image-wrapper">
                                                        <img class="img-fluid"
                                                            src="/images/control-number.png"
                                                            alt="Transporters">
                                                    </div>
                                                    <div>
                                                        <asp:Button runat="server" ID="btnControl" Visible="false" CssClass="btn mt-2 btn-sm btn-primary px-3" Text="View" OnClick="btnControl_Click" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                     <div class="col-xl-12 mt-4 mt-xl-0">
                                            <div class="card card-gutter-sm">
                                                <div class="card-body">
                                                    <div
                                                        class="chart-header d-flex justify-content-between align-items-baseline">
                                                    <h4>Transporter's Application Status</h4>
                                                </div>
                                                <div class="d-flex justify-content-end">
                                                        <div class="btn-group" role="group"
                                                            aria-label="Button group">
                                                            <asp:Button runat="server" ID="btnDay" CssClass="btn btn-primary btn-sm px-xl-3 active" Text="Day" OnClick="btnDay_Click" />
                                                            <asp:Button runat="server" ID="btnWeek" CssClass="btn btn-primary btn-sm px-xl-3" Text="Week" OnClick="btnWeek_Click" />
                                                            <asp:Button runat="server" ID="btnMonth" CssClass="btn btn-primary btn-sm px-xl-3" Text="Month" OnClick="btnMonth_Click" />
                                                            <asp:Button runat="server" ID="btnYear" CssClass="btn btn-primary btn-sm px-xl-3" Text="Year" OnClick="btnYear_Click" />
                                                        </div>
                                                    </div>

                                          
                                                <hr>

                                                <div class="chart-wrapper">
                                                    <canvas id="appTransporterStatusCanvas"></canvas>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                     <div class="col-xl-12 mt-5">
                                        <div class="card">
                                            <div class="card-body">
                                                <h4>Incoming Applications </h4>
                                                <div class="table-responsive">
                                                    <asp:GridView ID="gvPermit" CssClass="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1 display"
                                                    runat="server" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                                    HeaderStyle-CssClass="HeaderDatagrid fw-bold fs-6 text-gray-800 border-bottom border-gray-200 table_header" OnRowDataBound="InbRowDataBound" OnPageIndexChanging="gvPermit_PageIndexChanging" PageSize="10" AllowPaging="false">
                                                    <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                                    <PagerStyle CssClass="gridViewPager" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Application No">
                                                            <ItemTemplate>
                                                                <asp:LinkButton runat="server" ID="lnkView" Text='<%#Eval("Permit_Application_No")%>' OnClick="lnkView_Click"></asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ID" Visible="false">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" ID="lblID" Text='<%#Eval("Application_No") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="C_Name" HeaderText="Cargo Name" />
                                                        <asp:BoundField DataField="Route_From" HeaderText="Route:From" />
                                                        <asp:BoundField DataField="Route_To" HeaderText="Route:To" />
                                                        <asp:BoundField DataField="Posted_Date" DataFormatString="{0:dd/MM/yyyy hh:mm:ss}" HeaderText="Application Date and Time" />
                                                        <asp:BoundField DataField="Status" HeaderText="Status" />
                                                        <asp:BoundField DataField="Designation" HeaderText="Designation" />
                                                        <asp:TemplateField HeaderText="Delete">
                                                            <ItemTemplate>
                                                                <asp:LinkButton runat="server" ID="lnkView1" OnClientClick="return confirm('Are you sure want to delete this record?');" Text='Delete' OnClick="lnkView1_Click"></asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
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
    <script src="/assets/dataTable/js/jquery.dataTables.min.js"></script>
    <!--end::Page Custom Javascript-->

    <script>
        $(document).ready(function () {

            // Application Processing Status Pie Chart Init
            applicationTransporter();
            datatableInit();
  
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
            applicationTransporterStatusActions('todayAppTransporter', [102, 101, 210, 87, 81, 154, 212]);
            applicationTransporterStatusActions('weekAppTransporter', [120, 253, 105, 71, 15, 148, 222]);
            applicationTransporterStatusActions('monthAppTransporter', [103, 1, 190, 23, 52, 198, 93]);
            applicationTransporterStatusActions('yearAppTransporter', [50, 128, 99, 131, 27, 82, 116]);


            if (window.innerWidth >= 480) {
                appTransporterStatusPieChart.options.legend.position = 'left';
                appTransporterStatusPieChart.update();
            }

            // Align Left the chart map keys
            $(window).resize(function () {
                if (window.innerWidth >= 480) {
                    appTransporterStatusPieChart.options.legend.position = 'left';
                    appTransporterStatusPieChart.update();
                } else {
                    appTransporterStatusPieChart.options.legend.position = 'top';
                    appTransporterStatusPieChart.update();
                }

            });

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
        function datatableInit() {
            var table = $('table[id$=gvPermit]');
            var thead_row = $('.table_header');
            var thead = $("<thead/>").append($(thead_row));

            // var table__responsive_Wrapper = $('#table__responsive_Wrapper').children();

            // Add required classes
            // $(table__responsive_Wrapper).addClass('table-responsive mb-1');

            $(table).prepend($(thead));

            $(table).DataTable({
                "stateSave": true,
                "stateDuration": 60 * 1,
                "responsive": true,
                "lengthMenu": [
                    [10, 20, 30, 50, -1],
                    [10, 20, 30, 50, "All"]
                ],
                "sPaginationType": "full_numbers"
            });
        };
        
    </script>

</asp:Content>