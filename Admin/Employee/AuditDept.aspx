<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AuditDept.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.AuditDept" %>

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
                <h1 class="text-dark fw-bolder my-1 fs-2"> <asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label>Departments
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
                    <li class="breadcrumb-item text-dark">Departments</li>
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
                                    <label class="col-auto ps-0 label-80px">Date From</label>

                                    <div class="input-group col-md-12 col-lg-10 col-xl-9 px-0">
                                        <asp:TextBox CssClass="form-control" ID="txtFDate" runat="server"></asp:TextBox>
                                        <div class="input-group-append rounded-left-0">
                                        <asp:ImageButton CssClass="input-group-text" runat="server" CausesValidation="false" ID="iPopup" ImageUrl="/images/calendar.png" />
                                        </div>
                                    </div>

                                <ajaxToolkit:CalendarExtender ID="Calendar1" runat="server" PopupButtonID="iPopup"
                                    TargetControlID="txtFDate" Format="dd/MM/yyyy">
                                </ajaxToolkit:CalendarExtender>
                                <br />
                                <asp:RequiredFieldValidator runat="server" ID="rfvFDate" ControlToValidate="txtFDate" Display="Dynamic" CssClass="red" ErrorMessage="Please select from date"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="cmpFDate" runat="server" Display="Dynamic"
                                                    ErrorMessage="The date must be less than equal to today date" CssClass="red"
                                                    ValueToCompare="<%# DateTime.Today.ToShortDateString() %>"
                                                    ControlToValidate="txtFDate" Type="date" Operator="LessThanEqual" />
                                </div>
                                <div class="form-group row mx-0 mb-3 align-items-md-center col-sm-6 col-lg-6">
                                    <label class="col-auto ps-0 label-80px">Date To</label>

                                    <div class="input-group col-md-12 col-lg-10 col-xl-9 px-0">
                                        <asp:TextBox CssClass="form-control" ID="txtTDate" runat="server"></asp:TextBox>
                                        <div class="input-group-append rounded-left-0">
                                        <asp:ImageButton CssClass="input-group-text" runat="server" CausesValidation="false" ID="iPopup1" ImageUrl="/images/calendar.png" />
                                        </div>
                                    </div>

                                <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" PopupButtonID="iPopup1"
                                    TargetControlID="txtTDate" Format="dd/MM/yyyy">
                                </ajaxToolkit:CalendarExtender>
                                <br />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="txtTDate" Display="Dynamic" CssClass="red" ErrorMessage="Please select to date"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="cmpVal" ControlToCompare="txtFDate"
                                    ControlToValidate="txtTDate" Display="Dynamic" CssClass="red"
                                    Type="Date" Operator="GreaterThanEqual"
                                    ErrorMessage="To Date should be greater than equal to From Date"
                                    runat="server"></asp:CompareValidator>
                                <asp:CompareValidator ID="cmpval1" 
                                    ControlToValidate="txtTDate" Display="Dynamic" CssClass="red"
                                    Type="Date" Operator="LessThanEqual" ValueToCompare="<%# DateTime.Today.ToShortDateString() %>"
                                    ErrorMessage="To Date should be less than equal to today date"
                                    runat="server"></asp:CompareValidator>
                                </div>
                            </div>
                            <div class="form-group mb-3 d-flex justify-content-end">
                                <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnSubmit" runat="server" Text="View Report" OnClick="btnSubmit_Click" />
                                <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnPdf" runat="server" Text="Download PDF" OnClick="btnPdf_Click" />
                                <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap" ID="btnExcel" runat="server" Text="Download Excel" OnClick="btnExcel_Click" />
                            </div>


                            <div class="table-responsive mb-1">
                                <asp:GridView ID="gvDept" CssClass="table table-row-bordered table-row-gray-300 border-0 gy-2 mb-1"
                                    runat="server" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                    HeaderStyle-CssClass="HeaderDatagrid" PageSize="10" OnRowDataBound="gvRowDataBound" OnPageIndexChanging="gvDept_PageIndexChanging" AllowPaging="true">
                                    <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                    <PagerStyle CssClass="gridViewPager" />
                                    <Columns>
                                        <asp:BoundField DataField="AuditID" HeaderText="AuditID" />
                                        <asp:BoundField DataField="AuditAction" HeaderText="Action" />
                                        <asp:BoundField DataField="DeptID" HeaderText="Dept ID" />
                                        <asp:BoundField DataField="Department_Name" HeaderText="Department Name" />
                                        <asp:BoundField DataField="Audit_Date" HeaderText="Action Date" />
                                        <asp:BoundField DataField="AuditDone" HeaderText="Action By" />
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
