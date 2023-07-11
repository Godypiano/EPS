<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Templates.aspx.cs" MasterPageFile="~/Default.Master"
    Inherits="PresentationLayer.Permit.Templates" %>

    <%@ MasterType VirtualPath="~/Default.master" %>
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
                                    <h1 class="text-dark fw-bolder my-1 fs-2">
                                        Templates
                                        <small class="text-muted fs-6 fw-normal ms-1"></small>
                                    </h1>
                                    <!--end::Title-->
                                    <!--begin::Breadcrumb-->
                                    <ul class="breadcrumb fw-bold fs-base my-1">
                                        <li class="breadcrumb-item text-breadcrumbs">
                                            <a href="Dashboard.aspx"
                                                class="text-breadcrumbs text-hover-primary">Home</a>
                                        </li>
                                        <li class="breadcrumb-item text-dark"><asp:Label runat="server" CssClass="hd1" ID="lblTemp">Templates</asp:Label></li>
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
                                                <div class="d-flex justify-content-end">
                                                    <asp:LinkButton runat="server" CssClass="navigationbar"
                                                        Visible="true" ID="lnkEnglish" CausesValidation="false"
                                                        OnClick="lnkEnglish_Click">
                                                        English</asp:LinkButton>

                                                    <asp:LinkButton runat="server" Visible="true"
                                                        CausesValidation="false" CssClass="navigationbar"
                                                        ID="lnkSwahili" OnClick="lnkSwahili_Click">
                                                        Swahili
                                                    </asp:LinkButton>
                                                </div>
                                                <p>
                                                    <asp:LinkButton runat="server" ID="lnkDPolice"
                                                        CausesValidation="false" OnClick="lnkDPolice_Click">Download
                                                        Letter from Police</asp:LinkButton>
                                                </p>

                                                <p>
                                                    <asp:LinkButton runat="server" ID="lnkDTanesco"
                                                        CausesValidation="false" OnClick="lnkDTanesco_Click">Download
                                                        Letter from TANESCO</asp:LinkButton>
                                                </p>

                                                <p>
                                                    <asp:LinkButton runat="server" ID="lnkAdvg" CausesValidation="false"
                                                        OnClick="lnkAdvg_Click">Download Letter Advertisement
                                                    </asp:LinkButton>
                                                </p>

                                                <p>
                                                    <asp:LinkButton runat="server" ID="lnkEng" CausesValidation="false"
                                                        OnClick="lnkEng_Click">Download Letter Advertisement (English)
                                                    </asp:LinkButton>
                                                </p>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--End::Post-->

                    </ContentTemplate>
                </asp:UpdatePanel>



            </div>
        </asp:Content>