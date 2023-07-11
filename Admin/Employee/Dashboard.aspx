<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.Dashboard" %>

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
                                                    <p class="card-text pt-6">Waiting for Control Number (Last 10 Days)</p>
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
    <script src="/assets/dataTable/js/jquery.dataTables.min.js"></script>
    <script src="/dashboard.js"></script>

    <!--end::Page Custom Javascript-->

    <script>
        $(document).ready(function () {

            datatableInit();
            

        });

        
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