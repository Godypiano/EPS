<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddFees.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.AddFees" %>

<%@ MasterType VirtualPath="~/Default_custom.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upRegister" runat="server">
            <ContentTemplate>
  <!--begin::Toolbar-->
  <div class="toolbar" id="kt_toolbar">
    <div
        class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
        <!--begin::Info-->
        <div
            class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
            <!--begin::Title-->
            <h1 class="text-dark fw-bolder my-1 fs-2"> <asp:Label runat="server" ID="lbldesi" CssClass="hd1"> </asp:Label>New Permit Fee
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
                <li class="breadcrumb-item text-breadcrumbs">
                    <a
                        href="Fees.aspx"
                        class="text-breadcrumbs text-hover-primary">Permit Fees</a>
                </li>
                <li class="breadcrumb-item text-dark">New Permit Fee</li>
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

                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                            <label class="col-auto ps-0">Add Permit Fees</label>
                            <asp:TextBox CssClass="form-control col-md-7 col-lg-6" runat="server" ID="txtDays" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="rfvDays" ControlToValidate="txtDays" Display="Dynamic" ErrorMessage="Please enter permit fees"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator runat="server" ID="revDays" ValidationExpression="^[0-9]{1,3}$"
                                ControlToValidate="txtDays" Display="Dynamic" ErrorMessage="Please enter valid fees"> </asp:RegularExpressionValidator>
                        </div>

                        <div class="form-group col-12 text-end mb-3">
                            <asp:Button
                                CssClass="btn btn-primary btn-sm" ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                            <asp:Button CssClass="btn btn-primary btn-sm" runat="server" ID="btnCancel" Text="Cancel" OnClick="btnCancel_Click" />
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
