<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetupAxles.aspx.cs" MasterPageFile="~/Default_admin.Master"
    Inherits="PresentationLayer.Admin.SetupAxles" %>

    <%@ MasterType VirtualPath="~/Default_admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <link rel="stylesheet" href="/assets/dataTable/css/jquery.dataTables.min.css">
        </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div>
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
                        Axles Configuration
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
                        <li class="breadcrumb-item text-dark">Axles Configuration</li>
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
                                    <div class="form-group row mx-0 mb-3 align-items-md-center col-xl-6">
                                        <asp:Label CssClass="col-auto ps-0 label-160px" runat="server" ID="lblCargo">Type of Configuration
                                            <span class="red">*</span>
                                        </asp:Label>
                                        <asp:DropDownList CssClass="form-control col-sm-11 col-md-9 col-xl-12" runat="server" ID="ddlCargo">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator runat="server" ID="rfvCargo" CssClass="red" Display="Dynamic" ControlToValidate="ddlCargo" ErrorMessage="Please select Configuration Type"></asp:RequiredFieldValidator>
                                        </div>
    
                                        <div class="form-group row mx-0 mb-3 align-items-md-center col-xl-6">
                                            <label class="col-auto ps-0 label-160px">Axle Configuration
                                                <span class="red">*</span>
                                            </label>
                                        <asp:TextBox CssClass="form-control col-sm-11 col-md-9 col-xl-12" runat="server" ID="txtAC" AutoPostBack="true" MaxLength="200" OnTextChanged="txtAC_TextChanged"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ID="rfvAC" CssClass="red" ControlToValidate="txtAC" Display="Dynamic" ErrorMessage="Please enter Axle Configuration"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator runat="server" ID="revAC" CssClass="red" ValidationExpression="^[0-9.+-]+$"
                                            ControlToValidate="txtAC" Display="Dynamic" ErrorMessage="Accepts numbers and ., -, + symbols only"> </asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-group row mx-0 mb-3 align-items-md-center col-xl-6">
                                        <label class="col-auto ps-0 label-160px">Group of Axles
                                            <span class="red">*</span>
                                        </label>
                                        <asp:TextBox CssClass="form-control col-sm-11 col-md-9 col-xl-12" runat="server" ID="txtNA" MaxLength="20" Enabled="false"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ID="rfvNA" CssClass="red" ControlToValidate="txtNA" Display="Dynamic" ErrorMessage="Please enter Axle Number"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator runat="server" ID="revNA" CssClass="red" ValidationExpression="^[0-9]{1,12}$"
                                            ControlToValidate="txtNA" Display="Dynamic" ErrorMessage="Please enter valid Axle Number"> </asp:RegularExpressionValidator>
                                    </div>
                                <asp:PlaceHolder runat="server" ID="phAxel">
                                </asp:PlaceHolder>
                       
                                <div class="form-group row mx-0 mb-3 align-items-md-center col-xl-6">
                                    <label class="col-auto ps-0 label-160px">Total GVM
                                        <span class="red">*</span>
                                    </label>
                                    <div class="input-group col-sm-11 col-md-9 col-xl-12 px-0">
                                        <asp:TextBox CssClass="form-control " runat="server" ID="txtGVM" MaxLength="30" Enabled="false"></asp:TextBox>
                                        <div class="input-group-append rounded-left-0">
                                            <span class="input-group-text">Kg</span>
                                        </div>
                                    </div>

                                        <asp:RequiredFieldValidator runat="server" ID="rfvGVM" CssClass="red" Display="Dynamic" ControlToValidate="txtGVM" ErrorMessage="Please enter total GVM"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator runat="server" ID="revGVM" CssClass="red" ValidationExpression="^[0-9]{1,30}$"
                                            ControlToValidate="txtGVM" Display="Dynamic" ErrorMessage="Please enter valid weight"> </asp:RegularExpressionValidator>
                                    </div>
                                </div>

                                <div class="form-group mb-3 d-flex justify-content-end">
                                    <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnSubmit" runat="server" Text="Create" OnClick="btnSubmit_Click" />
                                    <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnUpdate" runat="server" Text="Update" Visible="true" OnClick="btnUpdate_Click" />
                                    <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnDelete" runat="server" CausesValidation="false" OnClientClick="return confirm('Are you sure want to delete overload axle fee?');" Text="Delete" OnClick="btnDelete_Click" />
                                    <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap" runat="server" ID="btnCancel" CausesValidation="false" Text="Cancel" OnClick="btnCancel_Click" />
                                </div>

                                <div class="table-responsive mb-1">
                                    <asp:GridView ID="gvDept" CssClass="table table-row-bordered table-row-gray-300 border-0 gy-2 mb-1"
                                    runat="server" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                    HeaderStyle-CssClass="HeaderDatagrid" PageSize="10" OnPageIndexChanging="gvDept_PageIndexChanging" AllowPaging="true">
                                    <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                    <PagerStyle CssClass="gridViewPager" />
                                    <Columns>
                                        <asp:TemplateField ItemStyle-Width="5%">
                                            <ItemTemplate>    
                                                <asp:RadioButton ID="rbDept" runat="server" AutoPostBack="true"
                                                    oncheckedchanged="rbDept_CheckedChanged" />    
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="Gvm_Cal_Sno" HeaderText="Department ID" ShowHeader="false" >
                                            <ItemStyle CssClass="hide" /><HeaderStyle CssClass="hide"/>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Vehicle_Type" HeaderText="Vehicle Type" />
                                        <asp:BoundField DataField="Axel_Configuration" HeaderText="Axle Configuration" />
                                        <asp:BoundField DataField="No_Axels" HeaderText="Group of Axles" />
                                        <asp:BoundField DataField="Total_GVM" HeaderText="Total GVM KG" />
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