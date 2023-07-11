<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Schedules.aspx.cs" MasterPageFile="~/Default.Master" Inherits="PresentationLayer.Permit.Schedules" %>

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
                                Travel Schedules
                                <small class="text-muted fs-6 fw-normal ms-1"></small>
                            </h1>
                            <!--end::Title-->
                            <!--begin::Breadcrumb-->
                            <ul class="breadcrumb fw-bold fs-base my-1">
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                                    <asp:Label runat="server" ID="lblview"></asp:Label>
                                    <asp:Label runat="server" ID="lblsches"></asp:Label>
                                    <asp:Label runat="server" ID="lblsch"></asp:Label>

                                </li>
                                <li class="breadcrumb-item text-dark">Inbox</li>
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


                                            <div class="table-responsive mb-1">
                                                <asp:GridView ID="gvDept"
                                                    Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                                    runat="server" AutoGenerateColumns="false" Width="100%"
                                                    AlternatingRowStyle-CssClass="AlternateItemStyle"
                                                    HeaderStyle-CssClass="HeaderDatagrid" PageSize="10"
                                                    OnRowDataBound="gvmRowDataBound"
                                                    OnPageIndexChanging="gvDept_PageIndexChanging" AllowPaging="true">
                                                    <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                                    <PagerStyle CssClass="gridViewPager" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="SNo">
                                                            <ItemTemplate>
                                                                <asp:LinkButton runat="server" ID="lnkView"
                                                                    Text='<%#Container.DataItemIndex+1 %>'
                                                                    OnClick="lnkView_Click"></asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ID" Visible="false">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" ID="lblSNo"
                                                                    Text='<%#Eval("SNO") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Travel_Date"
                                                            HeaderText="Travel Date" />
                                                        <asp:BoundField DataField="Travel_From"
                                                            HeaderText="Travel From" />
                                                        <asp:BoundField DataField="Travel_To" HeaderText="Travel To" />
                                                        <asp:BoundField DataField="Travel_Time_From"
                                                            HeaderText="Travel Time From" />
                                                        <asp:BoundField DataField="Travel_Time_To"
                                                            HeaderText="Travel Time To" />
                                                        <asp:BoundField DataField="Distance" HeaderText="Distance" />
                                                        <asp:BoundField DataField="Parking_Place"
                                                            HeaderText="Parking Place" />
                                                    </Columns>
                                                </asp:GridView>
                                            </div>
                                        </div>
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