<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAxel.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.AddAxel" %>

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
                
                <label class="text-dark fw-bolder my-1 fs-2"><asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label> 
                    <small class="text-dark fs-2 fw-normal ms-1">Add New Axle</small>
                </label>
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
                            href="Axels.aspx"
                            class="text-breadcrumbs text-hover-primary">Axles</a>
                    </li>
                    <li class="breadcrumb-item text-dark">Add New Axle</li>
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
                                <asp:Label CssClass="col-auto ps-0 label-170px" runat="server" ID="lblCargo">Type of Configuration<span class="red">*</span></asp:Label>
                                <asp:DropDownList CssClass="form-control col-md-12 col-lg-9" runat="server" ID="ddlCargo"></asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ID="rfvCargo" Display="Dynamic" ControlToValidate="ddlCargo" ErrorMessage="Please select Configuration Type"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group row mx-0 mb-3 align-items-md-center">
                                <label  class="col-auto ps-0 label-170px">Axle Configuration<span class="red">*</span></label>
                                <asp:TextBox CssClass="form-control col-md-12 col-lg-9" runat="server" ID="txtAC" AutoPostBack="true" MaxLength="200" OnTextChanged="txtAC_TextChanged"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="rfvAC" ControlToValidate="txtAC" Display="Dynamic" ErrorMessage="Please enter Axle Configuration"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group row mx-0 mb-3 align-items-md-center">
                                <label  class="col-auto ps-0 label-170px">Number of Axles<span class="red">*</span></label>
                                <asp:TextBox CssClass="form-control col-md-12 col-lg-9" runat="server" ID="txtNA" MaxLength="20" Enabled="false"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="rfvNA" ControlToValidate="txtNA" Display="Dynamic" ErrorMessage="Please enter Axle Number"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator runat="server" ID="revNA" ValidationExpression="^[0-9]{1,2}$"
                                    ControlToValidate="txtNA" Display="Dynamic" ErrorMessage="Please enter valid Axle Number"> </asp:RegularExpressionValidator>
                            </div>
                        <asp:PlaceHolder runat="server" ID="phAxel"></asp:PlaceHolder>
                            <div class="form-group row mx-0 mb-3 align-items-md-center">
                                <label  class="col-auto ps-0 label-170px">Total GVM<span class="red">*</span></label>
                                <div class="input-group col-md-12 col-lg-9 px-0 align-items-end">
                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtGVM" MaxLength="12" Enabled="false"></asp:TextBox>
                                    <div class="input-group-append rounded-left-0">
                                        <span class="input-group-text">KG</span>
                                      </div>
                                </div>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvGVM" Display="Dynamic" ControlToValidate="txtGVM" ErrorMessage="Please enter total GVM"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator runat="server" ID="revGVM" ValidationExpression="^[0-9]{1,12}$"
                                    ControlToValidate="txtGVM" Display="Dynamic" ErrorMessage="Please enter valid weight"> </asp:RegularExpressionValidator>
                            </div>
            
                            <div class="form-group col-12 text-end mb-3">
                                <asp:Button CssClass="btn btn-primary btn-sm" ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                                <asp:Button CssClass="btn btn-primary btn-sm" runat="server" ID="btnCancel" Text="Cancel" OnClick="btnCancel_Click" />
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    </div>
</asp:Content>
