<%-- 
    
    THIS PAGE IS STILL PENDING

    I was not able to see it in the browser due to exceptions it has. 
    
    Hence: the title and breadcrumbs are also pending.

    By -- Patrick -- Date 08.06.2021
    
    
    
--%>


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllApplicants.aspx.cs" MasterPageFile="~/Default.Master" Inherits="PresentationLayer.Admin.AllApplicants" %>

<%@ MasterType VirtualPath="~/Default.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                            <h1 class="text-dark fw-bolder my-1 fs-2">Add New Axle
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
                                        href="Axels.aspx"
                                        class="text-breadcrumbs text-hover-primary">Axles</a>
                                </li>
                                <li class="breadcrumb-item text-dark">Add New Axle</li>
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

                                        <div class="table-responsive mb-1">
                                            <asp:GridView ID="gvPermit" CssClass="table table-row-bordered table-row-gray-300 border-0 gy-2 mb-1"
                                                runat="server" EmptyDataText="No data exists." ShowHeaderWhenEmpty="true" OnPageIndexChanging="gvPermit_PageIndexChanging" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                                HeaderStyle-CssClass="HeaderDatagrid" PageSize="10" AllowPaging="true">
                                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                                <PagerStyle CssClass="gridViewPager" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Application No">
                                                        <ItemTemplate>
                                                            <asp:LinkButton runat="server" ID="lnkView" Text='<%#Eval("Permit_Application_No")%>' OnClick="lnkView_Click"></asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="ID" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label runat="server" ID="lblID" Text='<%#Eval("Application_No") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:BoundField DataField="Cargo_Details" HeaderText="Cargo Details" />
                                                    <asp:BoundField DataField="Route_From" HeaderText="Route:From" />
                                                    <asp:BoundField DataField="Route_To" HeaderText="Route:To" />
                                                    <asp:BoundField DataField="Status" HeaderText="Status" />

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
