﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetupSText.aspx.cs" ValidateRequest="false" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.SetupSText" %>

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
                SMS Text
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
                <li class="breadcrumb-item text-dark">SMS Text</li>
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
                        <div
                            class="form-group row mx-0 mb-3 align-items-md-center col-sm-12 col-md-9 col-lg-7">
                            <label class="col-auto ps-0 label-105px">
                                Select Flow</label>
                            <asp:DropDownList
                                CssClass="form-control col-sm-12"
                                runat="server"
                                ID="ddlFlow"
                                AutoPostBack="true"
                                OnSelectedIndexChanged="ddlFlow_SelectedIndexChanged">
                                <asp:ListItem Value="">Select Flow</asp:ListItem>
                                <asp:ListItem Value="1">Application Submission to ALC</asp:ListItem>
                                <asp:ListItem Value="20">Application Submission to DSE</asp:ListItem>
                                <asp:ListItem Value="2">Forward to ALE</asp:ListItem>
                                <asp:ListItem Value="3">Forward to ADS</asp:ListItem>
                                <asp:ListItem Value="4">Forward to DSE</asp:ListItem>
                                <asp:ListItem Value="5">Forward to DPS</asp:ListItem>
                                <asp:ListItem Value="6">Forward to PS</asp:ListItem>
                                <asp:ListItem Value="7">Fowrard to Deputy Minister</asp:ListItem>
                                <asp:ListItem Value="8">Forward to Minister</asp:ListItem>
                                <asp:ListItem Value="9">Return to ALC</asp:ListItem>
                                <asp:ListItem Value="10">Return to ALE</asp:ListItem>
                                <asp:ListItem Value="11">Return to ADS</asp:ListItem>
                                <asp:ListItem Value="12">Return to DSE</asp:ListItem>
                                <asp:ListItem Value="13">Return to PS</asp:ListItem>
                                <asp:ListItem Value="14">Return to Deputy Minister</asp:ListItem>
                                <asp:ListItem Value="15">To DSE after Payment</asp:ListItem>
                                <asp:ListItem Value="16">Return to Applicant</asp:ListItem>
                                <asp:ListItem Value="17">On Approve for Payment</asp:ListItem>
                                <asp:ListItem Value="18">On Receipt</asp:ListItem>
                                <asp:ListItem Value="19">On Permit Issuing</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator
                                runat="server"
                                ID="rfvFlow"
                                CssClass="red"
                                Display="Dynamic"
                                ErrorMessage="Please select flow"
                                ControlToValidate="ddlFlow"></asp:RequiredFieldValidator>
                        </div>
                        <div
                            class="form-group row mx-0 mb-3 align-items-md-center col-sm-12 col-md-9 col-lg-7">
                            <label class="col-auto ps-0 label-105px">SMS Text:</label><br />
                            <asp:TextBox
                                CssClass="form-control col-sm-12"
                                runat="server"
                                ID="txtDays"
                                TextMode="MultiLine"
                                Rows="5"
                                Columns="30"></asp:TextBox>
                            <asp:RequiredFieldValidator
                                runat="server"
                                ID="rfvDays"
                                CssClass="red"
                                ControlToValidate="txtDays"
                                Display="Dynamic"
                                ErrorMessage="Please enter sms text"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator runat="server" ID="revnum" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9-&' ]*$" ControlToValidate="txtDays"
                                                     ErrorMessage="Accepts characters, numbers, hypens, and(&),apostrophe('), and spaces only" CssClass="red">
                                                </asp:RegularExpressionValidator>
                        </div>

                        <div class="form-group mb-3 d-flex justify-content-end">
                            <asp:Button
                                CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                ID="btnSubmit"
                                runat="server"
                                Text="Create"
                                OnClick="btnSubmit_Click" />
                            <asp:Button
                                CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                ID="btnUpdate"
                                runat="server"
                                Text="Update"
                                OnClick="btnUpdate_Click" />
                            <asp:Button
                                CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                ID="btnDelete"
                                Visible="false"
                                runat="server"
                                CausesValidation="false"
                                OnClientClick="return confirm('Are you sure want to delete sms text?');"
                                Text="Delete"
                                OnClick="btnDelete_Click" />
                            <asp:Button
                                CssClass="btn btn-primary btn-sm white-space-wrap"
                                runat="server"
                                ID="btnCancel"
                                CausesValidation="false"
                                Text="Cancel"
                                OnClick="btnCancel_Click" />
                        </div>

                        <div class="table-responsive mb-1">
                            <asp:GridView
                                ID="gvDept"
                                CssClass="table table-row-bordered table-row-gray-300 border-0 gy-2 mb-1"
                                runat="server"
                                AutoGenerateColumns="false"
                                Width="100%"
                                AlternatingRowStyle-CssClass="AlternateItemStyle"
                                HeaderStyle-CssClass="HeaderDatagrid"
                                PageSize="10"
                                OnRowDataBound="gvRowDataBound"
                                OnPageIndexChanging="gvDept_PageIndexChanging"
                                AllowPaging="true">
                                <RowStyle
                                    HorizontalAlign="Left"
                                    CssClass="FirstItemStyle" />
                                <PagerStyle CssClass="gridViewPager" />
                                <Columns>
                                    <asp:TemplateField ItemStyle-Width="5%">
                                        <ItemTemplate>
                                            <asp:RadioButton
                                                ID="rbDept"
                                                runat="server"
                                                AutoPostBack="true"
                                                OnCheckedChanged="rbDept_CheckedChanged" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField
                                        DataField="SNO"
                                        HeaderText="SNo"></asp:BoundField>
                                    <asp:BoundField
                                        DataField="Flow_ID"
                                        HeaderText="Flow" />
                                    <asp:BoundField
                                        DataField="E_Text"
                                        HeaderText="SMS Text" />
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
