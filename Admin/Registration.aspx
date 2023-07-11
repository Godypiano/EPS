<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" MasterPageFile="~/Default_admin.Master" Inherits="PresentationLayer.Admin.Registration" %>
<%@ MasterType VirtualPath="~/Default_admin.master" %>
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
            <h1 class="text-dark fw-bolder my-1 fs-2">Add New User
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
                        href="EmpUsers.aspx"
                        class="text-breadcrumbs text-hover-primary">Add New User</a>
                </li>
                <li class="breadcrumb-item text-dark">User Registration</li>
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
                            <div class="form-group row mx-0 mb-3 align-items-md-center col-md-9 col-lg-9 col-xl-6">
                                <label class="col-auto ps-0 label-165px">User Number</label>
                               <asp:TextBox CssClass="form-control col-sm-12 col-md-12" runat="server" ID="txtEmpno" MaxLength="200"></asp:TextBox>
                               <asp:RequiredFieldValidator runat="server" ID="rfvEmpno" ControlToValidate="txtEmpno" CssClass="red" Display="Dynamic" ErrorMessage="Please enter user number"></asp:RequiredFieldValidator>
                           </div>
                           <div class="form-group row mx-0 mb-3 align-items-md-center col-md-9 col-lg-9 col-xl-6">
                               <label class="col-auto ps-0 label-165px">Full Name</label>
                               <asp:TextBox CssClass="form-control col-sm-12 col-md-12" runat="server" ID="txtFullName" MaxLength="200"></asp:TextBox>
                               <asp:RequiredFieldValidator runat="server" ID="rfv4" ControlToValidate="txtFullName" CssClass="red" Display="Dynamic" ErrorMessage="Please enter full name"></asp:RequiredFieldValidator>
                           </div>
                           <div class="form-group row mx-0 mb-3 align-items-md-center col-md-9 col-lg-9 col-xl-6">
                               <label class="col-auto ps-0 label-165px">itle/Designation</label>
                               <asp:DropDownList CssClass="form-control col-sm-12 col-md-12" runat="server" ID="ddlDesignation" AutoPostBack="true" OnSelectedIndexChanged="ddlDesignation_SelectedIndexChanged">
                               </asp:DropDownList>
                               <asp:RequiredFieldValidator runat="server" ID="rfv5" ControlToValidate="ddlDesignation" CssClass="red" Display="Dynamic" ErrorMessage="Please select designation"></asp:RequiredFieldValidator>
                           </div>
                        <tr runat="server" id="trws" visible="false">
                           <td>
                               <div class="form-group row mx-0 mb-3 align-items-md-center col-md-9 col-lg-9 col-xl-6">
                                   <label class="col-auto ps-0 label-165px">Name of the Workstation</label>
                                   <asp:TextBox CssClass="form-control col-sm-12 col-md-12" runat="server" ID="txtWorkstation" MaxLength="200"></asp:TextBox>
                                   <asp:RequiredFieldValidator runat="server" ID="rfvWorkstation" ControlToValidate="txtWorkstation" CssClass="red" Display="Dynamic" ErrorMessage="Please enter workstation name"></asp:RequiredFieldValidator>
                               </div>
                           </td>
                       </tr>
                       <tr runat="server" id="trhws" visible="false">
                           <td></td>
                       </tr>
                       <tr>
                           <div class="form-group row mx-0 mb-3 align-items-md-center col-md-9 col-lg-9 col-xl-6">
                               <label class="col-auto ps-0 label-165px">Department</label>
                               <asp:DropDownList CssClass="form-control col-sm-12 col-md-12" runat="server" ID="ddlDepartment">
                               </asp:DropDownList>
                               <asp:RequiredFieldValidator runat="server" ID="rfvDepartment" InitialValue="0" CssClass="red" Visible="true" ControlToValidate="ddlDepartment" Display="Dynamic" ErrorMessage="Please select department"></asp:RequiredFieldValidator>
                           </div>
                           <div class="form-group row mx-0 mb-3 align-items-md-center col-md-9 col-lg-9 col-xl-6">
                               <label class="col-auto ps-0 label-165px">Email</label>
                               <asp:TextBox CssClass="form-control col-sm-12 col-md-12" runat="server" ID="txtEmailID" MaxLength="200"></asp:TextBox>
                               <asp:RequiredFieldValidator runat="server" ID="rfv11" ControlToValidate="txtEmailID" CssClass="red" Display="Dynamic" ErrorMessage="Please enter email address"></asp:RequiredFieldValidator>
                               <asp:RegularExpressionValidator ID="rev1" runat="server" ControlToValidate="txtEmailID" CssClass="red" ErrorMessage="Please enter the valid Email ID" ValidationExpression="^[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$" Display="Dynamic"></asp:RegularExpressionValidator>
                           </div>
                           <div class="form-group row mx-0 mb-3 align-items-md-center col-md-9 col-lg-9 col-xl-6">
                               <label class="col-auto ps-0 label-165px">Password</label>
                               <asp:TextBox CssClass="form-control col-sm-12 col-md-12" runat="server" ID="txtPwd" TextMode="Password" MaxLength="100"></asp:TextBox>
                               <asp:RequiredFieldValidator runat="server" ID="rfv12" ControlToValidate="txtPwd" CssClass="red" Display="Dynamic" ErrorMessage="Please enter password"></asp:RequiredFieldValidator>
                               <asp:RegularExpressionValidator ID="rev2" runat="server" Display="Dynamic" CssClass="red" ErrorMessage="Password length must be between 8 to 14 characters" ControlToValidate="txtPwd" ValidationExpression="^[a-zA-Z0-9'@&#.~!%^*()_+=?<>\s]{8,14}$" />
                           </div>
                           <div class="form-group row mx-0 mb-3 align-items-md-center col-md-9 col-lg-9 col-xl-6">
                               <label class="col-auto ps-0 label-165px">Confirmation Password</label>
                               <asp:TextBox CssClass="form-control col-sm-12 col-md-12" runat="server" ID="txtConfirm" TextMode="Password" MaxLength="100"></asp:TextBox>
                               <asp:RequiredFieldValidator runat="server" ID="rfv13" ControlToValidate="txtConfirm" CssClass="red" Display="Dynamic" ErrorMessage="Please enter confirmation password"></asp:RequiredFieldValidator>
                               <asp:RegularExpressionValidator ID="rev3" runat="server" Display="Dynamic" CssClass="red" ErrorMessage="Password length must be between 8 to 14 characters" ControlToValidate="txtConfirm" ValidationExpression="^[a-zA-Z0-9'@&#.~!%^*()_+=?<>\s]{8,14}$" />
                               <asp:CompareValidator ID="CompareValidator1" runat="server"
                                   ControlToValidate="txtConfirm" Display="Dynamic"
                                   CssClass="ValidationError"
                                   ControlToCompare="txtPwd"
                                   ErrorMessage="Password and confirm password should be same"
                                   ToolTip="Password and confirm password should be same" />
                           </div>
                           <div class="form-group row mx-0 mb-3 align-items-md-center col-md-9 col-lg-9 col-xl-6">
                               <label class="col-auto ps-0 label-165px">Mobile #</label>
                               <asp:TextBox CssClass="form-control col-sm-12 col-md-12" runat="server" ID="txtWork" MaxLength="20"></asp:TextBox>
                               <asp:RequiredFieldValidator runat="server" ID="rfvWork" CssClass="red" ControlToValidate="txtWork" Display="Dynamic" ErrorMessage="Please enter phone number"></asp:RequiredFieldValidator>
                               <asp:RegularExpressionValidator runat="server" ID="revWork" CssClass="red" ValidationExpression="^[0-9]{1,12}$"
                                           ControlToValidate="txtWork" Display="Dynamic" ErrorMessage="Please enter valid number"> </asp:RegularExpressionValidator>
                           </div>
                        </div>

                        <div class="form-group mb-3 d-flex justify-content-end">
                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click" />
                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap" runat="server" ID="btnCancel" Text="Cancel" />
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

