<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RouteSurvey.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.RouteSurvey" %>
<%@ MasterType VirtualPath="~/Default_custom.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upRouteSurvey" runat="server">
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
                Route Survey 
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
              <li class="breadcrumb-item text-dark">Route Survey </li>
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
                  <div class="row">

                    <div class="form-group row mx-0 mb-3 align-items-md-center">
                      <label class="col-auto ps-0 label-165px">Route Detials </label>
                        <div class="col-md-12 col-lg-9 col-xl-8 px-0">
                            <asp:TextBox CssClass="form-control" runat="server" ID="txtRDetails"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="rfvRDetails" ControlToValidate="txtRDetails" Display="Dynamic" ErrorMessage="Please enter route details"></asp:RequiredFieldValidator>
                        </div>
                      </div>

                    <div class="form-group row mx-0 mb-3 align-items-md-center ">
                        <label class="col-auto ps-0 label-165px">Route Survey Date</label>
                      <div class="input-group col-md-12 col-lg-9 col-xl-8 px-0">
                        <asp:TextBox CssClass="form-control" ID="txtRDate" runat="server"></asp:TextBox>
                            <div class="input-group-append rounded-left-0">
                                <asp:ImageButton  CssClass="form-control"  runat="server" CausesValidation="false" ID="iPopup" ImageUrl="/images/calendar.png" />
                            </div>
                      </div>
                      <ajaxToolkit:CalendarExtender ID="Calendar1" runat="server" PopupButtonID="iPopup"
                        TargetControlID="txtRDate" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>
                        <asp:RequiredFieldValidator runat="server" ID="rfvRDate" ControlToValidate="txtRDate" Display="Dynamic" ErrorMessage="Please select route survey date"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group row mx-0 mb-3 align-items-md-center">
                        <label class="col-auto ps-0 label-200px">Upload Route Survey Report</label>
                         <span class="red"></span>
                        <div class="col-md-12 col-lg-9 col-xl-8 px-0">
                            <asp:FileUpload CssClass="form-class" runat="server" ID="fuRSR" />
                            <asp:RequiredFieldValidator runat="server" ID="rfvRSR" ControlToValidate="fuRSR" Display="Dynamic" ErrorMessage="Please upload route survey document"></asp:RequiredFieldValidator>
                      </div>
                    </div>

                  <div class="form-group mb-3 d-flex justify-content-end">
                    <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnReg" runat="server" Text="Submit" OnClick="btnReg_Click" />
                    <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" runat="server" ID="btnCancel" CausesValidation="false" Text="Cancel" />
                  </div>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
</div>

    </ContentTemplate>
            <Triggers>
            <asp:PostBackTrigger ControlID = "btnReg" />
    </Triggers>
</asp:UpdatePanel>
    </div>
</asp:Content>

