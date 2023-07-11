<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTerms.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.AddTerms" %>

<%@ MasterType VirtualPath="~/Default_custom.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
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
           Add New Terms & Conditions
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
            
            <asp:Label runat="server" ID="lblview"></asp:Label>
            <asp:Label runat="server" ID="lblter"></asp:Label>
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
            <div
              class="card-body d-flex justify-content-between flex-column"
            >
              <div class="row">
                <div class="form-group mx-0 mb-3 align-items-md-center ">
                    <label class="col-auto ps-0">Number of Terms & Conditions</label>
                    <span class="red">*</span>

                    <div class="form-group col-sm-6 col-md-6 px-0" >
                            <asp:TextBox CssClass="form-control" runat="server" ID="txtAC" AutoPostBack="true" MaxLength="2" OnTextChanged="txtAC_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="rfvAC" ControlToValidate="txtAC" Display="Dynamic" ErrorMessage="Please enter number of conditions number"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator runat="server" ID="revAC" ValidationExpression="^[0-9]{1,3}$"
                                ControlToValidate="txtAC" Display="Dynamic" ErrorMessage="Please enter valid days"> </asp:RegularExpressionValidator>
                        </div>
                      </div>
                        
                    <asp:PlaceHolder runat="server" ID="phAxel">
                    </asp:PlaceHolder>

                <div class="form-group mb-3 d-flex justify-content-end">
                    <asp:Button  CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />&nbsp;&nbsp;
                    <asp:Button  CssClass="btn btn-primary btn-sm white-space-wrap me-1" runat="server" ID="btnCancel" Text="Cancel" OnClick="btnCancel_Click" />
                </div>


              </div>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>



    </div>
</asp:Content>
