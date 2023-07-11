<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Archive.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.Archive" %>

<%@ MasterType VirtualPath="~/Default_custom.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upRegister" runat="server">
            <ContentTemplate>
                 <!--begin::Toolbar-->
                 <div class="toolbar mb-5" id="kt_toolbar">
                    <div
                        class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
                        <!--begin::Info-->
                        <div
                            class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                            <!--begin::Title-->
                            <h1 class="text-dark fw-bolder my-1 fs-2">
                                <asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label>
                                    View Archive Applications
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
                                <li class="breadcrumb-item text-dark">Archive</li>
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
                                        <div class="row">
                                            <div class="form-group row mx-0 mb-3 align-items-md-center col-sm-6 col-lg-6">
                                                <label class="col-auto ps-0 label-100px">
                                                    Date From</label>
                                                <div
                                                    class="input-group col-md-12 col-lg-12 col-xl-12 px-0">
                                                    <asp:TextBox
                                                        CssClass="form-control"
                                                        ID="txtFDate"
                                                        runat="server"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <asp:ImageButton
                                                            CssClass="input-group-text"
                                                            runat="server"
                                                            CausesValidation="false"
                                                            ID="iPopup"
                                                            ImageUrl="/images/calendar.png" />
                                                    </div>
                                                </div>
                                                <ajaxToolkit:CalendarExtender
                                                    ID="Calendar1"
                                                    runat="server"
                                                    PopupButtonID="iPopup"
                                                    TargetControlID="txtFDate"
                                                    Format="dd/MM/yyyy">
                                                </ajaxToolkit:CalendarExtender>
                                                <br />
                                                <asp:CompareValidator
                                                    ID="cmpFDate"
                                                    runat="server"
                                                    Display="Dynamic"
                                                    ErrorMessage="The date must be less than today date"
                                                    CssClass="red"
                                                    ValueToCompare="<%# DateTime.Today.ToShortDateString() %>"
                                                    ControlToValidate="txtFDate"
                                                    Type="date"
                                                    Operator="LessThan" />
                                            </div>
                                            <div
                                                class="form-group row mx-0 mb-3 align-items-md-center col-sm-6 col-lg-6">
                                                <label class="col-auto ps-0 label-100px">Date To</label>
                                                <div
                                                    class="input-group col-md-12 col-lg-12 col-xl-12 px-0">
                                                    <asp:TextBox
                                                        CssClass="form-control"
                                                        ID="txtTDate"
                                                        runat="server"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <asp:ImageButton
                                                            CssClass="input-group-text"
                                                            runat="server"
                                                            CausesValidation="false"
                                                            ID="iPopup1"
                                                            ImageUrl="/images/calendar.png" />
                                                    </div>
                                                </div>
                                                <ajaxToolkit:CalendarExtender
                                                    ID="CalendarExtender1"
                                                    runat="server"
                                                    PopupButtonID="iPopup1"
                                                    TargetControlID="txtTDate"
                                                    Format="dd/MM/yyyy">
                                                </ajaxToolkit:CalendarExtender>
                                                <br />
                                                <asp:CompareValidator
                                                    ID="cmpVal"
                                                    ControlToCompare="txtFDate"
                                                    ControlToValidate="txtTDate"
                                                    Display="Dynamic"
                                                    CssClass="red"
                                                    Type="Date"
                                                    Operator="GreaterThan"
                                                    ErrorMessage="To Date should be greater than From Date"
                                                    runat="server"></asp:CompareValidator>
                                            </div>
                                            <div
                                                class="form-group row mx-0 mb-3 align-items-md-center col-sm-6 col-lg-6">
                                                <label class="col-auto ps-0 label-100px">Application No </label>
                                                <asp:TextBox CssClass="form-control col-md-12 col-lg-12"
                                                    ID="txtApp"
                                                    runat="server"
                                                    ></asp:TextBox>
                                            </div>
                                            <div
                                            class="form-group row mx-0 mb-3 align-items-md-center col-sm-6 col-lg-6">
                                            <label class="col-auto ps-0 label-100px">Status</label>
                                                <asp:DropDownList CssClass="form-control col-md-12 col-lg-12"
                                                    runat="server"
                                                    ID="ddlStatus">
                                                    <asp:ListItem Value="Select Status">Select Status</asp:ListItem>
                                                    <asp:ListItem Value="Approved for Payment">Approved for Payment</asp:ListItem>
                                                    <asp:ListItem Value="Invoice Expired">Invoice Expired</asp:ListItem>
                                                    <asp:ListItem Value="Fee Paid">Fee Paid</asp:ListItem>
                                                    <asp:ListItem Value="Issued Permit">Issued Permit</asp:ListItem>
                                                    <asp:ListItem Value="Cancelled">Cancelled</asp:ListItem>
                                                    <asp:ListItem Value="Deleted">Deleted</asp:ListItem>
                                                    <asp:ListItem Value="Waiting for Control No">Waiting for Control No</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div
                                                class="form-group row mx-0 mb-3 align-items-md-center col-sm-6 col-lg-6">
                                                <label class="col-auto ps-0 label-100px">Cargo Name </label>
                                                <asp:TextBox CssClass="form-control col-sm-12 col-md-12 col-lg-10"
                                                    ID="txtCargo" runat="server"></asp:TextBox>

                                            </div>
                                            <div
                                                class="form-group row mx-0 mb-3 align-items-md-center col-sm-6 col-lg-6">
                                                <label class="col-auto ps-0 label-100px">Route:From </label>
                                                <asp:TextBox CssClass="form-control col-sm-12 col-md-12 col-lg-10"
                                                    ID="txtFrom" runat="server"></asp:TextBox>

                                            </div>
                                            <div
                                                class="form-group row mx-0 mb-3 align-items-md-center col-sm-6 col-lg-6">
                                                <label class="col-auto ps-0 label-100px">Route:To </label>
                                                <asp:TextBox CssClass="form-control col-sm-12 col-md-12 col-lg-10"
                                                    ID="txtTo" runat="server"></asp:TextBox>

                                            </div>
                                        </div>
                                        <div class="form-group col-12 mb-3 d-flex justify-content-end">
                                            <asp:Button
                                                CssClass="btn btn-primary btn-sm white-space-wrap"
                                                ID="btnSubmit"
                                                runat="server"
                                                Text="View Report"
                                                OnClick="btnSubmit_Click" />
                                            <asp:Button
                                                CssClass="btn btn-primary btn-sm white-space-wrap"
                                                ID="btnPdf"
                                                Visible="false"
                                                runat="server"
                                                Text="Download PDF"
                                                OnClick="btnPdf_Click" />
                                            <asp:Button
                                                CssClass="btn btn-primary btn-sm white-space-wrap"
                                                ID="btnExcel"
                                                Visible="false"
                                                runat="server"
                                                Text="Download Excel"
                                                OnClick="btnExcel_Click" />
                                        </div>
                                        <div class="table-responsive mb-1">
                                            <asp:GridView
                                                ID="gvPermit"
                                                CssClass="table table-row-bordered table-row-gray-300 border-0 gy-2 mb-1"
                                                runat="server"
                                                EmptyDataText="No data exists."
                                                ShowHeaderWhenEmpty="true"
                                                OnRowDataBound="InbRowDataBound"
                                                OnPageIndexChanging="gvPermit_PageIndexChanging"
                                                AutoGenerateColumns="false"
                                                Width="100%"
                                                AlternatingRowStyle-CssClass="AlternateItemStyle"
                                                HeaderStyle-CssClass="HeaderDatagrid"
                                                PageSize="10"
                                                AllowPaging="true">
                                                <RowStyle
                                                    HorizontalAlign="Left"
                                                    CssClass="FirstItemStyle" />
                                                <PagerStyle CssClass="gridViewPager" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Application No">
                                                        <ItemTemplate>
                                                            <asp:LinkButton
                                                                runat="server"
                                                                ID="lnkView"
                                                                Text='<%#Eval("Permit_Application_No")%>'
                                                                OnClick="lnkView_Click"></asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="ID" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label
                                                                runat="server"
                                                                ID="lblID"
                                                                Text='<%#Eval("Application_No") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField
                                                        DataField="C_Name"
                                                        HeaderText="Cargo Name" />
                                                    <asp:BoundField
                                                        DataField="Route_From"
                                                        HeaderText="Route:From" />
                                                    <asp:BoundField
                                                        DataField="Route_To"
                                                        HeaderText="Route:To" />
                                                    <asp:BoundField
                                                        DataField="Status"
                                                        HeaderText="Status" />
                                                    <asp:BoundField
                                                        DataField="Posted_Date"
                                                        HeaderText="Posted Date" />
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
            <Triggers>
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
                var table = $('table[id$=gvPermit]');
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