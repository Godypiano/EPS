<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.ChangePassword" %>
<%@ MasterType VirtualPath="~/Default_custom.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upRegistration" runat="server">
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
                Change Password
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
                <li class="breadcrumb-item text-dark">Change Password</li>
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

                        <tr runat="server" id="trexpire" visible="false">
                            <td>
                                <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                    <asp:Label runat="server" ID="Label1">Your password hasn't changed until 90 days, please change your password.</asp:Label>
                                  </div>

                            </td>
                        </tr>
                            <div class="form-group row mx-0 mb-3 align-items-md-center ">
                                <label class="col-auto ps-0 label-170px">Current Password
                                    <span class="red">*</span>
                                </label>
                                <asp:TextBox CssClass="form-control col-12 col-md-10 col-lg-8" runat="server" ID="txtCurrent" TextMode="Password" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="rfvCurrent" ControlToValidate="txtCurrent" Display="Dynamic" ErrorMessage="Please enter current password"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group row mx-0 mb-3 align-items-md-center ">
                                <label class="col-auto ps-0 label-170px">New Password
                                    <span class="red">*</span>
                                </label>
                                <asp:TextBox CssClass="form-control col-12 col-md-10 col-lg-8" runat="server" ID="txtPass" TextMode="Password" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="rfvPass" ControlToValidate="txtPass" Display="Dynamic" ErrorMessage="Please enter new password"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revPass" runat="server" Display="Dynamic" ErrorMessage="Password length must be between 8 to 14 characters" ControlToValidate="txtPass" ValidationExpression="^[a-zA-Z0-9'@&#.~!%^*()_+=?<>\s]{8,14}$" />
                            </div>
                            <div class="form-group row mx-0 mb-3 align-items-md-center ">
                                <label class="col-auto ps-0 label-170px">Confirmation Password
                                    <span class="red">*</span>
                                </label>
                                <asp:TextBox CssClass="form-control col-12 col-md-10 col-lg-8" runat="server" ID="txtConfirm" TextMode="Password" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="rfvConfirm" ControlToValidate="txtConfirm" Display="Dynamic" ErrorMessage="Please enter confirmation password"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revConfirm" runat="server" Display="Dynamic" ErrorMessage="Password length must be between 8 to 14 characters" ControlToValidate="txtConfirm" ValidationExpression="^[a-zA-Z0-9'@&#.~!%^*()_+=?<>\s]{8,14}$" />
                                <asp:CompareValidator ID="cvConfirm" runat="server"
                                    ControlToValidate="txtConfirm" Display="Dynamic"
                                    CssClass="ValidationError"
                                    ControlToCompare="txtPass"
                                    ErrorMessage="New password and confirm password should be same"
                                    ToolTip="New password and confirm password should be same" />
                            </div>

                            <div class="form-group mb-3 d-flex justify-content-end">
                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnReg" runat="server" Text="Submit" OnClick="btnReg_Click" />
                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap" runat="server" ID="btnCancel" Text="Reset" />

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