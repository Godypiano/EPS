<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchPermit.aspx.cs" MasterPageFile="~/Default_ops.Master" Inherits="PresentationLayer.Pcheck.SearchPermit" %>

<%@ MasterType VirtualPath="~/Default_ops.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
<!--begin::Toolbar-->
<div class="toolbar" id="kt_toolbar">
    <div
        class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
        <!--begin::Info-->
        <div
            class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
            <!--begin::Title-->
            <h1 class="text-dark fw-bolder my-1 fs-2">Search Permit
                <small class="text-muted fs-6 fw-normal ms-1"></small>
            </h1>
            <!--end::Title-->
            <!--begin::Breadcrumb-->
            <ul class="breadcrumb fw-bold fs-base my-1">
                <li class="breadcrumb-item text-breadcrumbs">
                    <a
                        href="SearchPermit.aspx"
                        class="text-breadcrumbs text-hover-primary">Home</a>
                </li>
                <asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label>
              
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
                                <label class="col-auto ps-0 label-250px">Enter Permit Serial Number</label>
                                <asp:TextBox runat="server" CssClass="form-control col-sm-8 col-md-6 col-lg-6 col-xl-5" ID="txtSearch" MaxLength="15" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="rfvSearch" CssClass="red" Display="Dynamic" ControlToValidate="txtSearch" ErrorMessage="Please enter permit Serial number"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group mb-3 d-flex justify-content-end">
                            <asp:Button  CssClass="btn btn-primary btn-sm white-space-wrap" runat="server" ID="btnSearch" Text="Search" OnClick="btnSearch_Click" />
                        </div>

                        <tr runat="server" id="trgalc" visible="true">
                            <td ></td>
                        </tr>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</asp:Content>



