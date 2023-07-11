<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCategories.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.AddCategories" %>

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
                            <h1 class="text-dark fw-bolder my-1 fs-2"> <asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label>Add New Category
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
                                        href="Categories.aspx"
                                        class="text-breadcrumbs text-hover-primary">Categories</a>
                                </li>
                                <li class="breadcrumb-item text-dark">Add New Category</li>
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
                                            <label class="col-auto ps-0 label-275px">
                                                Width From (Ex:4.55)</label>

                                                <div class="input-group col-md-12 px-0" >
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtWFrom" MaxLength="5"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                      <span class="input-group-text">M</span>
                                                    </div>
                                                  </div>

                                            <asp:RequiredFieldValidator
                                                runat="server"
                                                ID="rfvWFrom"
                                                ControlToValidate="txtWFrom"
                                                Display="Dynamic"
                                                ErrorMessage="Please enter width"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator
                                                runat="server"
                                                ID="revWFrom"
                                                ValidationExpression="^(?:\d{1})?(?:\.\d{1,2})?$"
                                                ControlToValidate="txtWFrom"
                                                Display="Dynamic"
                                                ErrorMessage="Please enter valid width">
                                            </asp:RegularExpressionValidator>
                                        </div>
                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label class="col-auto ps-0 label-275px">
                                                Width To (Ex:4.55)</label>

                                                <div class="input-group col-md-12 px-0" >
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtWTo" MaxLength="5"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                      <span class="input-group-text">M</span>
                                                    </div>
                                                  </div>

                                            <asp:RequiredFieldValidator
                                                runat="server"
                                                ID="rfvWTo"
                                                Display="Dynamic"
                                                ControlToValidate="txtWTo"
                                                ErrorMessage="Please enter width"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator
                                                runat="server"
                                                ID="revWTo"
                                                ValidationExpression="^(?:\d{1})?(?:\.\d{1,2})?$"
                                                ControlToValidate="txtWTo"
                                                Display="Dynamic"
                                                ErrorMessage="Please enter valid width">
                                            </asp:RegularExpressionValidator>
                                        </div>
                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label class="col-auto ps-0 label-275px">
                                                Permit Required</label>
                                            <asp:RadioButtonList
                                                RepeatLayout="Flow"
                                                CssClass="col-md-12"
                                                runat="server"
                                                RepeatDirection="Horizontal"
                                                ID="rblPR">
                                                <asp:ListItem class="me-4 label-ml-4" Value="yes">Yes</asp:ListItem>
                                                <asp:ListItem class="label-ml-4" Value="no">No</asp:ListItem>
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator
                                                runat="server"
                                                ID="rfvPR"
                                                ControlToValidate="rblPR"
                                                Display="Dynamic"
                                                ErrorMessage="Please select permit required"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label class="col-auto ps-0 label-275px">
                                                Escort Vehicle Required</label>
                                            <asp:RadioButtonList
                                                RepeatLayout="Flow"
                                                CssClass="col-md-12"
                                                runat="server"
                                                RepeatDirection="Horizontal"
                                                ID="rblEVR"
                                                AutoPostBack="true"
                                                OnSelectedIndexChanged="rblEVR_SelectedIndexChanged">
                                                <asp:ListItem class="me-4 label-ml-4" Value="yes">Yes</asp:ListItem>
                                                <asp:ListItem class="label-ml-4" Value="no">No</asp:ListItem>
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator
                                                runat="server"
                                                ID="rfvEVR"
                                                ControlToValidate="rblEVR"
                                                Display="Dynamic"
                                                ErrorMessage="Please select"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label class="col-auto ps-0 label-275px">
                                                No of Vehicles Required</label>
                                            <asp:TextBox
                                                CssClass="form-control col-md-12"
                                                runat="server"
                                                ID="txtNVR"
                                                MaxLength="4"></asp:TextBox>
                                            <asp:RequiredFieldValidator
                                                runat="server"
                                                ID="rfvNVR"
                                                Enabled="false"
                                                Display="Dynamic"
                                                ControlToValidate="txtNVR"
                                                ErrorMessage="Please enter vehicles length"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator
                                                runat="server"
                                                ID="revNVR"
                                                ValidationExpression="^[1-9]{1}$"
                                                ControlToValidate="txtNVR"
                                                Display="Dynamic"
                                                ErrorMessage="Please enter valid vehicle number">
                                            </asp:RegularExpressionValidator>
                                        </div>
                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label class="col-auto ps-0 label-275px">
                                                Required Weigh Ticket from TANROADS</label>
                                            <asp:RadioButtonList
                                                RepeatLayout="Flow"
                                                CssClass="col-md-12"
                                                runat="server"
                                                RepeatDirection="Horizontal"
                                                ID="rblWeight">
                                                <asp:ListItem class="me-4 label-ml-4" Value="yes">Yes</asp:ListItem>
                                                <asp:ListItem class="label-ml-4" Value="no">No</asp:ListItem>
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator
                                                runat="server"
                                                ID="rfvWeight"
                                                ControlToValidate="rblWeight"
                                                Display="Dynamic"
                                                ErrorMessage="Please select"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label class="col-auto ps-0 label-275px">
                                                Upload Confirmation Letter from Police</label>
                                            <asp:RadioButtonList
                                                RepeatLayout="Flow"
                                                CssClass="col-md-12"
                                                runat="server"
                                                RepeatDirection="Horizontal"
                                                ID="rblPolice">
                                                <asp:ListItem class="me-4 label-ml-4" Value="yes">Yes</asp:ListItem>
                                                <asp:ListItem class="label-ml-4" Value="no">No</asp:ListItem>
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator
                                                runat="server"
                                                ID="rfvPolice"
                                                ControlToValidate="rblPolice"
                                                Display="Dynamic"
                                                ErrorMessage="Please select"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label class="col-auto ps-0 label-275px">
                                                Upload Route Survey</label>
                                            <asp:RadioButtonList
                                                RepeatLayout="Flow"
                                                CssClass="col-md-12"
                                                runat="server"
                                                RepeatDirection="Horizontal"
                                                ID="rblRoute">
                                                <asp:ListItem class="me-4 label-ml-4" Value="yes">Yes</asp:ListItem>
                                                <asp:ListItem class="label-ml-4" Value="no">No</asp:ListItem>
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator
                                                runat="server"
                                                ID="rfvRoute"
                                                ControlToValidate="rblRoute"
                                                Display="Dynamic"
                                                ErrorMessage="Please select"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label class="col-auto ps-0 label-275px">
                                                Upload Advertisement</label>
                                            <asp:RadioButtonList
                                                RepeatLayout="Flow"
                                                CssClass="col-md-12"
                                                runat="server"
                                                RepeatDirection="Horizontal"
                                                ID="rblAdvg">
                                                <asp:ListItem class="me-4 label-ml-4" Value="yes">Yes</asp:ListItem>
                                                <asp:ListItem class="label-ml-4" Value="no">No</asp:ListItem>
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator
                                                runat="server"
                                                ID="rfvAdvg"
                                                ControlToValidate="rblAdvg"
                                                Display="Dynamic"
                                                ErrorMessage="Please select"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="form-group col-12 text-end mb-3">
                                            <asp:Button
                                                CssClass="btn btn-primary btn-sm"
                                                ID="btnSubmit"
                                                runat="server"
                                                Text="Submit"
                                                OnClick="btnSubmit_Click" />
                                            <asp:Button
                                                CssClass="btn btn-primary btn-sm"
                                                runat="server"
                                                ID="btnCancel"
                                                Text="Cancel"
                                                OnClick="btnCancel_Click" />
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
