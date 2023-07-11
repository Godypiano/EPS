<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetupOLA.aspx.cs" MasterPageFile="~/Default_admin.Master" Inherits="PresentationLayer.Admin.SetupOLA" %>

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
                            <h1 class="text-dark fw-bolder my-1 fs-2">Overload Fee for Axles
                                <small class="text-muted fs-6 fw-normal ms-1"></small>
                            </h1>
                            <!--end::Title-->
                            <!--begin::Breadcrumb-->
                            <ul class="breadcrumb fw-bold fs-base my-1">
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                                </li>
                                <li class="breadcrumb-item text-dark">Overload Fee for Axles</li>
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
                                            <div
                                                class="form-group row mx-0 mb-3 align-items-md-center col-sm-6 col-md-11 col-lg-10">
                                                <label class="col-auto ps-0 label-175px">Axle Overloading Weight</label>

                                                <div class="input-group col-md-12 px-0">
                                                    <div class="input-group-prepend rounded-right-0">
                                                        <span class="input-group-text">From</span>
                                                    </div>
                                                    <asp:TextBox CssClass="form-control" ID="txtFrom" MaxLength="12"
                                                        runat="server"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <span class="input-group-text">Kg</span>
                                                    </div>
                                                </div>

                                                <asp:RequiredFieldValidator runat="server" ID="rfvFrom" CssClass="red"
                                                    Display="Dynamic" ControlToValidate="txtFrom"
                                                    ErrorMessage="Please enter over weight">
                                                </asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="revFrom"
                                                    CssClass="red" ValidationExpression="^[0-9]{1,12}$"
                                                    ControlToValidate="txtFrom" Display="Dynamic"
                                                    ErrorMessage="Please enter valid weight">
                                                </asp:RegularExpressionValidator>
                                            </div>

                                            <div
                                                class="form-group row mx-0 mb-3 align-items-md-center col-sm-6 col-md-11 col-lg-10">
                                                <label class="col-auto ps-0 label-175px">Axle Overloading Weight</label>

                                                <div class="input-group col-md-12 px-0">
                                                    <div class="input-group-prepend rounded-right-0">
                                                        <span class="input-group-text">Up To</span>
                                                    </div>
                                                    <asp:TextBox CssClass="form-control" ID="txtTo" MaxLength="12"
                                                        runat="server"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <span class="input-group-text">Kg</span>
                                                    </div>
                                                </div>

                                                <asp:RequiredFieldValidator runat="server" ID="rfvTo" CssClass="red"
                                                    Display="Dynamic" ControlToValidate="txtTo"
                                                    ErrorMessage="Please enter over weight">
                                                </asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="revTo" CssClass="red"
                                                    ValidationExpression="^[0-9]{1,12}$" ControlToValidate="txtTo"
                                                    Display="Dynamic" ErrorMessage="Please enter valid weight">
                                                </asp:RegularExpressionValidator>
                                            </div>

                                            <div
                                                class="form-group row mx-0 mb-3 align-items-md-center col-sm-6 col-md-11 col-lg-10">
                                                <label class="col-auto ps-0 label-175px">Effective Date:</label>

                                                <div class="input-group col-md-12 px-0">
                                                    <asp:TextBox CssClass="form-control" ID="txtFDate" runat="server">
                                                    </asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <asp:ImageButton CssClass="input-group-text" runat="server"
                                                            CausesValidation="false" ID="iPopup"
                                                            ImageUrl="/images/calendar.png" />
                                                    </div>
                                                </div>

                                                <ajaxToolkit:CalendarExtender ID="Calendar1" runat="server"
                                                    PopupButtonID="iPopup" TargetControlID="txtFDate"
                                                    Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender><br />
                                                <asp:RequiredFieldValidator runat="server" ID="rfvFDate"
                                                    ControlToValidate="txtFDate" Display="Dynamic" CssClass="red"
                                                    ErrorMessage="Please select effective date">
                                                </asp:RequiredFieldValidator>
                                                <asp:comparevalidator ID="cmpFDate" runat="server" Display="Dynamic"
                                                    errormessage="The date must be greater than equal to today date"
                                                    CssClass="red"
                                                    valuetocompare="<%# DateTime.Today.ToShortDateString() %>"
                                                    controltovalidate="txtFDate" type="date"
                                                    Operator="GreaterThanEqual" />
                                            </div>

                                            <div
                                                class="form-group row mx-0 mb-3 align-items-md-center col-sm-6 col-md-11 col-lg-10">
                                                <asp:Label CssClass="col-auto ps-0 label-175px" runat="server"
                                                    ID="lblG1">Steering Axle</asp:Label>

                                                <div class="input-group col-md-12 px-0">
                                                    <asp:TextBox CssClass="form-control" ID="txtG1" MaxLength="12"
                                                        runat="server"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <span class="input-group-text">USD</span>
                                                    </div>
                                                </div>

                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1"
                                                    CssClass="red" Display="Dynamic" ControlToValidate="txtG1"
                                                    ErrorMessage="Please enter amount"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server"
                                                    ID="RegularExpressionValidator1" CssClass="red"
                                                    ValidationExpression="^[0-9]{1,12}?(?:\.\d{1,2})?$"
                                                    ControlToValidate="txtG1" Display="Dynamic"
                                                    ErrorMessage="Please enter valid amount">
                                                </asp:RegularExpressionValidator>
                                            </div>

                                            <div
                                                class="form-group row mx-0 mb-3 align-items-md-center col-sm-6 col-md-11 col-lg-10">
                                                <asp:Label CssClass="col-auto ps-0 label-175px" runat="server"
                                                    ID="Label1">Single (Drive) Axle</asp:Label>

                                                <div class="input-group col-md-12 px-0">
                                                    <asp:TextBox CssClass="form-control" ID="txtG2" MaxLength="12"
                                                        runat="server"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <span class="input-group-text">USD</span>
                                                    </div>
                                                </div>

                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2"
                                                    CssClass="red" Display="Dynamic" ControlToValidate="txtG2"
                                                    ErrorMessage="Please enter amount"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server"
                                                    ID="RegularExpressionValidator2" CssClass="red"
                                                    ValidationExpression="^[0-9]{1,12}?(?:\.\d{1,2})?$"
                                                    ControlToValidate="txtG2" Display="Dynamic"
                                                    ErrorMessage="Please enter valid amount">
                                                </asp:RegularExpressionValidator>
                                            </div>

                                            <div
                                                class="form-group row mx-0 mb-3 align-items-md-center col-sm-6 col-md-11 col-lg-10">
                                                <asp:Label CssClass="col-auto ps-0 label-175px" runat="server"
                                                    ID="Label2">Tandem Axle</asp:Label>

                                                <div class="input-group col-md-12 px-0">
                                                    <asp:TextBox CssClass="form-control" ID="txtG3" MaxLength="12"
                                                        runat="server"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <span class="input-group-text">USD</span>
                                                    </div>
                                                </div>

                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3"
                                                    CssClass="red" Display="Dynamic" ControlToValidate="txtG3"
                                                    ErrorMessage="Please enter amount"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server"
                                                    ID="RegularExpressionValidator3" CssClass="red"
                                                    ValidationExpression="^[0-9]{1,12}?(?:\.\d{1,2})?$"
                                                    ControlToValidate="txtG3" Display="Dynamic"
                                                    ErrorMessage="Please enter valid amount">
                                                </asp:RegularExpressionValidator>
                                            </div>

                                            <div
                                                class="form-group row mx-0 mb-3 align-items-md-center col-sm-6 col-md-11 col-lg-10">
                                                <asp:Label CssClass="col-auto ps-0 label-175px" runat="server"
                                                    ID="Label3">Tridem Axle</asp:Label>

                                                <div class="input-group col-md-12 px-0">
                                                    <asp:TextBox CssClass="form-control" ID="txtG4" MaxLength="12"
                                                        runat="server"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <span class="input-group-text">USD</span>
                                                    </div>
                                                </div>

                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4"
                                                    CssClass="red" Display="Dynamic" ControlToValidate="txtG4"
                                                    ErrorMessage="Please enter amount"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server"
                                                    ID="RegularExpressionValidator4" CssClass="red"
                                                    ValidationExpression="^[0-9]{1,12}?(?:\.\d{1,2})?$"
                                                    ControlToValidate="txtG4" Display="Dynamic"
                                                    ErrorMessage="Please enter valid amount">
                                                </asp:RegularExpressionValidator>
                                            </div>
                                        </div>

                                        <div class="form-group mb-3 d-flex justify-content-end">
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnSubmit" runat="server" Text="Create" OnClick="btnSubmit_Click" />
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnUpdate" runat="server" Text="Update" Visible="false" OnClick="btnUpdate_Click" />
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnDelete" runat="server" CausesValidation="false" Visible="false"
                                                OnClientClick="return confirm('Are you sure want to delete overload axle fee?');"
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
                                                    <asp:BoundField DataField="Over_Charg_Sno"
                                                        HeaderText="Department ID" ShowHeader="false">
                                                        <ItemStyle CssClass="hide" />
                                                        <HeaderStyle CssClass="hide" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Over_Weight_From"
                                                        HeaderText="Axle Overloading Weight From KG" />
                                                    <asp:BoundField DataField="Over_Weight_To"
                                                        HeaderText="Axle Overloading Weight To KG" />
                                                    <asp:BoundField DataField="Currency_Code"
                                                        HeaderText="Currency Code" />
                                                    <asp:BoundField DataField="Group1"
                                                        HeaderText="Steering Axle Fee(USD)" />
                                                    <asp:BoundField DataField="Group2"
                                                        HeaderText="Single (Drive) Axle Fee(USD)" />
                                                    <asp:BoundField DataField="Group3"
                                                        HeaderText="Tandem Axle Fee(USD)" />
                                                    <asp:BoundField DataField="Group4"
                                                        HeaderText="Tridem Axle Fee(USD)" />
                                                    <asp:BoundField DataField="Effective_Date"
                                                        HeaderText="Effective Date" DataFormatString="{0:dd/M/yyyy}" />
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