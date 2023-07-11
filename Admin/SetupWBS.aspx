<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetupWBS.aspx.cs" MasterPageFile="~/Default_admin.Master"
    Inherits="PresentationLayer.Admin.SetupWBS" %>

    <%@ MasterType VirtualPath="~/Default_admin.master" %>

        <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <!--begin::Toolbar-->
            <div class="toolbar" id="kt_toolbar">
                <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
                    <!--begin::Info-->
                    <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                        <!--begin::Title-->
                        <h1 class="text-dark fw-bolder my-1 fs-2">
                            Weighbridge Station
                            <small class="text-muted fs-6 fw-normal ms-1"></small>
                        </h1>
                        <!--end::Title-->
                        <!--begin::Breadcrumb-->
                        <ul class="breadcrumb fw-bold fs-base my-1">
                            <li class="breadcrumb-item text-breadcrumbs">
                                <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                            </li>
                            <li class="breadcrumb-item text-dark hd1">Weighbridge Station</li>
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
                                    <div class="form-group row mx-0 mb-3 align-items-md-center">
                                        <label class="col-auto ps-0 label-135px">Weighbridge Station <span
                                                class="red">*</span></label>

                                        <asp:TextBox runat="server" CssClass="form-control col-md-7 col-lg-6"
                                            ID="txtWSN" MaxLength="50"></asp:TextBox>
                                        <asp:HiddenField runat="server" ID="txthID" />
                                        <asp:RequiredFieldValidator runat="server" ID="rfvAC" CssClass="red"
                                            ControlToValidate="txtWSN" Display="Dynamic"
                                            ErrorMessage="Please enter weighbridge station name">
                                        </asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator runat="server" ID="revnum" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9-&' ]*$" ControlToValidate="txtWSN"
                                                     ErrorMessage="Accepts characters, numbers, hypens, and(&),apostrophe('), and spaces only" CssClass="red">
                                                </asp:RegularExpressionValidator>
                                    </div>

                                    <div class="form-group row mx-0 mb-2 align-items-md-center">
                                        <label class="col-auto ps-0 label-135px"> Region <span
                                                class="red">*</span></label>

                                        <asp:DropDownList CssClass="form-control col-md-9 col-lg-6" runat="server"
                                            ID="ddlRegion">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator runat="server" ID="rfvCargo" CssClass="red"
                                            Display="Dynamic" ControlToValidate="ddlRegion"
                                            ErrorMessage="Please select region"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="form-group mx-0 mb-3 col-sm-6 align-items-md-center">
                                        <label class="col-auto ps-0 label-135px">Status <span
                                                class="red">*</span></label>

                                        <asp:RadioButtonList CssClass="col-sm-12" RepeatDirection="Horizontal"
                                            runat="server" ID="rblStatus">
                                            <asp:ListItem class="me-4 label-ml-4" Value="Active" Selected="True">Active
                                            </asp:ListItem>
                                            <asp:ListItem class="label-ml-4" Value="InActive">InActive</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <asp:RequiredFieldValidator runat="server" ID="rfvWBS" CssClass="red"
                                            ControlToValidate="rblStatus" Display="Dynamic"
                                            ErrorMessage="Please select weighbridge station status">
                                        </asp:RequiredFieldValidator>
                                        
                                    </div>

                                    <div class="form-group col-12 text-end mb-3">
                                        <asp:Button CssClass="btn btn-primary btn-sm" ID="btnSubmit" runat="server"
                                            Text="Create" OnClick="btnSubmit_Click" />
                                        <asp:Button CssClass="btn btn-primary btn-sm" ID="btnUpdate" runat="server"
                                            Text="Update" OnClick="btnUpdate_Click" />
                                        <asp:Button CssClass="btn btn-primary btn-sm" ID="btnDelete" runat="server"
                                            CausesValidation="false"
                                            OnClientClick="return confirmCheckIn(this,'Are you sure you want to delete?');"
                                            Text="Delete" OnClick="btnDelete_Click" />
                                        <asp:Button CssClass="btn btn-primary btn-sm" runat="server" ID="btnCancel"
                                            CausesValidation="false" Text="Cancel" OnClick="btnCancel_Click" />
                                    </div>

                                    <div>
                                        <ob:grid runat="server" id="obGridUsrDet" autogeneratecolumns="false"
                                            allowfiltering="True" allowaddingrecords="false" autopostbackonselect="true"
                                            enablerecordhover="True" showtotalnumberofpages="True"
                                            folderstyle="~/js/styles/premiere_blue" allowcolumnreordering="true"
                                            pagesize="10" OnRowDataBound="OnGridRowDataBound"
                                            HeaderStyle-CssClass="HeaderDatagrid" pagesizeoptions="-1,20"
                                            showcollapsedgroups="True" callbackmode="true">
                                            <ClientSideEvents OnClientCallback="obGrid_Callback" />
                                            <Columns>
                                                <ob:Column HeaderText="WbsID" DataField="WbsID" Width="0" Align="right"
                                                    ShowHeader="false">
                                                    <ItemStyle CssClass="hide" />
                                                    <HeaderStyle CssClass="hide" />
                                                </ob:Column>
                                                <ob:Column HeaderText="Weighbridge Station" DataField="Wbs_Name"
                                                    HeaderAlign="left" Align="left" />
                                                <ob:Column HeaderText="Region" DataField="Region_Name"
                                                    HeaderAlign="left" Align="left" />
                                                <ob:Column HeaderText="Status" DataField="Wbs_Status" HeaderAlign="left"
                                                    Align="left" />
                                            </Columns>
                                            <ScrollingSettings />

                                            <FilteringSettings InitialState="Hidden" MatchingType="AllFilters"
                                                FilterPosition="Top" />
                                            <PagingSettings ShowRecordsCount="true" PageSizeSelectorPosition="Bottom"
                                                Position="Bottom" />
                                        </ob:grid>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <script type="text/javascript">

                var printGridOnCallback = false;
                var currentPageSize = 20;
                function printGrid(printAll) {
                    if (printAll) {
                        printGridOnCallback = true;
                        currentPageSize = obGridUsrDet.getPageSize();
                        ob_obGridUsrDetPageSizeSelector.value(-1);
                    } else {
                        obGridUsrDet.print();
                    }

                    return false;
                }

                function obGrid_Callback() {
                    if (printGridOnCallback) {
                        obGridUsrDet.print();
                        printGridOnCallback = false;
                        ob_obGridUsrDetPageSizeSelector.value(currentPageSize);
                    }
                }

            </script>
        </asp:Content>