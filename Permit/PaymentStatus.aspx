<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentStatus.aspx.cs" MasterPageFile="~/Default.Master" Inherits="PresentationLayer.Permit.PaymentStatus" %>

<%@ MasterType VirtualPath="~/Default.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upRegistration" runat="server">
            <ContentTemplate>
                <!--begin::Toolbar-->
                <div class="toolbar" id="kt_toolbar">
                    <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
                        <!--begin::Info-->
                        <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                            <!--begin::Title-->
                            <h1 class="text-dark fw-bolder my-1 fs-2">
                                <label>Payments Status</label>
                            </h1>
                            <!--end::Title-->
                            <!--begin::Breadcrumb-->
                            <ul class="breadcrumb fw-bold fs-base my-1">
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                                </li>
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a href="Inbox.aspx" class="text-breadcrumbs text-hover-primary">Inbox</a>
                                </li>
                                <li class="breadcrumb-item text-dark">
                                    <asp:Label runat="server" ID="lblsta"></asp:Label>
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

                                        <div class="form-group mx-0 mb-3 col-sm-12">
                                            <asp:Label runat="server" ID="lblResponse"></asp:Label>
                                        </div>
                                        <div class="form-group mx-0 mb-3 col-sm-12">
                                            <asp:Label runat="server" ID="lblReceipt"></asp:Label>
                                        </div>
                                        <div class="form-group mx-0 mb-3 col-sm-12">
                                            <asp:LinkButton runat="server" ID="lnkDB" OnClick="lnkDB_Click">Continue</asp:LinkButton>
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