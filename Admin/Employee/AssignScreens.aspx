<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssignScreens.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.AssignScreens" %>

<%@ MasterType VirtualPath="~/Default_custom.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
  <!--begin::Toolbar-->
  <div class="toolbar" id="kt_toolbar">
    <div
        class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
        <!--begin::Info-->
        <div
            class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
            <!--begin::Title-->
            <h1 class="text-dark fw-bolder my-1 fs-2">
                <asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label>
                Setup Assign Screens
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

                <li class="breadcrumb-item text-dark">Setup Assign Screens</li>
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

                        <div class="form-group row mx-0 mb-3 align-items-md-center col-sm-8 col-md-6 col-lg-8">
                            <label class="col-auto ps-0">Select Designation</label>
                            <asp:DropDownList CssClass="form-control " runat="server" ID="ddlDesig" AutoPostBack="true" OnSelectedIndexChanged="ddlDesig_SelectedIndexChanged">
                                <asp:ListItem Value="">Select Designation</asp:ListItem>
                                <asp:ListItem Value="1">ALC</asp:ListItem>
                                <asp:ListItem Value="2">ALE</asp:ListItem>
                                <asp:ListItem Value="3">ADS</asp:ListItem>
                                <asp:ListItem Value="4">DSE</asp:ListItem>
                                <asp:ListItem Value="5">DPS</asp:ListItem>
                                <asp:ListItem Value="6">PS</asp:ListItem>
                                <asp:ListItem Value="7">DM</asp:ListItem>
                                <asp:ListItem Value="8">Minister</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" ID="rfvDesig" CssClass="red" Display="Dynamic" ErrorMessage="Please select designation" ControlToValidate="ddlDesig"></asp:RequiredFieldValidator>
                        </div>

                        <div class="mb-3">
                            <asp:CheckBoxList  RepeatLayout="Flow" runat="server" ID="chkOpt" RepeatDirection="Vertical">

                                <asp:ListItem class="label-ml-4" Value="Forward to ALE From ALC">Forward to ALE From ALC</asp:ListItem>

                                <asp:ListItem class="label-ml-4" Value="Forward to ADS From ALE">Forward to ADS From ALE</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Return to ALC From ALE">Return to ALC From ALE</asp:ListItem>

                                <asp:ListItem class="label-ml-4" Value="Forward to DSE From ADS">Forward to DSE From ADS</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Return to ALE From ADS">Return to ALE From ADS</asp:ListItem>

                                <asp:ListItem class="label-ml-4" Value="Approve for Payment From DSE">Approve for Payment From DSE</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Approve Permit From DSE">Approve Permit From DSE</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Forward to DPS From DSE">Forward to DPS From DSE</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Forward to PS From DSE">Forward to PS From DSE</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Return to ADS From DSE">Return to ADS From DSE</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Return to Transporter From DSE">Return to Transporter From DSE</asp:ListItem>

                                <asp:ListItem class="label-ml-4" Value="Forward to PS From DPS">Forward to PS From DPS</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Return to DSE From DPS">Return to DSE From DPS</asp:ListItem>

                                <asp:ListItem class="label-ml-4" Value="Forward to Deputy Minister From PS">Forward to Deputy Minister From PS</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Forward to Minister From PS">Forward to Minister From PS</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Return to DSE From PS">Return to DSE From PS</asp:ListItem>

                                <asp:ListItem class="label-ml-4" Value="Forward to Minister From DM">Forward to Minister From DM</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Return to PS From DM">Return to PS From DM</asp:ListItem>

                                <asp:ListItem class="label-ml-4" Value="Return to PS From Minister">Return to PS From Minister</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Return to Deputy Minister From Minister">Return to Deputy Minister From Minister</asp:ListItem>

                                <asp:ListItem class="label-ml-4" Value="Search Permit From Police or Weighbridge">Search Permit From Police or Weighbridge</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Outbox">Outbox</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Assign User">Assign User</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Transporter Details">Transporter Details</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Change Password">Change Password</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Setup Categories">Setup Categories</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Setup Departments">Setup Departments</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Setup Axles">Setup Axles</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Setup Axle Overload Fee">Setup Axle Overload Fee</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Setup GVM Overload Fee">Setup GVM Overload Fee</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Setup Permit Vehicles">Setup Permit Vehicles</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Setup Security Vehicles">Setup Escort Vehicles</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Setup Employees">Setup Employees</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Setup Permit Fee">Setup Permit Fee</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Setup Permit Surcarge">Setup Permit Surcharge</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Setup Permit Days">Setup Permit Days</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Setup TANESCO Height">Setup TANESCO Height</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Audit Trail">Audit Trail</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Reports">Reports</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Dynamic Reports">Dynamic Reports</asp:ListItem>
                                <asp:ListItem class="label-ml-4" Value="Assign Screens">Assign Screens</asp:ListItem>
                            </asp:CheckBoxList>
                        </div>

                        <div class="form-group col-12 mb-3 text-end">
                            <asp:Button
                                CssClass="btn btn-primary btn-sm white-space-wrap" ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap" runat="server" ID="btnCancel" CausesValidation="false" Text="Cancel" OnClick="btnCancel_Click" />
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

    </div>
</asp:Content>
