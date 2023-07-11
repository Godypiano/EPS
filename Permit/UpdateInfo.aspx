<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateInfo.aspx.cs" MasterPageFile="~/Default.Master" Inherits="PresentationLayer.Permit.UpdateInfo" %>
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
                                <asp:Label runat="server" ID="lblView">View Personal Data</asp:Label>
                            </h1>
                            <!--end::Title-->
                            <!--begin::Breadcrumb-->
                            <ul class="breadcrumb fw-bold fs-base my-1">
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                                </li>
                                <li class="breadcrumb-item text-dark">View Personal Data</li>
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
                                                ID="lnkEnglish" OnClick="lnkEnglish_Click">English</asp:LinkButton>
                                            <asp:LinkButton runat="server" Visible="true" CssClass="navigationbar"
                                                ID="lnkSwahili" OnClick="lnkSwahili_Click">Swahili
                                            </asp:LinkButton>
                                        </div>

                                        <div class="row">
                                            
                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblTT">
                                                    Transporter Type<span class="red">*</span>
                                                </asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server" ID="txtTT" Enabled="false" MaxLength="200">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvTT" CssClass="red"
                                                    Display="Dynamic" ControlToValidate="txtTT"
                                                    ErrorMessage="Please enter Transporter Type">
                                                </asp:RequiredFieldValidator>
                                            </div>

                                            <tr runat="server" id="tr1">
                                                <td>
                                                    <div class="form-group mx-0 mb-3 col-sm-6">
                                                        <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblCompany">Company
                                                            Name</asp:Label>
                                                        <span class="red">*</span>
                                                        <asp:TextBox CssClass="form-control col-sm-12" runat="server" ID="txtCompany" Enabled="false"
                                                            MaxLength="200"></asp:TextBox>
                                                        <asp:RequiredFieldValidator runat="server" ID="rfvCompany"
                                                            CssClass="red" ControlToValidate="txtCompany"
                                                            Display="Dynamic" ErrorMessage="Please enter Company Name">
                                                        </asp:RequiredFieldValidator>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr runat="server" id="tr2">
                                                <td></td>
                                            </tr>
                                            
                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblTIN">TIN Number
                                                    <span class="red">*</span>
                                                </asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server" ID="txtTIN" Enabled="false" MaxLength="200">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvTIN" CssClass="red"
                                                    ControlToValidate="txtTIN" Display="Dynamic"
                                                    ErrorMessage="Please enter TIN Number">
                                                </asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblCPN">Name of
                                                    Contact Person<span class="red">*</span>
                                                </asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server" Enabled="false" ID="txtCPN" MaxLength="200">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvCPN" CssClass="red"
                                                    ControlToValidate="txtCPN" Display="Dynamic"
                                                    ErrorMessage="Please enter contact person name">
                                                </asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblDesig">Title/Designation
                                                    <span class="red">*</span>
                                                </asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server" Enabled="false" ID="txtDesig"
                                                    MaxLength="200"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvDesig" CssClass="red"
                                                    ControlToValidate="txtDesig" Display="Dynamic"
                                                    ErrorMessage="Please enter designation">
                                                </asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblPB">P.O. Box
                                                    <span class="red">*</span>
                                                </asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server" ID="txtADD1" Enabled="false"
                                                    MaxLength="200"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvADD1" CssClass="red"
                                                    ControlToValidate="txtADD1" Display="Dynamic"
                                                    ErrorMessage="Please enter P.O.Box">
                                                </asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="revADD1"
                                                    ValidationExpression="^[0-9]{1,50}$" ControlToValidate="txtADD1"
                                                    Display="Dynamic" CssClass="red"
                                                    ErrorMessage="P.O.Box accepts nubers only.">
                                                </asp:RegularExpressionValidator>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblCity">City
                                                    <span class="red">*</span>
                                                </asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server" ID="txtCity" Enabled="false"
                                                    MaxLength="200"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvCity" CssClass="red"
                                                    ControlToValidate="txtCity" Display="Dynamic"
                                                    ErrorMessage="Please enter city name">
                                                </asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblCountry">Country
                                                    <span class="red">*</span>
                                                </asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server" ID="txtCountry" Enabled="false"
                                                    MaxLength="200"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvCountry"
                                                    CssClass="red" ControlToValidate="txtCountry" Display="Dynamic"
                                                    ErrorMessage="Please enter country name">
                                                </asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblPostal">Zip/Postal Code</asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server" ID="txtPostal" Enabled="false"
                                                    MaxLength="10"></asp:TextBox>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblADD2">Address 2</asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server" ID="txtADD2" Enabled="false"
                                                    MaxLength="200"></asp:TextBox>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblMobile">Mobile #
                                                    <span class="red">*</span>
                                                </asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server" ID="txtWork" Enabled="false" MaxLength="20">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvWork" CssClass="red"
                                                    ControlToValidate="txtWork" Display="Dynamic"
                                                    ErrorMessage="Please enter phone number">
                                                </asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="revWork"
                                                    CssClass="red" ValidationExpression="^[0-9]{1,12}$"
                                                    ControlToValidate="txtWork" Display="Dynamic"
                                                    ErrorMessage="Please enter valid number">
                                                </asp:RegularExpressionValidator>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblLand">Land Phone #</asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server" ID="txtHome" Enabled="false" MaxLength="20">
                                                </asp:TextBox>
                                                <asp:RegularExpressionValidator runat="server" ID="revHome"
                                                    CssClass="red" ValidationExpression="^[0-9]{1,12}$"
                                                    ControlToValidate="txtHome" Display="Dynamic"
                                                    ErrorMessage="Please enter valid number">
                                                </asp:RegularExpressionValidator>
                                            </div>

                                            <div class="form-group row mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0 label-80px" runat="server" ID="lblEm">Email</asp:Label>
                                                <asp:Label runat="server" CssClass="col-sm-12" ID="lblEmail"></asp:Label>
                                            </div>

                                            <tr runat="server" id="trcaptcha" visible="false">
                                                <td>
                                                    <div>
                                                        <asp:Label runat="server" ID="lblCaptcha">Enter
                                                            Below Code</asp:Label>
                                                        <span class="red">*</span>
                                                        <asp:TextBox runat="server" ID="txtCaptcha" MaxLength="200">
                                                        </asp:TextBox>
                                                        <asp:RequiredFieldValidator runat="server" ID="rfvCaptcha"
                                                            CssClass="red" ControlToValidate="txtCaptcha"
                                                            Display="Dynamic" ErrorMessage="Please enter captcha code">
                                                        </asp:RequiredFieldValidator>
                                                        <asp:CustomValidator ID="cvCaptcha" runat="server"
                                                            ControlToValidate="txtCaptcha" CssClass="red"
                                                            ErrorMessage="Please enter valid captcha code, try again."
                                                            Display="Dynamic"
                                                            OnServerValidate="cvCaptcha_ServerValidate">
                                                        </asp:CustomValidator>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr runat="server" id="trrcap" visible="false">
                                                <td></td>
                                            </tr>
                                            <tr runat="server" id="trcp" visible="false">
                                                <td>
                                                    <div class="d-flex justify-content-end col-sm-6 mb-5">
                                                        <asp:Image ID="imgCaptcha" runat="server" Height="34" />
                                                        <asp:ImageButton runat="server" ImageUrl="~/images/refresh.png"
                                                            CausesValidation="false" ID="imgCaptcha1" OnClick="imgCaptcha1_Click" />
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr runat="server" id="trrcp" visible="false">
                                                <td></td>
                                            </tr>

                                        </div>

                                        <div class="form-group mb-3 d-flex justify-content-end">
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnReg" runat="server" Text="Update" Visible="false"
                                                OnClick="btnReg_Click" />
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap"
                                                runat="server" ID="btnCancel" Visible="false" Text="Cancel" />
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </ContentTemplate>
            <Triggers>
                <asp:PostBackTrigger ControlID="btnReg" />
            </Triggers>
        </asp:UpdatePanel>
    </div>
</asp:Content>