﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddVehicle.aspx.cs"
    MasterPageFile="~/Default_admin.Master"
    Inherits="PresentationLayer.Admin.AddVehicle" %>

<%@ MasterType
    VirtualPath="~/Default_admin.master" %>
<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">
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
                            <h1 class="text-dark fw-bolder my-1 fs-2">New Escort Vehicle
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
                                        href="Vehicles.aspx"
                                        class="text-breadcrumbs text-hover-primary">Escort Vehicles</a>
                                </li>
                                <li class="breadcrumb-item text-dark">New Escort Vehicle</li>
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
                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label class="col-auto ps-0">Add Vehicle Name</label>
                                            <asp:TextBox
                                                CssClass="form-control col-md-7 col-lg-6"
                                                runat="server"
                                                ID="txtVeh"
                                                MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator
                                                runat="server"
                                                ID="rfvVeh"
                                                ControlToValidate="txtVeh"
                                                Display="Dynamic"
                                                ErrorMessage="Please enter vehicle name"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group col-12 text-end mb-3">
                                            <asp:Button
                                                CssClass="btn btn-primary btn-sm"
                                                ID="btnSubmit"
                                                runat="server"
                                                Text="Submit"
                                                OnClick="btnSubmit_Click" />
                                            <asp:Button
                                                CssClass="btn btn-primary btn-sm"
                                                runat="server"
                                                ID="btnCancel"
                                                Text="Cancel"
                                                OnClick="btnCancel_Click" />
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
