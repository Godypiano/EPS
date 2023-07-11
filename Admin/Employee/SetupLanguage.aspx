<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetupLanguage.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.SetupLanguage" %>

<%@ MasterType VirtualPath="~/Default_custom.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
                <asp:UpdatePanel ID="upRegister" runat="server">
                <ContentTemplate>

<!--begin::Toolbar-->
<div class="toolbar mb-5" id="kt_toolbar">
    <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
        <!--begin::Info-->
        <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
            <!--begin::Title-->
            <h1 class="text-dark fw-bolder my-1 fs-2">Language Settings
                <small class="text-muted fs-6 fw-normal ms-1"></small>
            </h1>
            <!--end::Title-->
            <!--begin::Breadcrumb-->
            <ul class="breadcrumb fw-bold fs-base my-1">
                <li class="breadcrumb-item text-breadcrumbs">
                    <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                </li>
                <li class="breadcrumb-item text-dark">Language Settings</li>
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

                        <div
                            class="form-group row mx-0 mb-3 align-items-sm-center col-sm-11 col-md-9 col-xl-6">
                            <label class="col-auto ps-0 label-80px">Select Page</label>
                            <div class="col-sm-12">
                                <asp:DropDownList CssClass="form-control" runat="server" AutoPostBack="true" ID="ddlPage" OnSelectedIndexChanged="ddlPage_SelectedIndexChanged">
                                <asp:ListItem Value="">Select Page</asp:ListItem>
                                <asp:ListItem Value="Registration">Registration</asp:ListItem>
                             </asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" ID="rfvPage" CssClass="red" ControlToValidate="ddlPage" Display="Dynamic" ErrorMessage="Please select page"></asp:RequiredFieldValidator>
                            </div>
                        </div>


                        <fieldset runat="server" id="fsReg" visible="false">
                            <h4 class="mt-3">
                                <label class="hd1"><asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label> Language Settings</label>
                            </h4>

                            <div class="table-responsive mb-1">
                                <table
                                    class="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1 display">
                                    <thead
                                        class="HeaderDatagrid fw-bold fs-6 text-gray-800 border-bottom border-gray-200">
                                        <tr>
                                            <td>
                                                <label><b>Controls:</b></label>
                                            </td>
                                            <td>
                                                <label><b>English:</b></label>
                                            </td>
                                            <td>
                                                <label><b>Swahili:</b></label>
                                            </td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <label>Heading</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="lblTrans" Enabled="false"
                                                    MaxLength="100">
                                                    Transporter
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="txtTrans" MaxLength="100">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvTrans"
                                                    CssClass="red" ControlToValidate="txtTrans"
                                                    Display="Dynamic"
                                                    ErrorMessage="Please enter Transporter heading">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>Heading</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="lblReg" Enabled="false"
                                                    MaxLength="100">
                                                    Registration
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="txtReg" MaxLength="100">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvReg"
                                                    CssClass="red" ControlToValidate="txtReg"
                                                    Display="Dynamic"
                                                    ErrorMessage="Please enter Registration heading">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>Label</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="lblTType" Enabled="false"
                                                    MaxLength="100">
                                                    Transporter Type
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="txtTType" MaxLength="100">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvTType"
                                                    CssClass="red" ControlToValidate="txtTType"
                                                    Display="Dynamic"
                                                    ErrorMessage="Please enter Transporter Type Label">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>Label</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="TextBox1" Enabled="false"
                                                    MaxLength="100">Company
                                                    Name
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="txtCN" MaxLength="100">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvCN"
                                                    CssClass="red" ControlToValidate="txtCN"
                                                    Display="Dynamic"
                                                    ErrorMessage="Please enter Company Name Label">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>Label</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="TextBox3" Enabled="false"
                                                    MaxLength="100">TIN
                                                    Number
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="txtTIN" MaxLength="100">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvTIN"
                                                    CssClass="red" ControlToValidate="txtTIN"
                                                    Display="Dynamic"
                                                    ErrorMessage="Please enter TIN Number Label">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>Label</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="TextBox5" Enabled="false"
                                                    MaxLength="100">Name of
                                                    Contact
                                                    Person</asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="txtContact" MaxLength="100">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server"
                                                    ID="rfvContact" CssClass="red"
                                                    ControlToValidate="txtContact" Display="Dynamic"
                                                    ErrorMessage="Please enter Name of Contact Person Label">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>Label</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="TextBox7" Enabled="false"
                                                    MaxLength="100">
                                                    Title/Designation</asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="txtTitle" MaxLength="100">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvTitle"
                                                    CssClass="red" ControlToValidate="txtTitle"
                                                    Display="Dynamic"
                                                    ErrorMessage="Please enter Title/Designation Label">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>Label</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="TextBox9" Enabled="false"
                                                    MaxLength="100">P.O.Box
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="txtPO" MaxLength="100">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvPO"
                                                    CssClass="red" ControlToValidate="txtPO"
                                                    Display="Dynamic"
                                                    ErrorMessage="Please enter P.O.Box Label">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>Label</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="TextBox11" Enabled="false"
                                                    MaxLength="100">City
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="txtCity" MaxLength="100">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvCity"
                                                    CssClass="red" ControlToValidate="txtCity"
                                                    Display="Dynamic"
                                                    ErrorMessage="Please enter City Label">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>Label</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="TextBox13" Enabled="false"
                                                    MaxLength="100">Country
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="txtCountry" MaxLength="100">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server"
                                                    ID="rfvCountry" CssClass="red"
                                                    ControlToValidate="txtCountry" Display="Dynamic"
                                                    ErrorMessage="Please enter Country Label">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>Label</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="TextBox15" Enabled="false"
                                                    MaxLength="100">
                                                    Zip/Postal Code
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="txtZip" MaxLength="100">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvZip"
                                                    CssClass="red" ControlToValidate="txtCity"
                                                    Display="Dynamic"
                                                    ErrorMessage="Please enter Zip/Postal Code Label">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>Label</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="TextBox17" Enabled="false"
                                                    MaxLength="100">Address
                                                    2
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="txtAdd2" MaxLength="100">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvAdd2"
                                                    CssClass="red" ControlToValidate="txtAdd2"
                                                    Display="Dynamic"
                                                    ErrorMessage="Please enter Address 2 Label">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>Label</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="TextBox19" Enabled="false"
                                                    MaxLength="100">Mobile #
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="txtMobile" MaxLength="100">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server"
                                                    ID="rfvMobile" CssClass="red"
                                                    ControlToValidate="txtMobile" Display="Dynamic"
                                                    ErrorMessage="Please enter Mobile # Label">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>Label</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="TextBox21" Enabled="false"
                                                    MaxLength="100">Land
                                                    Phone #
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="txtLand" MaxLength="100">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvLand"
                                                    CssClass="red" ControlToValidate="txtLand"
                                                    Display="Dynamic"
                                                    ErrorMessage="Please enter Land Phone # Label">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>Label</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="TextBox23" Enabled="false"
                                                    MaxLength="100">Email
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="txtEmail" MaxLength="100">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvEmail"
                                                    CssClass="red" ControlToValidate="txtEmail"
                                                    Display="Dynamic"
                                                    ErrorMessage="Please enter Email Label">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>Label</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="TextBox25" Enabled="false"
                                                    MaxLength="100">Enter
                                                    Below Code
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="txtCaptcha" MaxLength="100">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server"
                                                    ID="rfvCaptcha" CssClass="red"
                                                    ControlToValidate="txtCaptcha" Display="Dynamic"
                                                    ErrorMessage="Please enter Enter Below Code Label">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>Label</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="TextBox2" Enabled="false"
                                                    MaxLength="100">View
                                                    Personal
                                                    Data</asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="txtVPD" MaxLength="100">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server"
                                                    ID="RequiredFieldValidator17" CssClass="red"
                                                    ControlToValidate="txtVPD" Display="Dynamic"
                                                    ErrorMessage="Please enter View Personal Data Label">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>Button</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="TextBox27" Enabled="false"
                                                    MaxLength="100">Register
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="txtRegister" MaxLength="100">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server"
                                                    ID="rfvRegister" CssClass="red"
                                                    ControlToValidate="txtRegister" Display="Dynamic"
                                                    ErrorMessage="Please enter Register button">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>Button</label>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="TextBox29" Enabled="false"
                                                    MaxLength="100">Cancel
                                                </asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox CssClass="form-control min-w-250px"
                                                    runat="server" ID="txtCancel" MaxLength="100">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server"
                                                    ID="rfvCancel" CssClass="red"
                                                    ControlToValidate="txtCancel" Display="Dynamic"
                                                    ErrorMessage="Please enter Cancel button">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="form-group mb-3 d-flex justify-content-end">
                                <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                    ID="btnSubmit" runat="server" Text="Create"
                                    OnClick="btnSubmit_Click" />
                                <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                    ID="btnUpdate" runat="server" Text="Update"
                                    OnClick="btnUpdate_Click" />
                                <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                    ID="btnDelete" runat="server" Visible="false"
                                    CausesValidation="false"
                                    OnClientClick="return confirm('Are you sure want to delete smtp settings?');"
                                    Text="Delete" OnClick="btnDelete_Click" />
                                <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap"
                                    runat="server" ID="btnCancel" CausesValidation="false" Text="Cancel"
                                    OnClick="btnCancel_Click" />
                            </div>

                        </fieldset>

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
