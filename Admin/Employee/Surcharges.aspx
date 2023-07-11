﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Surcharges.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.Surcharges" %>

<%@ MasterType VirtualPath="~/Default_custom.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upRegister" runat="server">
            <ContentTemplate>
                        <!--begin::Toolbar-->
        <div class="toolbar mb-5" id="kt_toolbar">
            <div
              class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4"
            >
              <!--begin::Info-->
              <div
                class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2"
              >
                <!--begin::Title-->
                <h1 class="text-dark fw-bolder my-1 fs-2"><asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label>
                  List of Surcharges
                  <small class="text-muted fs-6 fw-normal ms-1"></small>
                </h1>
                <!--end::Title-->
                <!--begin::Breadcrumb-->
                <ul class="breadcrumb fw-bold fs-base my-1">
                  <li class="breadcrumb-item text-breadcrumbs">
                    <a
                      href="Dashboard.aspx"
                      class="text-breadcrumbs text-hover-primary"
                      >Home</a
                    >
                  </li>
                  <li class="breadcrumb-item text-dark">Surcharges</li>
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
                      class="card-body d-flex justify-content-between flex-column"
                    >
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
                          OnPageIndexChanging="gvDept_PageIndexChanging"
                          AllowPaging="true"
                        >
                          <RowStyle
                            HorizontalAlign="Left"
                            CssClass="FirstItemStyle"
                          />
                          <PagerStyle CssClass="gridViewPager" />
                          <Columns>
                            <asp:TemplateField HeaderText="SNo">
                              <ItemTemplate>
                                <asp:LinkButton
                                  runat="server"
                                  ID="lnkView"
                                  Text='<%#Eval("Sno") %>'
                                  OnClick="lnkView_Click"
                                ></asp:LinkButton>
                              </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField
                              DataField="S_Surcharge"
                              HeaderText="Surcharge"
                            />
                            <asp:BoundField
                              DataField="Effective_Date"
                              HeaderText="Effective Date"
                            />
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