<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateEmp.aspx.cs" MasterPageFile="~/Default_admin.Master" Inherits="PresentationLayer.Admin.UpdateEmp" %>
<%@ MasterType VirtualPath="~/Default_admin.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <!--begin::Toolbar-->
  <div class="toolbar" id="kt_toolbar">
    <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
      <!--begin::Info-->
      <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
        <!--begin::Title-->
        <h1 class="text-dark fw-bolder my-1 fs-2">
          Edit/Update User Details
          <small class="text-muted fs-6 fw-normal ms-1"></small>
        </h1>
        <!--end::Title-->
        <!--begin::Breadcrumb-->
        <ul class="breadcrumb fw-bold fs-base my-1">
          <li class="breadcrumb-item text-breadcrumbs">
            <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
          </li>
          <li class="breadcrumb-item text-breadcrumbs">
            <a href="EmpUsers.aspx" class="text-breadcrumbs text-hover-primary">Users</a>
          </li>
          <li class="breadcrumb-item text-dark">
            Edit/Update User
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
              <div class="form-group row mx-0 mb-3 align-items-md-center col-lg-12">
                <label class="col-auto ps-0 label-135px">Full Name</label>
                <asp:TextBox CssClass="form-control col-sm-10 col-md-8 col-lg-7" runat="server" ID="txtFullName"
                  MaxLength="200"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="rfv4" ControlToValidate="txtFullName" CssClass="red"
                  Display="Dynamic" ErrorMessage="Please enter full name"></asp:RequiredFieldValidator>
              </div>
              <div class="form-group row mx-0 mb-3 align-items-md-center col-lg-12">
                <label class="col-auto ps-0 label-135px">Title/Designation</label>
                <asp:Label CssClass="col-sm-10 col-md-8 col-lg-7" runat="server" ID="lblDesignation"></asp:Label>
              </div>
              <tr runat="server" id="trws" visible="false">
                <td>
                  <div class="form-group row mx-0 mb-3 align-items-md-center col-lg-12">
                    <label class="col-auto ps-0 label-135px">Name of the Workstation</label>
                    <asp:TextBox CssClass="form-control col-sm-10 col-md-8 col-lg-7" runat="server" ID="txtWorkstation"
                      MaxLength="200"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvWorkstation" CssClass="red"
                      ControlToValidate="txtWorkstation" Display="Dynamic" ErrorMessage="Please enter workstation name">
                    </asp:RequiredFieldValidator>
                  </div>

                </td>
              </tr>
              <tr runat="server" id="trhws" visible="false">
                <td></td>
              </tr>
              <div class="form-group row mx-0 mb-3 align-items-md-center col-lg-12">
                <label class="col-auto ps-0 label-135px">Department</label>
                <asp:DropDownList CssClass="form-control col-sm-10 col-md-8 col-lg-7" runat="server" ID="ddlDepartment">
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" InitialValue="0" CssClass="red" ID="rfvDepartment"
                  Visible="true" ControlToValidate="ddlDepartment" Display="Dynamic"
                  ErrorMessage="Please select department"></asp:RequiredFieldValidator>
              </div>
              <div class="form-group row mx-0 mb-3 align-items-md-center col-lg-12">
                <label class="col-auto ps-0 label-135px">Email</label>
                <asp:Label CssClass="col-sm-10 col-md-8 col-lg-7" runat="server" ID="lblEmailID"></asp:Label>
              </div>
              <div class="form-group row mx-0 mb-3 align-items-md-center col-lg-12">
                <label class="col-auto ps-0 label-135px">Mobile #</label>
                <asp:TextBox CssClass="form-control col-sm-10 col-md-8 col-lg-7" runat="server" ID="txtWork"
                  MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="rfvWork" CssClass="red" ControlToValidate="txtWork"
                  Display="Dynamic" ErrorMessage="Please enter phone number"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ID="revWork" CssClass="red"
                  ValidationExpression="^[0-9]{1,12}$" ControlToValidate="txtWork" Display="Dynamic"
                  ErrorMessage="Please enter valid number"> </asp:RegularExpressionValidator>
              </div>

              <div class="form-group mb-3 d-flex justify-content-end">
                <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnReg" runat="server"
                  Text="Update" OnClick="btnReg_Click" />
                <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap" runat="server" ID="btnCancel"
                  Text="Cancel" />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</asp:Content>