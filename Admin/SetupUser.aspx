<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetupUser.aspx.cs" MasterPageFile="~/Default_admin.Master" Inherits="PresentationLayer.Admin.SetupUser" %>

<%@ MasterType VirtualPath="~/Default_admin.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="/assets/dataTable/css/jquery.dataTables.min.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
                <!--begin::Toolbar-->
                <div class="toolbar" id="kt_toolbar">
                    <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
                        <!--begin::Info-->
                        <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                            <!--begin::Title-->
                            <h1 class="text-dark fw-bolder my-1 fs-2">
                                Add User
                            </h1>
                            <!--end::Title-->
                            <!--begin::Breadcrumb-->
                            <ul class="breadcrumb fw-bold fs-base my-1">
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                                </li>
                                <li class="breadcrumb-item text-dark">Add User</li>
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

                                        <div class="row">
                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <label class="col-auto ps-0">User Number</label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server"
                                                    ID="txtEmpno" MaxLength="200">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvEmpno"
                                                    ControlToValidate="txtEmpno" CssClass="red" Display="Dynamic"
                                                    ErrorMessage="Please enter user number">
                                                </asp:RequiredFieldValidator>
                                                 <asp:RegularExpressionValidator runat="server" ID="revnum" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9-]*$" ControlToValidate="txtEmpno"
                                                     ErrorMessage="Accepts characters, numbers, hypens only" CssClass="red">
                                                </asp:RegularExpressionValidator>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <label class="col-auto ps-0">Full Name</label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server"
                                                    ID="txtFullName" MaxLength="200">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfv4"
                                                    ControlToValidate="txtFullName" CssClass="red" Display="Dynamic"
                                                    ErrorMessage="Please enter full name">
                                                </asp:RequiredFieldValidator>
                                                 <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9-' ]*$" ControlToValidate="txtFullName"
                                                     ErrorMessage="Accepts characters, numbers, hypens, apostrophe('), and spaces only" CssClass="red">
                                                </asp:RegularExpressionValidator>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <label class="col-auto ps-0">Title/Designation</label>
                                                <asp:DropDownList CssClass="form-control col-sm-12" runat="server"
                                                    ID="ddlDesignation" AutoPostBack="true"
                                                    OnSelectedIndexChanged="ddlDesignation_SelectedIndexChanged">
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator runat="server" ID="rfv5"
                                                    ControlToValidate="ddlDesignation" CssClass="red" Display="Dynamic"
                                                    ErrorMessage="Please select designation">
                                                </asp:RequiredFieldValidator>
                                                <asp:TextBox runat="server" ID="txtDesignation" Visible="false" CssClass="form-control col-sm-12"
                                                    MaxLength="20">
                                                </asp:TextBox>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <label class="col-auto ps-0">Mobile #</label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server"
                                                    ID="txtWork" MaxLength="20">
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
                                                <label class="col-auto ps-0">Department</label>
                                                <asp:DropDownList CssClass="form-control col-sm-12" runat="server"
                                                    ID="ddlDepartment">
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvDepartment"
                                                    InitialValue="0" CssClass="red" Visible="true"
                                                    ControlToValidate="ddlDepartment" Display="Dynamic"
                                                    ErrorMessage="Please select department">
                                                </asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <label class="col-auto ps-0">Email</label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server"
                                                    ID="txtEmailID" MaxLength="200">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfv11"
                                                    ControlToValidate="txtEmailID" CssClass="red" Display="Dynamic"
                                                    ErrorMessage="Please enter email address">
                                                </asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="rev1" runat="server"
                                                    ControlToValidate="txtEmailID" CssClass="red"
                                                    ErrorMessage="Please enter the valid Email ID"
                                                    ValidationExpression="^[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"
                                                    Display="Dynamic">
                                                </asp:RegularExpressionValidator>
                                            </div>

                                            <tr runat="server" id="trhpass" visible="true">
                                                <td></td>
                                            </tr>

                                            <tr runat="server" id="trpass" visible="true">
                                                <td>
                                                    <div class="form-group mx-0 mb-3 col-sm-6">
                                                        <label class="col-auto ps-0">Password</label>
                                                        <asp:TextBox CssClass="form-control col-sm-12" runat="server"
                                                            ID="txtPwd" TextMode="Password" MaxLength="100">
                                                        </asp:TextBox>
                                                        <asp:RequiredFieldValidator runat="server" ID="rfv12"
                                                            ControlToValidate="txtPwd" CssClass="red" Display="Dynamic"
                                                            ErrorMessage="Please enter password">
                                                        </asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="rev2" runat="server"
                                                            Display="Dynamic" CssClass="red"
                                                            ErrorMessage="Password length must be between 8 to 14 characters"
                                                            ControlToValidate="txtPwd"
                                                            ValidationExpression="^[a-zA-Z0-9'@&#.~!%^*()_+=?<>\s]{8,14}$" />
                                                    </div>
                                                </td>

                                                <td>
                                                    <div class="form-group mx-0 mb-3 col-sm-6">
                                                        <label class="col-auto ps-0">Confirmation Password</label>
                                                        <asp:TextBox CssClass="form-control col-sm-12" runat="server"
                                                            ID="txtConfirm" TextMode="Password" MaxLength="100">
                                                        </asp:TextBox>
                                                        <asp:RequiredFieldValidator runat="server" ID="rfv13"
                                                            ControlToValidate="txtConfirm" CssClass="red"
                                                            Display="Dynamic"
                                                            ErrorMessage="Please enter confirmation password">
                                                        </asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="rev3" runat="server"
                                                            Display="Dynamic" CssClass="red"
                                                            ErrorMessage="Password length must be between 8 to 14 characters"
                                                            ControlToValidate="txtConfirm"
                                                            ValidationExpression="^[a-zA-Z0-9'@&#.~!%^*()_+=?<>\s]{8,14}$" />
                                                        <asp:CompareValidator ID="CompareValidator1" runat="server"
                                                            ControlToValidate="txtConfirm" Display="Dynamic"
                                                            CssClass="ValidationError" ControlToCompare="txtPwd"
                                                            ErrorMessage="Password and confirm password should be same"
                                                            ToolTip="Password and confirm password should be same" />
                                                    </div>
                                                </td>
                                            </tr>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <label class="col-auto ps-0 label-100px">Employee Status</label>
                                                <asp:RadioButtonList CssClass="col-sm-12" RepeatDirection="Horizontal"
                                                    runat="server" ID="rblStatus" RepeatLayout="Flow">
                                                    <asp:ListItem class="me-4 label-ml-4" Value="Active"
                                                        Selected="True">Active</asp:ListItem>
                                                    <asp:ListItem class="label-ml-4" Value="InActive">InActive
                                                    </asp:ListItem>
                                                </asp:RadioButtonList>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvWBS" CssClass="red"
                                                    ControlToValidate="rblStatus" Display="Dynamic"
                                                    ErrorMessage="Please select employee status">
                                                </asp:RequiredFieldValidator>
                                            </div>
                                        </div>

                                        <div class="form-group mb-3 d-flex justify-content-end">
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnSubmit" runat="server" Text="Create" OnClick="btnSubmit_Click" />
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnDelete" runat="server" CausesValidation="false" Visible="false"
                                                OnClientClick="return confirm('Are you sure want to delete smtp settings?');"
                                                Text="Delete" OnClick="btnDelete_Click" />
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap"
                                                runat="server" ID="btnCancel" CausesValidation="false" Text="Cancel"
                                                OnClick="btnCancel_Click" />
                                        </div>

                                        <div id="table__responsive_Wrapper">
                                            <asp:GridView ID="gvDept"
                                                CssClass="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1 display"
                                                runat="server" AutoGenerateColumns="false" Width="100%"
                                                AlternatingRowStyle-CssClass="AlternateItemStyle"
                                                HeaderStyle-CssClass="HeaderDatagrid fw-bold fs-6 text-gray-800 border-bottom border-gray-200 table_header"
                                                PageSize="10" OnPageIndexChanging="gvDept_PageIndexChanging"
                                                AllowPaging="false">
                                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                                <PagerStyle CssClass="gridViewPager" />
                                                <Columns>
                                                    <asp:TemplateField ItemStyle-Width="5%">
                                                        <ItemTemplate>
                                                            <asp:RadioButton ID="rbDept" runat="server"
                                                                AutoPostBack="true"
                                                                oncheckedchanged="rbDept_CheckedChanged" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="Emp_Details_ID" HeaderText="SNO"
                                                        ShowHeader="false">
                                                        <ItemStyle CssClass="hide" />
                                                        <HeaderStyle CssClass="hide" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Emp_No" HeaderText="User No" />
                                                    <asp:BoundField DataField="Full_Name" HeaderText="Full Name" />
                                                    <asp:BoundField DataField="Designation" HeaderText="Designation" />
                                                    <asp:BoundField DataField="Department" HeaderText="Department" />
                                                    <asp:BoundField DataField="Email_ID" HeaderText="Email ID" />
                                                </Columns>
                                            </asp:GridView>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
    <script src="/assets/dataTable/js/jquery.dataTables.min.js"></script>

    <script>
        (function () {
            $(function () {
                var table = $('table[id$=gvDept]');
                var thead_row = $('.table_header');
                var thead = $("<thead/>").append($(thead_row));

                var table__responsive_Wrapper = $('#table__responsive_Wrapper').children();

                // Add required classes
                $(table__responsive_Wrapper).addClass('table-responsive mb-1');

                $(table).prepend($(thead));

                $(table).DataTable({
                    "stateSave": true,
                    "stateDuration": 60 * 1,
                    "responsive": true,
                    "lengthMenu": [
                        [10, 20, 30, 50, -1],
                        [10, 20, 30, 50, "All"]
                    ],
                    "sPaginationType": "full_numbers"
                });
            });
        }());
    </script>

</asp:Content>