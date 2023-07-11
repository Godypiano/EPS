<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssignUsers.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.AssignUsers" %>
<%@ MasterType VirtualPath="~/Default_custom.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upAssignUser" runat="server">
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
            <asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label>
          Assign to User (Admin)
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
          <li class="breadcrumb-item text-dark">Assign to User</li>
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
                <div class="form-group row mx-0 mb-3 align-items-sm-center col-lg-6">
                    <label class="col-auto ps-0 label-80px">From User</label>
                    <asp:DropDownList CssClass="form-control col-sm-9 col-md-7 col-lg-12 col-xl-10" runat="server" ID="ddlFUser" AutoPostBack="true" OnSelectedIndexChanged="ddlFUser_SelectedIndexChanged"></asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="rfvFUser" CssClass="red" ControlToValidate="ddlFUser" Display="Dynamic" ErrorMessage="Please select from user"></asp:RequiredFieldValidator>
                </div>
                
                <div class="form-group row mx-0 mb-3 align-items-sm-center col-lg-6">
                    <label class="col-auto ps-0 label-80px">To User</label>
                    <asp:DropDownList CssClass="form-control col-sm-9 col-md-7 col-lg-12 col-xl-10" runat="server" ID="ddlTUser">
                        <asp:ListItem Value="">Select To User</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="rfvTUser" ControlToValidate="ddlTUser" CssClass="red" Display="Dynamic" ErrorMessage="Please select to user"></asp:RequiredFieldValidator>
                </div>
              
                <div class="form-group row mx-0 mb-3 align-items-sm-center col-lg-6">
                    <label class="col-auto ps-0 label-80px">From Date</label>
                    
                    <div class="input-group col-sm-9 col-md-7 col-lg-12 col-xl-10 px-0">
                        <asp:TextBox CssClass="form-control" ID="txtFDate" runat="server" Enabled="false"></asp:TextBox>
                        <div class="input-group-append rounded-left-0">
                          <asp:ImageButton CssClass="input-group-text" runat="server" CausesValidation="false" ID="iPopup" ImageUrl="/images/calendar.png" />
                        </div>
                      </div>

                    <ajaxToolkit:CalendarExtender ID="Calendar1" runat="server" PopupButtonID="iPopup"
                        TargetControlID="txtFDate" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>
                    <asp:RequiredFieldValidator runat="server" ID="rfvFDate" ControlToValidate="txtFDate" Display="Dynamic" CssClass="red" ErrorMessage="Please select from date"></asp:RequiredFieldValidator>
                    <asp:comparevalidator ID="cmpFDate" runat="server" Display="Dynamic" 
                      errormessage="The date must be greater than today" CssClass="red"
                      controltovalidate="txtFDate" type="date"  Operator="GreaterThanEqual"
                      valuetocompare="<%# DateTime.Today.ToShortDateString() %>" />
                </div>
                
                <div class="form-group row mx-0 mb-3 align-items-sm-center col-lg-6">
                    <label class="col-auto ps-0 label-80px">To Date</label>

                    <div class="input-group col-sm-9 col-md-7 col-lg-12 col-xl-10 px-0" >
                        <asp:TextBox CssClass="form-control" ID="txtTDate" runat="server" Enabled="false"></asp:TextBox>
                        <div class="input-group-append rounded-left-0">
                          <asp:ImageButton CssClass="input-group-text" runat="server" CausesValidation="false" ID="iPopup1" ImageUrl="/images/calendar.png" />
                        </div>
                      </div>

                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" PopupButtonID="iPopup1"
                        TargetControlID="txtTDate" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="txtTDate" CssClass="red" Display="Dynamic" ErrorMessage="Please select to date"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cmpVal" ControlToCompare="txtFDate" ControlToValidate="txtTDate" Display="Dynamic"
                         Type="Date" Operator="GreaterThanEqual"  ErrorMessage="To Date should be greater than equal to From Date" CssClass="red"
                         runat="server"></asp:CompareValidator>
                </div>
              </div>

              <div class="form-group mb-3 d-flex justify-content-end">
                <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnReg" runat="server" Text="Submit" OnClick="btnReg_Click" />
                <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap" runat="server" ID="btnCancel" CausesValidation="false" Text="Cancel" />
              </div>

              <div class="table-responsive mb-1">
                <asp:GridView ID="gvAssign" CssClass="table table-row-bordered table-row-gray-300 border-0 gy-2 mb-1"
                runat="server" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                HeaderStyle-CssClass="HeaderDatagrid" OnRowDataBound="assignRowDataBound" OnPageIndexChanging="gvAssign_PageIndexChanging" PageSize="10" AllowPaging="true">
                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                <PagerStyle CssClass="gridViewPager" />
                <Columns>
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate>
                            <asp:LinkButton runat="server" OnClientClick="return confirm('Are you sure want to delete assigned user?');" CausesValidation="false" ID="lnkView" Text="Delete" OnClick="lnkView_Click"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ID" Visible="false">
                                <ItemTemplate>
                                    <asp:Label runat="server" ID="lblID" Text='<%#Eval("SNO") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                    <asp:BoundField DataField="From_Date" HeaderText="From Date" />
                    <asp:BoundField DataField="To_Date" HeaderText="To Date" />
                    <asp:BoundField DataField="From_User" HeaderText="From User" />
                    <asp:BoundField DataField="To_User" HeaderText="To User" />
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

