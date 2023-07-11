<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard1.aspx.cs" MasterPageFile="~/Default_admin.Master" Inherits="PresentationLayer.Admin.Dashboard1" %>

<%@ MasterType VirtualPath="~/Default_admin.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="/assets/dataTable/css/jquery.dataTables.min.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upRegister" runat="server">
            <ContentTemplate>

                <!--begin::Toolbar-->
                <div class="toolbar" id="kt_toolbar">
                    <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
                        <!--begin::Info-->
                        <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
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
                                <div class="card card-xl-stretch mb-5 mb-xl-8">
                                    <!--begin::Body-->
                                    <div class="card-body d-flex justify-content-between flex-column">
                                        <div id="table__responsive_Wrapper1" class="mb-6">
                                            <asp:GridView ID="gvPermit"
                                                CssClass="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1"
                                                runat="server" EmptyDataText="No data exists."
                                                ShowHeaderWhenEmpty="true" OnRowDataBound="gvRowDataBound"
                                                OnPageIndexChanging="gvPermit_PageIndexChanging"
                                                AutoGenerateColumns="false" Width="100%"
                                                AlternatingRowStyle-CssClass="AlternateItemStyle"
                                                HeaderStyle-CssClass="HeaderDatagrid fw-bold fs-6 text-gray-800 border-bottom border-gray-200 table_header" PageSize="100" AllowPaging="true">
                                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                                <PagerStyle CssClass="gridViewPager" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="SNo" ItemStyle-VerticalAlign="Top"
                                                        HeaderStyle-HorizontalAlign="Left">
                                                        <ItemTemplate>
                                                            <%# Container.DataItemIndex + 1 %>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="Transporter_Name"
                                                        HeaderText="Transporter Name" />
                                                    <asp:BoundField DataField="Total" HeaderText="All Applications"
                                                        ItemStyle-HorizontalAlign="Right" />
                                                    <asp:BoundField DataField="Process"
                                                        HeaderText="Processed Applications"
                                                        ItemStyle-HorizontalAlign="Right" />
                                                    <asp:BoundField DataField="Approved"
                                                        HeaderText="Approved Applications"
                                                        ItemStyle-HorizontalAlign="Right" />
                                                    <asp:BoundField DataField="FeePaid"
                                                        HeaderText="Fee Paid Applications"
                                                        ItemStyle-HorizontalAlign="Right" />
                                                    <asp:BoundField DataField="Issued"
                                                        HeaderText="Issued Permit Applications"
                                                        ItemStyle-HorizontalAlign="Right" />
                                                    <asp:BoundField DataField="Expired"
                                                        HeaderText="Expired Invoice Applications"
                                                        ItemStyle-HorizontalAlign="Right" />
                                                </Columns>
                                            </asp:GridView>
                                        </div>

                                        <div id="table__responsive_Wrapper2">
                                            <asp:GridView ID="gvAdmin" Visible="false"
                                                CssClass="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1"
                                                runat="server" EmptyDataText="No data exists."
                                                ShowHeaderWhenEmpty="true" AutoGenerateColumns="false" Width="100%"
                                                AlternatingRowStyle-CssClass="AlternateItemStyle"
                                                HeaderStyle-CssClass="HeaderDatagrid fw-bold fs-6 text-gray-800 border-bottom border-gray-200 table_header"
                                                AllowPaging="true" PageSize="20">
                                                <%-- PageSize="10" " --%>
                                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                                <PagerStyle CssClass="gridViewPager" />
                                                <Columns>
                                                    <asp:BoundField DataField="SNO" HeaderText="SNO" />
                                                    <asp:BoundField DataField="Designation" HeaderText="Designation" />
                                                    <asp:BoundField DataField="Verified"
                                                        HeaderText="Verified Applications Count"
                                                        ItemStyle-HorizontalAlign="Right" />
                                                    <asp:BoundField DataField="Pending"
                                                        HeaderText="Pending Applications Count" />
                                                </Columns>
                                            </asp:GridView>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
    <script src="/assets/dataTable/js/jquery.dataTables.min.js"></script>

    <script>
        (function () {
            $(function () {
                var table1 = $('table[id$=gvPermit]');
                var thead_row1 = $(table1).find($('.table_header'));
                var thead1 = $("<thead/>").append($(thead_row1));
                var table__responsive_Wrapper1 = $('#table__responsive_Wrapper1').children();
                var tfooter1 = $(table1).find($('.gridViewPager'));

                $(tfooter1).remove();


                var table2 = $('table[id$=gvAdmin]');
                var thead_row2 = $(table2).find($('.table_header'));
                var thead2 = $("<thead/>").append($(thead_row2));
                var table__responsive_Wrapper2 = $('#table__responsive_Wrapper2').children();


                // Add required classes
                $(table__responsive_Wrapper1).addClass('table-responsive mb-1');
                $(table__responsive_Wrapper2).addClass('table-responsive mb-1');

                //   Append thead to tables
                $(table1).prepend($(thead1));
                $(table2).prepend($(thead2));

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

                $(table2).DataTable({
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