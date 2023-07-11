<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Activation.aspx.cs" MasterPageFile="~/Default_Plain.Master" Inherits="PresentationLayer.Permit.Activation" %>
<%@ MasterType VirtualPath="~/Default_Plain.master" %>
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
                                Activation
                            </h1>
                            <!--end::Title-->
                            <!--begin::Breadcrumb-->
                            <ul class="breadcrumb fw-bold fs-base my-1">
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                                </li>
                                <li class="breadcrumb-item text-dark">Activation</li>
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
                                        <tr runat="server" id="trexpire" visible="false">
                                            <td>
                                                <div class="alert alert-warning" role="alert">
                                                    <asp:Label runat="server" ID="Label1">Activation code has expired</asp:Label>
                                                </div>
                                            </td>
                                        </tr>
                    
                                        <tr runat="server" id="trhexpire" visible="false">
                                            <td></td>
                                        </tr>
                    
                                        <tr runat="server" id="trinactive" visible="false">
                                            <td>
                                                <div class="alert alert-warning" role="alert">
                                                    <asp:Label runat="server" ID="lablinactive">Activation code already used</asp:Label>
                                                </div>
                                            </td>
                                        </tr>
                    
                                        <tr runat="server" id="trhinactive" visible="false">
                                            <td></td>
                                        </tr>
                    
                                        <tr runat="server" id="trinvalid" visible="false">
                                            <td>
                                                <div class="alert alert-warning" role="alert">
                                                    <asp:Label runat="server" ID="lblinvalid">Invalid Activation code</asp:Label>
                                                </div>
                                            </td>
                                        </tr>
                    
                                        <tr runat="server" id="trhinvalid" visible="false">
                                            <td></td>
                                        </tr>
                    
                                        <tr runat="server" id="trpw" visible="false">
                                            <td>
                                                <div class="form-group row mx-0 mb-3 align-items-sm-center">
                                                    <label class="col-auto ps-0 label-115px">Password
                                                        <span class="red">*</span>
                                                    </label>
                                                    <asp:TextBox CssClass="form-control col-sm-12 col-md-10 col-xl-7" runat="server"
                                                        ID="txtPass" TextMode="Password" MaxLength="50"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ID="rfvPass" CssClass="red"
                                                        ControlToValidate="txtPass" Display="Dynamic" ErrorMessage="Please enter password">
                                                    </asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="revPass" CssClass="red" runat="server"
                                                        Display="Dynamic" ErrorMessage="Password length must be between 8 to 14 characters"
                                                        ControlToValidate="txtPass"
                                                        ValidationExpression="^[a-zA-Z0-9'@&#.~!%^*()_+=?<>\s\S]{8,14}$" />
                                                </div>
                                            </td>
                                        </tr>
                    
                                        <tr runat="server" id="trhpw" visible="false">
                                            <td></td>
                                        </tr>
                    
                                        <tr runat="server" id="trcnf" visible="false">
                                            <td>
                    
                                                <div class="form-group row mx-0 mb-3 align-items-sm-center">
                                                    <label class="col-auto ps-0 label-115px">Confirmation Password
                                                        <span class="red">*</span>
                                                    </label>
                                                    <asp:TextBox CssClass="form-control col-sm-12 col-md-10 col-xl-7" runat="server"
                                                        ID="txtConfirm" TextMode="Password" MaxLength="50"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ID="rfvConfirm" CssClass="red"
                                                        ControlToValidate="txtConfirm" Display="Dynamic"
                                                        ErrorMessage="Please enter confirmation password"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="revConfirm" CssClass="red" runat="server"
                                                        Display="Dynamic" ErrorMessage="Password length must be between 8 to 14 characters"
                                                        ControlToValidate="txtConfirm"
                                                        ValidationExpression="^[a-zA-Z0-9'@&#.~!%^*()_+=?<>\s\S]{8,14}$" />
                                                    <asp:CompareValidator ID="cvConfirm" runat="server" ControlToValidate="txtConfirm"
                                                        Display="Dynamic" CssClass="ValidationError" ControlToCompare="txtPass"
                                                        ErrorMessage="Password and confirm password should be same"
                                                        ToolTip="Password and confirm password should be same" />
                                                </div>
                                            </td>
                                        </tr>
                    
                                        <tr runat="server" id="trhcnf" visible="false">
                                            <td></td>
                                        </tr>
                    
                    
                                        <tr runat="server" id="trsubmit" visible="false">
                                            <td>
                                                <div class="form-group mb-3 d-flex justify-content-end">
                                                    <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnReg"
                                                        runat="server" Text="Submit" OnClick="btnReg_Click" />
                                                    <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap" runat="server"
                                                        ID="btnCancel" Text="Reset" />
                                                </div>
                                            </td>
                                        </tr>
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