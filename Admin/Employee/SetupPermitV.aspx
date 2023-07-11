﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetupPermitV.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.SetupPermitV" %>

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
                Allowed Permit Vehicle
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
                <li class="breadcrumb-item text-dark">Permit Vehicle</li>
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
                            <div class="form-group row mx-0 mb-3 align-items-md-center col-sm-12 col-md-10 col-lg-10 col-xl-6">
                                <label class="col-auto ps-0 label-215px">Vehicle Type/Name:</label>
                                <asp:TextBox CssClass="form-control col-sm-12" runat="server" ID="txtVehicle" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="rfvVehicle" CssClass="red" ControlToValidate="txtVehicle" Display="Dynamic" ErrorMessage="Please enter vehicle name"></asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator runat="server" ID="revnum" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9-&' ]*$" ControlToValidate="txtVehicle"
                                                     ErrorMessage="Accepts characters, numbers, hypens, and(&),apostrophe('), and spaces only" CssClass="red">
                                                </asp:RegularExpressionValidator>
                            </div>
                            
                            <div class="form-group row mx-0 mb-3 align-items-md-center col-sm-12 col-md-10 col-lg-10 col-xl-6">
                                <label class="col-auto ps-0 label-215px">Total Vehicle Registration Number:</label>
                                 <asp:TextBox CssClass="form-control col-sm-12" runat="server" ID="txtNR" MaxLength="20"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="rfvNR" CssClass="red" ControlToValidate="txtNR" Display="Dynamic" ErrorMessage="Please enter registration number count"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator runat="server" ID="revNR" CssClass="red" ValidationExpression="^[1-9]{1}$"
                                    ControlToValidate="txtNR" Display="Dynamic" ErrorMessage="Please enter valid registration count"> </asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group mb-3 d-flex justify-content-end">
                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnSubmit" runat="server" Text="Create" OnClick="btnSubmit_Click" />
                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnDelete" runat="server" CausesValidation="false" OnClientClick="return confirm('Are you sure want to delete vehicle?');" Text="Delete" OnClick="btnDelete_Click" />
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
                                    <asp:BoundField DataField="Vehicle_Name" HeaderText="Vehicle Name" />
                                    <asp:BoundField DataField="Vehicle_SNO" HeaderText="Department ID" ShowHeader="false" >
                                        <ItemStyle CssClass="hide" /><HeaderStyle CssClass="hide"/>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="NO_Registrations" HeaderText="Number of Registrations" />
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
