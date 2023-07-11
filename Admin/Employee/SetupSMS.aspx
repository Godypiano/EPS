<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetupSMS.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.SetupSMS" %>

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
            <h1 class="text-dark fw-bolder my-1 fs-2">
                <asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label>
                SMS Settings
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
                <li class="breadcrumb-item text-dark">SMS Settings</li>
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
                            <div class="form-group row mx-0 mb-3 align-items-md-center col-sm-12 col-xl-6">
                                <label class="col-auto ps-0 label-125px">SMS Email:</label>
                                <asp:TextBox CssClass="form-control col-sm-12 col-lg-9 col-xl-12" runat="server" ID="txtUname" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="rfvUname" CssClass="red" ControlToValidate="txtUName" Display="Dynamic" ErrorMessage="Please enter sms email"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revEmail" CssClass="red" runat="server" ControlToValidate="txtUName" ErrorMessage="Please enter the valid Email ID" ValidationExpression="^[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$" Display="Dynamic"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group row mx-0 mb-3 align-items-md-center col-sm-12 col-xl-6">
                                <label class="col-auto ps-0 label-125px">SMS API Key:</label>
                                <asp:TextBox CssClass="form-control col-sm-12 col-lg-9 col-xl-12" runat="server" ID="txtPass" TextMode="Password" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="rfvPass" CssClass="red" ControlToValidate="txtPass" Display="Dynamic" ErrorMessage="Please enter sms api key"></asp:RequiredFieldValidator>
                            </div>
                        
                            <div class="form-group row mx-0 mb-3 align-items-md-center col-sm-12 col-xl-6">
                                <label class="col-auto ps-0 label-125px">Service ID: </label>
                                <asp:TextBox CssClass="form-control col-sm-12 col-lg-9 col-xl-12" runat="server" ID="txtFrom" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="rfvEmail" CssClass="red" ControlToValidate="txtFrom" Display="Dynamic" ErrorMessage="Please enter service id"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group row mx-0 mb-3 align-items-md-center col-sm-12 col-xl-6">
                                <label class="col-auto ps-0 label-125px">Mobile Service ID: </label>
                                <asp:TextBox CssClass="form-control col-sm-12 col-lg-9 col-xl-12" runat="server" ID="txtMobile" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="rfvMobile" CssClass="red" ControlToValidate="txtMobile" Display="Dynamic" ErrorMessage="Please enter mobile service id"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group mb-3 d-flex justify-content-end">
                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnSubmit" runat="server" Text="Create" OnClick="btnSubmit_Click" />
                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnDelete" runat="server" CausesValidation="false" OnClientClick="return confirm('Are you sure want to delete smtp settings?');" Text="Delete" OnClick="btnDelete_Click" />
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
                                    <asp:BoundField DataField="UserName" HeaderText="User Name" />
                                    <asp:BoundField DataField="SNO" HeaderText="SNO" ShowHeader="false" >
                                        <ItemStyle CssClass="hide" /><HeaderStyle CssClass="hide"/>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="From_Address" HeaderText="Service ID" />
                                    <asp:BoundField DataField="Mobile_Service" HeaderText="Mobile Service ID" />
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
