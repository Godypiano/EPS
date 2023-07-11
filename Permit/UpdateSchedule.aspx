<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateSchedule.aspx.cs" MasterPageFile="~/Default.Master" Inherits="PresentationLayer.Permit.UpdateSchedule" %>
<%@ MasterType VirtualPath="~/Default.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--begin::Toolbar-->
    <div class="toolbar" id="kt_toolbar">
        <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
            <!--begin::Info-->
            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                <!--begin::Title-->
                <h1 class="text-dark fw-bolder my-1 fs-2">
                    Add Travel Schedule
                </h1>
                <!--end::Title-->
                <!--begin::Breadcrumb-->
                <ul class="breadcrumb fw-bold fs-base my-1">
                    <li class="breadcrumb-item text-breadcrumbs">
                        <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                    </li>
                    <li class="breadcrumb-item text-dark">Inbox</li>
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

                            <div class="text-end">
                                <asp:Label runat="server" ID="lblview"></asp:Label>
                                <asp:Label runat="server" ID="lblsches"></asp:Label>
                                <asp:Label runat="server" ID="lblsch"></asp:Label>
                                <asp:Label runat="server" ID="lblsup"></asp:Label>
                            </div>

                            <div class="form-group row mx-0 mb-3 col-sm-12">
                                <label class="col-auto ps-0 label-125px">Application Number</label>
                                <asp:Label CssClass="col-sm-12" ID="lblApp" runat="server"></asp:Label>
                            </div>

                            <div class="row">

                                <div class="form-group mx-0 mb-3 col-sm-6">
                                    <label class="col-auto ps-0">Travel Date</label>

                                    <div class="input-group col-sm-12px-0">
                                        <asp:TextBox CssClass="form-control" ID="txtFDate" runat="server"></asp:TextBox>
                                        <div class="input-group-append rounded-left-0">
                                            <asp:ImageButton CssClass="input-group-text" runat="server"
                                                CausesValidation="false" ID="iPopup" ImageUrl="/images/calendar.png" />
                                        </div>
                                    </div>

                                    <ajaxToolkit:CalendarExtender ID="Calendar1" runat="server" PopupButtonID="iPopup"
                                        TargetControlID="txtFDate" Format="dd/MM/yyyy">
                                    </ajaxToolkit:CalendarExtender>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvFDate" CssClass="red"
                                        ControlToValidate="txtFDate" Display="Dynamic"
                                        ErrorMessage="Please select travel date"></asp:RequiredFieldValidator>
                                </div>

                                <div class="form-group mx-0 mb-3 col-sm-6">
                                    <label class="col-auto ps-0">Travel From</label>
                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtFrom" MaxLength="100">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvFrom" CssClass="red"
                                        ControlToValidate="txtFrom" Display="Dynamic"
                                        ErrorMessage="Please enter from name"></asp:RequiredFieldValidator>
                                </div>

                                <div class="form-group mx-0 mb-3 col-sm-6">
                                    <label class="col-auto ps-0">Travel To</label>
                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtTo" MaxLength="100">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvTo" CssClass="red"
                                        ControlToValidate="txtTo" Display="Dynamic" ErrorMessage="Please enter to name">
                                    </asp:RequiredFieldValidator>
                                </div>

                                <div class="form-group mx-0 mb-3 col-sm-6">
                                    <label class="col-auto ps-0">Travel Time From (Ex: 5:30)</label>
                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtTFrom" MaxLength="5">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvTFrom" CssClass="red"
                                        ControlToValidate="txtTFrom" Display="Dynamic"
                                        ErrorMessage="Please enter from travel time">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator runat="server" ID="revTFrom" Display="Dynamic"
                                        CssClass="red" ValidationExpression="^([0-1]?[0-9]|[2][0-3]):([0-5][0-9])$"
                                        ControlToValidate="txtTFrom" ErrorMessage="Please enter valid time">
                                    </asp:RegularExpressionValidator>
                                </div>

                                <div class="form-group mx-0 mb-3 col-sm-6">
                                    <label class="col-auto ps-0">Travel Time To (Ex: 8:30)</label>
                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtTTo" MaxLength="5">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvTTo" CssClass="red"
                                        ControlToValidate="txtTTo" Display="Dynamic"
                                        ErrorMessage="Please enter to travel time"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator runat="server" ID="revTTo" Display="Dynamic"
                                        CssClass="red" ValidationExpression="^([0-1]?[0-9]|[2][0-3]):([0-5][0-9])$"
                                        ControlToValidate="txtTTo" ErrorMessage="Please enter valid time">
                                    </asp:RegularExpressionValidator>
                                </div>

                                <div class="form-group mx-0 mb-3 col-sm-6">
                                    <label class="col-auto ps-0">Distance KM</label>
                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtDistance" MaxLength="5">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvDistance" CssClass="red"
                                        ControlToValidate="txtDistance" Display="Dynamic"
                                        ErrorMessage="Please enter distance"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator runat="server" ID="revDistance" CssClass="red"
                                        ValidationExpression="^[0-9]+$" ControlToValidate="txtDistance"
                                        Display="Dynamic" ErrorMessage="Please enter valid distance">
                                    </asp:RegularExpressionValidator>
                                </div>

                                <div class="form-group mx-0 mb-3 col-sm-6">
                                    <label class="col-auto ps-0">Parking Place</label>
                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtPlace" MaxLength="100">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvPlace" CssClass="red"
                                        ControlToValidate="txtPlace" Display="Dynamic"
                                        ErrorMessage="Please enter Parking Place"></asp:RequiredFieldValidator>
                                </div>

                            </div>

                            <div class="form-group mb-3 d-flex justify-content-end">
                                <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnReg"
                                    runat="server" Text="Update" OnClick="btnReg_Click" />
                                <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap" runat="server"
                                    ID="btnCancel" CausesValidation="false" Text="Cancel" />
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>