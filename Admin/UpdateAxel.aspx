<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateAxel.aspx.cs"
MasterPageFile="~/Default_admin.Master"
Inherits="PresentationLayer.Admin.UpdateAxel" %> <%@ MasterType
VirtualPath="~/Default_admin.master" %>
<asp:Content
  ID="Content2"
  ContentPlaceHolderID="ContentPlaceHolder1"
  runat="server"
>
  <div>
    <asp:UpdatePanel ID="upAPermit" runat="server">
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
                Edit/Update Axle
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
                <li class="breadcrumb-item text-breadcrumbs">
                  <a
                    href="Axels.aspx"
                    class="text-breadcrumbs text-hover-primary"
                    >Axels</a
                  >
                </li>
                <li class="breadcrumb-item text-dark">
                  Edit/Update Axle
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
                  <div
                    class="card-body d-flex justify-content-between flex-column"
                  >
                    <div
                      class="form-group row mx-0 mb-3 align-items-md-center col-lg-12"
                    >
                      <asp:Label
                        CssClass="col-auto ps-0 label-170px"
                        runat="server"
                        ID="lblCargo1"
                        >Type of Configuration
                        <span class="red">*</span>
                      </asp:Label>
                      <asp:Label
                        CssClass="col-sm-10 col-md-8 col-lg-7"
                        ID="lblCargo"
                        runat="server"
                      ></asp:Label>
                      <asp:Label
                        ID="lblVID"
                        runat="server"
                        Visible="false"
                      ></asp:Label>
                    </div>
                    <div
                      class="form-group row mx-0 mb-3 align-items-md-center col-lg-12"
                    >
                      <label class="col-auto ps-0 label-170px"
                        >Axle Configuration
                        <span class="red">*</span>
                      </label>
                      <asp:Label
                        CssClass="col-sm-10 col-md-8 col-lg-7"
                        ID="lblAC"
                        runat="server"
                      ></asp:Label>
                    </div>
                    <div
                      class="form-group row mx-0 mb-3 align-items-md-center col-lg-12"
                    >
                      <label class="col-auto ps-0 label-170px"
                        >Number of Axles
                        <span class="red">*</span>
                      </label>
                      <asp:Label
                        CssClass="col-sm-10 col-md-8 col-lg-7"
                        ID="lblNA"
                        runat="server"
                      ></asp:Label>
                    </div>
                    <asp:PlaceHolder runat="server" ID="phAxel">
                    </asp:PlaceHolder>
                    <div
                      class="form-group row mx-0 mb-3 align-items-md-center col-lg-12"
                    >
                      <label class="col-auto ps-0 label-170px"
                        >Total GVM KG
                        <span class="red">*</span>
                      </label>
                      <asp:TextBox
                        CssClass="form-control col-sm-10 col-md-8 col-lg-7"
                        runat="server"
                        ID="txtGVM"
                        MaxLength="8"
                        Enabled="false"
                      ></asp:TextBox>
                      <asp:RequiredFieldValidator
                        runat="server"
                        ID="rfvGVM"
                        Display="Dynamic"
                        ControlToValidate="txtGVM"
                        ErrorMessage="Please enter total GVM"
                      ></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator
                        runat="server"
                        ID="revGVM"
                        ValidationExpression="^[0-9]{1,12}$"
                        ControlToValidate="txtGVM"
                        Display="Dynamic"
                        ErrorMessage="Please enter valid weight"
                      >
                      </asp:RegularExpressionValidator>
                    </div>

                    <div class="form-group mb-3 d-flex justify-content-end">
                      <asp:Button
                        CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                        ID="btnSubmit"
                        runat="server"
                        Text="Update"
                        OnClick="btnSubmit_Click"
                      />
                      <asp:Button
                        CssClass="btn btn-primary btn-sm white-space-wrap"
                        runat="server"
                        ID="btnCancel"
                        CausesValidation="false"
                        OnClientClick="return confirm('Are sure want to delete Axel Config?');"
                        Text="Delete"
                        OnClick="btnCancel_Click"
                      />
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
