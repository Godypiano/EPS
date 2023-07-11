<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubGEPG.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.SubGEPG" %>

<%@ MasterType VirtualPath="~/Default_custom.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
                <!--begin::Toolbar-->
<div class="toolbar mb-5" id="kt_toolbar">
    <div
        class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
        <!--begin::Info-->
        <div
            class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
            <!--begin::Title-->
            <h1 class="text-dark fw-bolder my-1 fs-2"><asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label>GEPG Submission
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
                <li class="breadcrumb-item text-dark">GEPG Submission</li>
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
                            <div class="form-group row mx-0 mb-3 align-items-md-center">
                                <label class="col-auto ps-0 label-150px">Enter Application No.<span class="red">*</span></label>
                                <asp:TextBox CssClass="form-control col-sm-8 col-md-6 col-lg-6 col-xl-5" runat="server" ID="txtSearch" MaxLength="15" ></asp:TextBox><br />
                                <asp:RequiredFieldValidator runat="server" ID="rfvSearch" CssClass="red" Display="Dynamic" ControlToValidate="txtSearch" ErrorMessage="Please enter application number"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group mb-3 d-flex justify-content-end">
                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap" runat="server" ID="btnSearch" Text="GEPG Submit" OnClick="btnSearch_Click" />
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

    </div>
</asp:Content>
