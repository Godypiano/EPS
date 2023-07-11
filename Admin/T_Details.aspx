<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="T_Details.aspx.cs"
MasterPageFile="~/Default_admin.Master"
Inherits="PresentationLayer.Admin.T_Details" %> <%@ MasterType
VirtualPath="~/Default_admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <link href="/Styles/styles_reports.css" rel="stylesheet" type="text/css" />
</asp:Content>
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
                Transporter Details
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
                <li class="breadcrumb-item text-dark">Back To Reports</li>
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
                    <div
                      class="form-group row mx-0 mb-3 align-items-md-center justify-content-end"
                    >
                      <div class="input-group col-md-8 col-lg-8 col-xl-6 px-0">
                        <asp:TextBox
                          CssClass="form-control"
                          ID="txtTransportersSearch"
                          runat="server"
                          ToolTip="Type Start letter of full name"
                        ></asp:TextBox>
                        <div class="input-group-append rounded-left-0">
                          <asp:Button
                            CssClass="btn btn-primary btn-sm white-space-wrap px-3"
                            ID="btnTransportersSearch"
                            runat="server"
                            onclick="btnDTTsearch_Click"
                            Text="Search Transporter"
                            ToolTip="Search by first letter or full name of a company or contact person"
                          />
                        </div>
                      </div>
                    </div>

                    <div class="table-responsive mb-1">
                      <asp:GridView
                        ID="GridVTransporterDetails"
                        CssClass="table table-row-bordered table-row-gray-300 border-0 gy-2 mb-1"
                        runat="server"
                        AutoGenerateColumns="False"
                        AllowPaging="True"
                        Width="100%"
                        EmptyDataText="No data exists."
                        ShowHeaderWhenEmpty="True"
                        HeaderStyle-CssClass="HeaderDatagrid"
                        AlternatingRowStyle-CssClass="AlternateItemStyle"
                        onpageindexchanging="GridVTransporterDetails_PageIndexChanging"
                      >
                        <RowStyle
                          HorizontalAlign="Left"
                          CssClass="FirstItemStyle"
                        />
                        <Columns>
                          <asp:BoundField
                            DataField="S.no"
                            HeaderText="S.no"
                            SortExpression="S.no"
                          ></asp:BoundField>
                          <asp:BoundField
                            DataField="transporter_id"
                            HeaderText="ID"
                            SortExpression="transporter_id"
                          ></asp:BoundField>
                          <asp:BoundField
                            DataField="trans_comp_reg_no"
                            HeaderText="TIN Number"
                            SortExpression="trans_comp_reg_no"
                          />
                          <asp:BoundField
                            DataField="transporter_name"
                            HeaderText="Company Name"
                            SortExpression="transporter_name"
                          />
                          <asp:BoundField
                            DataField="contact_person"
                            HeaderText="Contact Person"
                            SortExpression="contact_person"
                          />
                          <asp:BoundField
                            DataField="address1"
                            HeaderText="P.O.Box"
                            SortExpression="address1"
                          />
                          <asp:BoundField
                            DataField="city"
                            HeaderText="City"
                            SortExpression="city"
                          />
                          <asp:BoundField
                            DataField="contact_per_email"
                            HeaderText="Email"
                            SortExpression="contact_per_email"
                          />

                          <asp:BoundField
                            DataField="contact_per_phone"
                            HeaderText="Mobile No."
                            SortExpression="contact_per_phone"
                          />
                        </Columns>
                        <FooterStyle CssClass="Ftstyle" />
                        <HeaderStyle CssClass="HeaderDatagrid"></HeaderStyle>
                        <PagerStyle CssClass="gridViewPager" />
                        <AlternatingRowStyle
                          CssClass="AlternateItemStyle"
                        ></AlternatingRowStyle>
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
