<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WB_Report.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.WB_Report" %>

<%@ MasterType VirtualPath="~/Default_custom.master" %>

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
                                Weighbridge Verified Report
                            </h1>
                            <!--end::Title-->
                            <!--begin::Breadcrumb-->
                            <ul class="breadcrumb fw-bold fs-base my-1">
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                                </li>
                                <li class="breadcrumb-item text-dark">Weighbridge Verified Report</li>
                            </ul>
                            <!--end::Breadcrumb-->
                        </div>
                        <!--end::Info-->
                    </div>
                </div>
                <!--end::Toolbar-->

                <!--begin::Post-->
                <div class="post fs-6 d-flex flex-column-fluid mt-5" id="kt_post">
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


                                        <div class="row">
                                            <div class="form-group mx-0 mb-3 align-items-md-center row col-sm-9 col-xl-6">
                                                <label class="col-auto ps-0 label-125px">Date From</label>

                                                <div class="input-group col-sm-12 col-md-9 col-xl-9 px-0">
                                                    <asp:TextBox CssClass="form-control" ID="txtFDate" runat="server">
                                                    </asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <asp:ImageButton CssClass="input-group-text" runat="server"
                                                            CausesValidation="false" ID="iPopup"
                                                            ImageUrl="/images/calendar.png" />
                                                    </div>
                                                    <asp:RequiredFieldValidator runat="server" ID="rfvFDate"
                                                        ControlToValidate="txtFDate" Display="Dynamic"
                                                        CssClass="red col-sm-12" ErrorMessage="Please select from date">
                                                    </asp:RequiredFieldValidator>
                                                    <asp:comparevalidator ID="cmpFDate" runat="server" Display="Dynamic"
                                                        errormessage="The date must be less than today date"
                                                        CssClass="red col-sm-12"
                                                        valuetocompare="<%# DateTime.Today.ToShortDateString() %>"
                                                        controltovalidate="txtFDate" type="date" Operator="LessThan" />
                                                </div>

                                                <ajaxToolkit:CalendarExtender ID="Calendar1" runat="server"
                                                    PopupButtonID="iPopup" TargetControlID="txtFDate"
                                                    Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>
                                            </div>

                                            <div class="form-group mx-0 mb-3 align-items-md-center row col-sm-9 col-xl-6">
                                                <label class="col-auto ps-0 label-125px">Date To</label>

                                                <div class="input-group col-sm-12 col-md-9 col-xl-9 px-0">
                                                    <asp:TextBox CssClass="form-control col-sm-12" ID="txtTDate"
                                                        runat="server"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <asp:ImageButton CssClass="input-group-text" runat="server"
                                                            CausesValidation="false" ID="iPopup1"
                                                            ImageUrl="/images/calendar.png" />
                                                    </div>
                                                    <asp:RequiredFieldValidator runat="server"
                                                        ID="RequiredFieldValidator1" ControlToValidate="txtTDate"
                                                        Display="Dynamic" CssClass="red col-sm-12"
                                                        ErrorMessage="Please select to date">
                                                    </asp:RequiredFieldValidator>
                                                    <asp:CompareValidator ID="cmpVal" ControlToCompare="txtFDate"
                                                        ControlToValidate="txtTDate" Display="Dynamic"
                                                        CssClass="red col-sm-12" Type="Date" Operator="GreaterThan"
                                                        ErrorMessage="To Date should be greater than From Date"
                                                        runat="server"></asp:CompareValidator>
                                                </div>


                                                <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server"
                                                    PopupButtonID="iPopup1" TargetControlID="txtTDate"
                                                    Format="dd/MM/yyyy">
                                                </ajaxToolkit:CalendarExtender><br />
                                            </div>


                                            <div class="form-group mx-0 mb-3 align-items-md-center row col-sm-9 col-xl-6">
                                                <label class="col-auto ps-0 label-125px">Region</label>

                                                <asp:DropDownList CssClass="form-control col-sm-12" runat="server"
                                                    AutoPostBack="true" ID="ddlRegion"
                                                    OnSelectedIndexChanged="ddlRegion_SelectedIndexChanged">
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvRegion" CssClass="red"
                                                    ControlToValidate="ddlRegion" Display="Dynamic"
                                                    ErrorMessage="Please select region">
                                                </asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group mx-0 mb-3 align-items-md-center row col-sm-9 col-xl-6">
                                                <label class="col-auto ps-0 label-125px">Weighbridge
                                                    Station</label>

                                                <asp:DropDownList CssClass="form-control col-sm-12" runat="server"
                                                    AutoPostBack="true" ID="ddlWBS"
                                                    OnSelectedIndexChanged="ddlWBS_SelectedIndexChanged">
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvWBS" CssClass="red"
                                                    ControlToValidate="ddlWBS" Display="Dynamic"
                                                    ErrorMessage="Please select weighbridge station name">
                                                </asp:RequiredFieldValidator>
                                            </div>


                                            <div class="form-group mx-0 mb-3 align-items-md-center row col-sm-9 col-xl-6">
                                                <label class="col-auto ps-0 label-125px">Weighbridge</label>

                                                <asp:DropDownList CssClass="form-control col-sm-12" runat="server"
                                                    ID="ddlWB">
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvWB" CssClass="red"
                                                    ControlToValidate="ddlWB" Display="Dynamic"
                                                    ErrorMessage="Please select weighbridge">
                                                </asp:RequiredFieldValidator>
                                            </div>

                                        </div>

                                        <div class="form-group mb-3 d-flex justify-content-end">
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnSubmit" runat="server" Text="View Report"
                                                OnClick="btnSubmit_Click" />
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnPdf" runat="server" Text="Download PDF" OnClick="btnPdf_Click" />
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap" ID="btnExcel"
                                                runat="server" Text="Download Excel" OnClick="btnExcel_Click" />
                                        </div>


                                        <div id="table__responsive_Wrapper">
                                            <asp:GridView ID="gvDept"
                                                CssClass="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1 display"
                                                runat="server" AutoGenerateColumns="false" Width="100%"
                                                AlternatingRowStyle-CssClass="AlternateItemStyle"
                                                HeaderStyle-CssClass="HeaderDatagrid fw-bold fs-6 text-gray-800 border-bottom border-gray-200 table_header"
                                                PageSize="10" OnRowDataBound="gvRowDataBound"
                                                OnPageIndexChanging="gvDept_PageIndexChanging" AllowPaging="false">
                                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                                <PagerStyle CssClass="gridViewPager" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="SNo" ItemStyle-Width="2%"
                                                        ItemStyle-VerticalAlign="Top"
                                                        HeaderStyle-HorizontalAlign="Left">
                                                        <ItemTemplate>
                                                            <%# Container.DataItemIndex + 1 %>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="Permit_App_No" ItemStyle-Width="10%"
                                                        HeaderText="Permit Application No"
                                                        ItemStyle-VerticalAlign="Top" />
                                                    <asp:BoundField DataField="Permit_No" HeaderText="Permit No"
                                                        ItemStyle-Width="15%" ItemStyle-VerticalAlign="Top" />
                                                    <asp:BoundField DataField="" HeaderText="Name of Transporter"
                                                        ItemStyle-Width="15%" ItemStyle-VerticalAlign="Top"
                                                        HtmlEncode="False" />
                                                    <asp:BoundField DataField="Region_Name" HeaderText="Region"
                                                        ItemStyle-VerticalAlign="Top" ItemStyle-Width="10%"
                                                        HtmlEncode="False" />
                                                    <asp:BoundField DataField="Wbs_Name"
                                                        HeaderText="Weighbridge Station" ItemStyle-Width="10%"
                                                        ItemStyle-VerticalAlign="Top" HtmlEncode="False" />
                                                    <asp:BoundField DataField="WB_Name" HeaderText="Weighbridge"
                                                        ItemStyle-Width="10%" ItemStyle-VerticalAlign="Top"
                                                        HtmlEncode="False" />

                                                    <asp:BoundField DataField="Verify_Name" HeaderText="Verified Name"
                                                        ItemStyle-Width="10%" ItemStyle-VerticalAlign="Top" />
                                                    <asp:BoundField DataField="Comminets" HeaderText="Comments"
                                                        ItemStyle-Width="10%" ItemStyle-VerticalAlign="Top" />
                                                    <asp:BoundField DataField="Audit_Date" HeaderText="Verified Date"
                                                        ItemStyle-Width="10%" ItemStyle-VerticalAlign="Top"
                                                        HtmlEncode="False" DataFormatString="{0:dd/M/yyyy}" />
                                                    <asp:BoundField DataField="WbID" HeaderText="WTicket Sno"
                                                        ItemStyle-VerticalAlign="Top">
                                                        <ItemStyle CssClass="hide" />
                                                        <HeaderStyle CssClass="hide" />
                                                    </asp:BoundField>
                                                </Columns>
                                                <FooterStyle HorizontalAlign="Right" />
                                            </asp:GridView>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
            <Triggers>
                <asp:PostBackTrigger ControlID="btnSubmit" />
                <asp:PostBackTrigger ControlID="btnPdf" />
                <asp:PostBackTrigger ControlID="btnExcel" />
            </Triggers>
        </asp:UpdatePanel>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
    <script src="/assets/dataTable/js/jquery.dataTables.min.js"></script>

    <script>
        (function () {
            $(function () {
                var table = $('table[id$=gvDept]');
                var thead_row = $('.table_header');
                var thead = $("<thead/>").append($(thead_row));

                var table__responsive_Wrapper = $('#table__responsive_Wrapper').children();

                // Add required classes
                $(table__responsive_Wrapper).addClass('table-responsive mb-1');

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
            });
        }());
    </script>

</asp:Content>