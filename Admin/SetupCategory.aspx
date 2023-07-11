<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetupCategory.aspx.cs" MasterPageFile="~/Default_admin.Master" Inherits="PresentationLayer.Admin.SetupCategory" %>

<%@ MasterType VirtualPath="~/Default_admin.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="/assets/dataTable/css/jquery.dataTables.min.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upRegister" runat="server">
            <ContentTemplate>
                <!--begin::Toolbar-->
                <div class="toolbar" id="kt_toolbar">
                    <div class="container-fluid d-flex flex-stack flex-wrap flex-sm10nowrap px-4">
                        <!--begin::Info-->
                        <d10v class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                            <!--begin::Title-->
                            <h1 class="text-dark fw-bolder my-1 fs-2">Category
                                <small class="text-muted fs-6 fw-normal ms-1"></small>
                            </h1>
                            <!--end::Title-->
                            <!--begin::Breadcrumb-->
                            <ul class="breadcrumb fw-bold fs-base my-1">
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                                </li>
                                <li class="breadcrumb-item text-dark">Category</li>
                            </ul>
                            <!--end::Breadcrumb-->
                        </d10v>
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
                                            <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-6">
                                                <label class="col-auto ps-0 label-100px">Width From</label>

                                                <div class="input-group col-sm-12 col-md-11 col-xl-9 px-0">
                                                    <asp:TextBox CssClass="form-control" ID="txtWFrom" MaxLength="5"
                                                        runat="server"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <span class="input-group-text">M</span>
                                                    </div>
                                                </div>

                                                <asp:RequiredFieldValidator runat="server" ID="rfvWFrom" CssClass="red"
                                                    ControlToValidate="txtWFrom" Display="Dynamic"
                                                    ErrorMessage="Please enter width"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="revWFrom"
                                                    CssClass="red" ValidationExpression="^(?:\d{1})?(?:\.\d{1,2})?$"
                                                    ControlToValidate="txtWFrom" Display="Dynamic"
                                                    ErrorMessage="Please enter valid width">
                                                </asp:RegularExpressionValidator>
                                            </div>

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-6">
                                                <label class="col-auto ps-0 label-100px">Width To</label>

                                                <div class="input-group col-sm-12 col-md-11 col-xl-9 px-0">
                                                    <asp:TextBox CssClass="form-control" ID="txtWTo" MaxLength="5"
                                                        runat="server"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <span class="input-group-text">M</span>
                                                    </div>
                                                </div>

                                                <asp:RequiredFieldValidator runat="server" ID="rfvWTo" CssClass="red"
                                                    Display="Dynamic" ControlToValidate="txtWTo"
                                                    ErrorMessage="Please enter width"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="revWTo"
                                                    CssClass="red" ValidationExpression="^(?:\d{1})?(?:\.\d{1,2})?$"
                                                    ControlToValidate="txtWTo" Display="Dynamic"
                                                    ErrorMessage="Please enter valid width">
                                                </asp:RegularExpressionValidator>

                                            </div>

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-6">
                                                <label class="col-auto ps-0 label-100px">Length From</label>

                                                <div class="input-group col-sm-12 col-md-11 col-xl-9 px-0">
                                                    <asp:TextBox CssClass="form-control" ID="txtLFrom" MaxLength="5"
                                                        runat="server"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <span class="input-group-text">M</span>
                                                    </div>
                                                </div>

                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1"
                                                    CssClass="red" ControlToValidate="txtLFrom" Display="Dynamic"
                                                    ErrorMessage="Please enter length"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server"
                                                    ID="RegularExpressionValidator1" CssClass="red"
                                                    ValidationExpression="^(?:\d{1})?(?:\.\d{1,2})?$"
                                                    ControlToValidate="txtLFrom" Display="Dynamic"
                                                    ErrorMessage="Please enter valid length">
                                                </asp:RegularExpressionValidator>

                                            </div>

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-6">
                                                <label class="col-auto ps-0 label-100px">Length To</label>

                                                <div class="input-group col-sm-12 col-md-11 col-xl-9 px-0">
                                                    <asp:TextBox CssClass="form-control" ID="txtLTo" MaxLength="5"
                                                        runat="server"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <span class="input-group-text">M</span>
                                                    </div>
                                                </div>

                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2"
                                                    CssClass="red" Display="Dynamic" ControlToValidate="txtLTo"
                                                    ErrorMessage="Please enter length"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server"
                                                    ID="RegularExpressionValidator2" CssClass="red"
                                                    ValidationExpression="^(?:\d{1})?(?:\.\d{1,2})?$"
                                                    ControlToValidate="txtLTo" Display="Dynamic"
                                                    ErrorMessage="Please enter valid width">
                                                </asp:RegularExpressionValidator>

                                            </div>

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center col-md-6">
                                                <label class="col-auto ps-0">Abnormal load permit</label>
                                                <asp:RadioButtonList RepeatLayout="Flow" CssClass="col-auto ps-0"
                                                    runat="server" RepeatDirection="Horizontal" ID="rblPR">
                                                    <asp:ListItem class="me-4 label-ml-4" Value="yes">Required
                                                    </asp:ListItem>
                                                    <asp:ListItem class="label-ml-4" Value="no">Not Required
                                                    </asp:ListItem>
                                                </asp:RadioButtonList>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvPR" CssClass="red"
                                                    ControlToValidate="rblPR" Display="Dynamic"
                                                    ErrorMessage="Please select permit required">
                                                </asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center col-md-6">
                                                <label class="col-auto ps-0">Confirmation Letter From Police
                                                    Tanzania</label>
                                                <asp:RadioButtonList RepeatLayout="Flow" CssClass="col-auto ps-0"
                                                    runat="server" RepeatDirection="Horizontal" ID="rblPolice">
                                                    <asp:ListItem class="me-4 label-ml-4" Value="yes">Yes</asp:ListItem>
                                                    <asp:ListItem class="label-ml-4" Value="no">No</asp:ListItem>
                                                </asp:RadioButtonList>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvPolice" CssClass="red"
                                                    ControlToValidate="rblPolice" Display="Dynamic"
                                                    ErrorMessage="Please select"></asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center col-md-6">
                                                <label class="col-auto ps-0">Escort Vehicle</label>
                                                <asp:RadioButtonList RepeatLayout="Flow" CssClass="col-auto ps-0"
                                                    runat="server" RepeatDirection="Horizontal" ID="rblEVR"
                                                    AutoPostBack="true"
                                                    OnSelectedIndexChanged="rblEVR_SelectedIndexChanged">
                                                    <asp:ListItem class="me-4 label-ml-4" Value="yes">Required
                                                    </asp:ListItem>
                                                    <asp:ListItem class="label-ml-4" Value="no">Not Required
                                                    </asp:ListItem>
                                                </asp:RadioButtonList>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvEVR" CssClass="red"
                                                    ControlToValidate="rblEVR" Display="Dynamic"
                                                    ErrorMessage="Please select"></asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center col-md-6">
                                                <label class="col-auto ps-0">Advertisement</label>
                                                <asp:RadioButtonList RepeatLayout="Flow" CssClass="col-auto ps-0"
                                                    runat="server" RepeatDirection="Horizontal" ID="rblAdvg">
                                                    <asp:ListItem class="me-4 label-ml-4" Value="yes">Yes</asp:ListItem>
                                                    <asp:ListItem class="label-ml-4" Value="no">No</asp:ListItem>
                                                </asp:RadioButtonList>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvAdvg" CssClass="red"
                                                    ControlToValidate="rblAdvg" Display="Dynamic"
                                                    ErrorMessage="Please select"></asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center col-md-6">
                                                <label class="col-auto ps-0 label-180px">Number of Escort
                                                    Vehicles</label>
                                                <asp:TextBox CssClass="form-control col-sm-2 col-md-11 col-xl-9"
                                                    runat="server" ID="txtNVR" MaxLength="4"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvNVR" CssClass="red"
                                                    Enabled="false" Display="Dynamic" ControlToValidate="txtNVR"
                                                    ErrorMessage="Please enter vehicles length">
                                                </asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="revNVR"
                                                    CssClass="red" ValidationExpression="^[1-9]{1}$"
                                                    ControlToValidate="txtNVR" Display="Dynamic"
                                                    ErrorMessage="Please enter valid vehicle number">
                                                </asp:RegularExpressionValidator>
                                            </div>

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center col-md-6">
                                                <label class="col-auto ps-0">Route Survey by the MOW</label>
                                                <asp:RadioButtonList RepeatLayout="Flow" CssClass="col-auto ps-0"
                                                    runat="server" RepeatDirection="Horizontal" ID="rblRoute">
                                                    <asp:ListItem class="me-4 label-ml-4" Value="yes">Yes</asp:ListItem>
                                                    <asp:ListItem class="label-ml-4" Value="no">No</asp:ListItem>
                                                </asp:RadioButtonList>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvRoute" CssClass="red"
                                                    ControlToValidate="rblRoute" Display="Dynamic"
                                                    ErrorMessage="Please select"></asp:RequiredFieldValidator>
                                            </div>

                                        </div>

                                        <div class="form-group mb-3 d-flex justify-content-end">
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnSubmit" runat="server" Text="Create" OnClick="btnSubmit_Click" />
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnDelete" runat="server" CausesValidation="false"
                                                OnClientClick="return confirm('Are you sure want to delete vehicle?');"
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
                                                AllowPaging="true">
                                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                                <PagerStyle CssClass="gridViewPager" />
                                                <Columns>
                                                    <asp:TemplateField ItemStyle-Width="5%">
                                                        <ItemTemplate>
                                                            <asp:RadioButton ID="rbDept" runat="server"
                                                                AutoPostBack="true"
                                                                OnCheckedChanged="rbDept_CheckedChanged" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="Dim_Cat_Sno" HeaderText="Department ID"
                                                        ShowHeader="false">
                                                        <ItemStyle CssClass="hide" />
                                                        <HeaderStyle CssClass="hide" />
                                                    </asp:BoundField>
                                                    <asp:TemplateField HeaderText="Category No">
                                                        <ItemTemplate>
                                                            <%# Container.DataItemIndex + 1 %>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="Width_From" HeaderText="Width From" />
                                                    <asp:BoundField DataField="Width_To" HeaderText="Width To" />
                                                    <asp:BoundField DataField="Length_From" HeaderText="Length From" />
                                                    <asp:BoundField DataField="Length_To" HeaderText="Length To" />
                                                </Columns>
                                            </asp:GridView>
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