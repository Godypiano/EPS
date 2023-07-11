<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" MasterPageFile="~/Default.Master"
    Inherits="PresentationLayer.Permit.ChangePassword" %>
<%@ MasterType VirtualPath="~/Default.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upRegistration" runat="server">
            <ContentTemplate>

                <!--begin::Toolbar-->
                <div class="toolbar" id="kt_toolbar">
                    <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
                        <!--begin::Info-->
                        <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                            <!--begin::Title-->

                            <h1 class="text-dark fw-bolder my-1 fs-2">
                                <asp:Label runat="server" ID="lblChange">Change Password</asp:Label>
                            </h1>
                            <!--end::Title-->
                            <!--begin::Breadcrumb-->
                            <ul class="breadcrumb fw-bold fs-base my-1">
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
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
                                    <div class="card-body d-flex justify-content-between flex-column">
                                        <div class="text-end mb-3">
                                            <asp:LinkButton runat="server" CssClass="navigationbar" Visible="true"
                                                ID="lnkEnglish" CausesValidation="false" OnClick="lnkEnglish_Click">
                                                English</asp:LinkButton>

                                            <asp:LinkButton runat="server" Visible="true" CausesValidation="false"
                                                CssClass="navigationbar" ID="lnkSwahili" OnClick="lnkSwahili_Click">
                                                Swahili
                                            </asp:LinkButton>
                                        </div>

                                        <div>
                                            <tr runat="server" id="trexpire" visible="false">
                                                <td>
                                                    <span
                                                        class="row col-sm-12 mx-0 my-3 align-items-sm-center alert alert-info alert-dismissible">
                                                        <asp:Label runat="server" ID="lblExp">Your password
                                                            haven't
                                                            been changed for more than 90 days. You are advised
                                                            to
                                                            change your password.</asp:Label>
                                                    </span>

                                                </td>
                                            </tr>
                                        </div>

                                        <div class="row">

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-12">
                                                <label class="col-auto ps-0 label-175px">
                                                    <asp:Label runat="server" ID="lblCP">Current Password
                                                        <span class="red">*</span>
                                                    </asp:Label>
                                                </label>

                                                <div class="col-sm-11 col-md-8 col-xl-7 px-0">
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtCurrent"
                                                        TextMode="Password" MaxLength="100">
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ID="rfvCurrent"
                                                        CssClass="red" ControlToValidate="txtCurrent" Display="Dynamic"
                                                        ErrorMessage="Please enter current password">
                                                    </asp:RequiredFieldValidator>
                                                </div>

                                            </div>

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-12">
                                                <label class="col-auto ps-0 label-175px">
                                                    <asp:Label runat="server" ID="lblNew">New Password
                                                        <span class="red">*</span>
                                                    </asp:Label>
                                                </label>

                                                <div class="col-sm-11 col-md-8 col-xl-7 px-0">

                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtPass"
                                                        TextMode="Password" MaxLength="100">
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ID="rfvPass"
                                                        CssClass="red" ControlToValidate="txtPass" Display="Dynamic"
                                                        ErrorMessage="Please enter new password">
                                                    </asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="revPass" runat="server"
                                                        CssClass="red" Display="Dynamic"
                                                        ErrorMessage="Password length must be between 8 to 14 characters"
                                                        ControlToValidate="txtPass"
                                                        ValidationExpression="^[a-zA-Z0-9'@&#.~!%^*()_+=?<>\s\S]{8,14}$" />
                                                </div>


                                            </div>

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-12">
                                                <label class="col-auto ps-0 label-175px">

                                                    <asp:Label runat="server" ID="lblRe">Re-type New Password
                                                    </asp:Label>
                                                    <span class="red">*</span>
                                                </label>

                                                <div class="col-sm-11 col-md-8 col-xl-7 px-0">

                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtConfirm"
                                                        TextMode="Password" MaxLength="100">
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ID="rfvConfirm"
                                                        CssClass="red" ControlToValidate="txtConfirm" Display="Dynamic"
                                                        ErrorMessage="Please enter re-type new password">
                                                    </asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="revConfirm" CssClass="red"
                                                        runat="server" Display="Dynamic"
                                                        ErrorMessage="Password length must be between 8 to 14 characters"
                                                        ControlToValidate="txtConfirm"
                                                        ValidationExpression="^[a-zA-Z0-9'@&#.~!%^*()_+=?<>\s\S]{8,14}$" />
                                                    <asp:CompareValidator ID="cvConfirm" runat="server"
                                                        ControlToValidate="txtConfirm" Display="Dynamic"
                                                        CssClass="ValidationError" ControlToCompare="txtPass"
                                                        ErrorMessage="New password and re-type new password should be same"
                                                        ToolTip="New password and re-type new password should be same" />
                                                </div>
                                            </div>


                                            <div
                                                class="form-group mb-3 d-flex justify-content-end col-sm-11 col-md-8 col-xl-7">
                                                <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                    ID="btnReg" runat="server" Text="Submit" OnClick="btnReg_Click" />
                                                <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap"
                                                    runat="server" ID="btnCancel" Text="Reset"
                                                    CausesValidation="false" />
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End::Post-->

            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>