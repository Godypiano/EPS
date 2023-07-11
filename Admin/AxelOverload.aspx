﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AxelOverload.aspx.cs"
MasterPageFile="~/Default_admin.Master"
Inherits="PresentationLayer.Admin.AxelOverload" %> <%@ MasterType
VirtualPath="~/Default_admin.master" %>
<asp:Content
  ID="Content2"
  ContentPlaceHolderID="ContentPlaceHolder1"
  runat="server"
>
  <div>
    <asp:UpdatePanel ID="upRegister" runat="server">
      <ContentTemplate>
        <!--begin::Toolbar-->
        <div class="toolbar" id="kt_toolbar">
          <div
            class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4"
          >
            <!--begin::Info-->
            <div
              class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2"
            >
              <!--begin::Title-->
              <h1 class="text-dark fw-bolder my-1 fs-2">
                Axles Overload
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
                <li class="breadcrumb-item text-dark">Axles Overload</li>
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
                        ID="gvAxel"
                        CssClass="table table-row-bordered table-row-gray-300 border-0 gy-2 mb-1"
                        runat="server"
                        AutoGenerateColumns="false"
                        Width="100%"
                        AlternatingRowStyle-CssClass="AlternateItemStyle"
                        HeaderStyle-CssClass="HeaderDatagrid"
                        PageSize="10"
                        OnRowDataBound="axelRowDataBound"
                        OnPageIndexChanging="gvAxel_PageIndexChanging"
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
                                Text='<%#Eval("Over_Charg_Sno") %>'
                                OnClick="lnkView_Click"
                              ></asp:LinkButton>
                            </ItemTemplate>
                          </asp:TemplateField>
                          <asp:BoundField
                            DataField="Over_Weight_From"
                            HeaderText="Weight From KG"
                          />
                          <asp:BoundField
                            DataField="Over_Weight_To"
                            HeaderText="Weight To KG"
                          />
                          <asp:BoundField
                            DataField="Currency_Code"
                            HeaderText="Currency Code"
                          />
                          <asp:BoundField
                            DataField="Charge_Amount"
                            HeaderText="Charge Amount"
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
