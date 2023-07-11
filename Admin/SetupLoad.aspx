<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetupLoad.aspx.cs" MasterPageFile="~/Default_admin.Master" Inherits="PresentationLayer.Admin.SetupLoad" %>

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
                    <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
                        <!--begin::Info-->
                        <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                            <!--begin::Title-->
                            <h1 class="text-dark fw-bolder my-1 fs-2">Cargo Type
                                <small class="text-muted fs-6 fw-normal ms-1"></small>
                            </h1>
                            <!--end::Title-->
                            <!--begin::Breadcrumb-->
                            <ul class="breadcrumb fw-bold fs-base my-1">
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                                </li>
                                <li class="breadcrumb-item text-dark">Cargo Type</li>
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
                                            <div class="form-group row mx-0 mb-3 align-items-md-center">
                                                <label class="col-auto ps-0 label-100px">Cargo Type :</label>
                                                <asp:TextBox
                                                    CssClass="form-control col-sm-12 col-md-9 col-lg-8 col-xl-7"
                                                    runat="server" ID="txtVeh" MaxLength="100"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvVeh" CssClass="red"
                                                    ControlToValidate="txtVeh" Display="Dynamic"
                                                    ErrorMessage="Please enter cargo Type"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="revnum" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9-&' ]*$" ControlToValidate="txtVeh"
                                                     ErrorMessage="Accepts characters, numbers, hypens, and(&),apostrophe('), and spaces only" CssClass="red">
                                                </asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                        <div class="form-group mb-3 d-flex justify-content-end">
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnSubmit" runat="server" Text="Create" OnClick="btnSubmit_Click" />
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnDelete" runat="server" CausesValidation="false"
                                                OnClientClick="return confirm('Are you sure want to delete cargo name?');"
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
                                                                oncheckedchanged="rbDept_CheckedChanged" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="Load_Name" HeaderText="Cargo Type " />
                                                    <asp:BoundField DataField="SNO" HeaderText="Department ID"
                                                        ShowHeader="false">
                                                        <ItemStyle CssClass="hide" />
                                                        <HeaderStyle CssClass="hide" />
                                                    </asp:BoundField>
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