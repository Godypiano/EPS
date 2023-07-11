<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TPDetails.aspx.cs" MasterPageFile="~/Default_admin.Master" Inherits="PresentationLayer.Admin.TPDetails" %>
<%@ MasterType VirtualPath="~/Default_admin.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upRegistration" runat="server">
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
            <h1 class="text-dark fw-bolder my-1 fs-2">
                <asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label>
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
              <li class="breadcrumb-item text-breadcrumbs">
                <a
                  href="Archive.aspx"
                  class="text-breadcrumbs text-hover-primary">Archive</a >
                     <asp:Label runat="server" ID="lblview"></asp:Label>
                  <asp:Label runat="server" ID="lbltpd"></asp:Label>
                
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
                  <div class="form-group row mx-0 mb-3 align-items-md-center " >
                    <asp:Label  CssClass="col-auto ps-0 label-200px" runat="server" ID="lblTT">Transporter Type
                        <span class="red">*</span></asp:Label>
                    
                    <asp:Label  CssClass="col-sm-10 col-md-8 col-lg-7" runat="server" ID="lblT"></asp:Label>
                  </div>
                  <tr runat="server" id="tr1">
                      <td>
                           <div class="form-group row mx-0 mb-3 align-items-md-center col-lg-12">
                                <label class="col-auto ps-0 label-170px">Company Name
                                <span class="red">*</span>
                                </label>
                                <asp:Label CssClass="col-sm-10 col-md-8 col-lg-7" runat="server" ID="lblCompany"></asp:Label>
                          </div>
                      </td>
                </tr>

                <tr runat="server" id="tr2">
                    <td></td>
                </tr>
                    <div class="form-group row mx-0 mb-3 align-items-md-center col-lg-12">
                            <label class="col-auto ps-0 label-170px">TIN Number
                            <span class="red">*</span>
                            </label>
                            <asp:Label CssClass="col-sm-10 col-md-8 col-lg-7" runat="server" ID="lblTIN"></asp:Label>
                    </div>
                    <div class="form-group row mx-0 mb-3 align-items-md-center col-lg-12">
                        <label class="col-auto ps-0 label-170px">Contact Person Name
                        <span class="red">*</span>
                        </label>
                        <asp:Label CssClass="col-sm-10 col-md-8 col-lg-7" runat="server" ID="lblCPN"></asp:Label>
                </div>
                <div class="form-group row mx-0 mb-3 align-items-md-center col-lg-12">
                    <label class="col-auto ps-0 label-170px">Title/Designation
                    <span class="red">*</span>
                    </label>
                    <asp:Label CssClass="col-sm-10 col-md-8 col-lg-7" runat="server"  ID="lblDesig"></asp:Label>
            </div>

            <div class="form-group row mx-0 mb-3 align-items-md-center col-lg-12">
                <label class="col-auto ps-0 label-170px">Address I
                <span class="red">*</span>
                </label>
                <asp:Label CssClass="col-sm-10 col-md-8 col-lg-7" runat="server" ID="lblADD1"></asp:Label>
        </div>

        <div class="form-group row mx-0 mb-3 align-items-md-center col-lg-12">
            <label class="col-auto ps-0 label-170px">Address II
            </label>
            <asp:Label CssClass="col-sm-10 col-md-8 col-lg-7" runat="server" ID="lblADD2"></asp:Label>
    </div>
                  <div class="form-group row mx-0 mb-3 align-items-md-center col-lg-12">
                    <label class="col-auto ps-0 label-170px">Zip/Postal Code
                      <span class="red">*</span>
                    </label>
                    <asp:Label
                      CssClass="col-sm-10 col-md-8 col-lg-7"
                      ID="lblPostal"
                      runat="server"
                    ></asp:Label>
                  </div>


                  <div
                    class="form-group row mx-0 mb-3 align-items-md-center col-lg-12"
                  >
                    <label class="col-auto ps-0 label-170px"
                      >Work Phone #
                      <span class="red">*</span>
                    </label>
                    <asp:Label
                      CssClass="col-sm-10 col-md-8 col-lg-7"
                      ID="lblWork"
                      runat="server"
                    ></asp:Label>
                  </div>
                 
                  <div class="form-group row mx-0 mb-3 align-items-md-center col-lg-12">
                    <label class="col-auto ps-0 label-170px"
                      >Home Phone #
                    </label>
                    <asp:Label
                      CssClass=" col-sm-10 col-md-8 col-lg-7"
                      runat="server"
                      ID="lblHome"
                    ></asp:Label>
                  </div>



                  <div class="form-group row mx-0 mb-3 align-items-md-center col-lg-12">
                    <label class="col-auto ps-0 label-170px"
                      >Email
                    </label>
                    <asp:Label
                      CssClass=" col-sm-10 col-md-8 col-lg-7"
                      runat="server"
                      ID="lblEmail"
                    ></asp:Label>
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