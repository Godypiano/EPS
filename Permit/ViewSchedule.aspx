<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSchedule.aspx.cs" MasterPageFile="~/Default.Master" Inherits="PresentationLayer.Permit.ViewSchedule" %>
<%@ MasterType VirtualPath="~/Default.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upAssignUser" runat="server">
            <ContentTemplate>
                <!--begin::Toolbar-->
                <div class="toolbar" id="kt_toolbar">
                    <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
                        <!--begin::Info-->
                        <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                            <!--begin::Title-->
                            <h1 class="text-dark fw-bolder my-1 fs-2">
                                Add Travel Schedule
                            </h1>
                            <!--end::Title-->
                            <!--begin::Breadcrumb-->
                            <ul class="breadcrumb fw-bold fs-base my-1">
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                                </li>
                                <li class="breadcrumb-item text-dark">
                                    <label>Inbox</label>
                                    <asp:Label CssClass="col-sm-12" runat="server" ID="lblview"></asp:Label>
                                    <asp:Label CssClass="col-sm-12" runat="server" ID="lblsches"></asp:Label>
                                    <asp:Label CssClass="col-sm-12" runat="server" ID="lblsch"></asp:Label>
                                </li>
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
                                                <label class="col-auto ps-0">Application Number</label>
                                                <asp:Label CssClass="col-sm-12" ID="lblApp" runat="server"></asp:Label>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <label class="col-auto ps-0">Travel Date</label>
                                                <asp:Label CssClass="col-sm-12" ID="lblFDate" runat="server">
                                                </asp:Label>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <label class="col-auto ps-0">Travel From</label>
                                                <asp:Label CssClass="col-sm-12" runat="server" ID="lblFrom"></asp:Label>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <label class="col-auto ps-0">Travel To</label>
                                                <asp:Label CssClass="col-sm-12" runat="server" ID="lblTo"></asp:Label>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <label class="col-auto ps-0">Travel Time From (Ex:
                                                    5:30)</label>
                                                <asp:Label CssClass="col-sm-12" runat="server" ID="lblTFrom">
                                                </asp:Label>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <label class="col-auto ps-0">Travel Time To (Ex:
                                                    8:30)</label>
                                                <asp:Label CssClass="col-sm-12" runat="server" ID="lblTTo"
                                                    MaxLength="5"></asp:Label>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <label class="col-auto ps-0">Distance KM</label>
                                                <asp:Label CssClass="col-sm-12" runat="server" ID="lblDistance">
                                                </asp:Label>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <label class="col-auto ps-0">Parking Place</label>
                                                <asp:Label CssClass="col-sm-12" runat="server" ID="lblPlace">
                                                </asp:Label>
                                            </div>
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