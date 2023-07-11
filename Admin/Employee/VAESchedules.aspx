<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VAESchedules.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.VAESchedules" %>

<%@ MasterType VirtualPath="~/Default_custom.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
                <asp:UpdatePanel ID="upRegister" runat="server">
            <ContentTemplate>

<!--begin::Toolbar-->
<div class="toolbar mb-5" id="kt_toolbar">
    <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
      <!--begin::Info-->
      <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
        <!--begin::Title-->
        <h1 class="text-dark fw-bolder my-1 fs-2">
            <asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label>
            Travel Schedule
          <small class="text-muted fs-6 fw-normal ms-1"></small>
        </h1>
        <!--end::Title-->
        <!--begin::Breadcrumb-->
        <ul class="breadcrumb fw-bold fs-base my-1">
          <li class="breadcrumb-item text-breadcrumbs">
            <a
              href="Dashboard.aspx"
              class="text-breadcrumbs text-hover-primary"
              >Home</a>
              <asp:Label runat="server" ID="lblview"></asp:Label>
              <asp:Label runat="server" ID="lblasch"></asp:Label>
            
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
                  
                <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-6">
                    <label class="col-auto ps-0 label-165px">Application Number</label>

                    <div class="form-group col-sm-12 col-md-12 col-xl-12 px-0" >
                        <asp:TextBox ID="txtApp" CssClass="form-control" runat="server" Enabled="false"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="rfvApp" Display="Dynamic" ControlToValidate="txtApp" ErrorMessage="Application number should not blank"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-6">
                    <label class="col-auto ps-0 label-165px">Travel Date</label>
                  
                    <div class="input-group col-sm-12 col-md-12 col-xl-12 px-0" >
                        <asp:TextBox  CssClass="form-control"  ID="txtFDate" runat="server" Enabled="false"></asp:TextBox>
                        <div class="input-group-append rounded-left-0"> 
                            <asp:ImageButton CssClass="input-group-text" runat="server" CausesValidation="false" ID="iPopup" ImageUrl="/images/calendar.png" />
                        </div>
                      </div>

                      <ajaxToolkit:CalendarExtender ID="Calendar1" runat="server" PopupButtonID="iPopup"
                      TargetControlID="txtFDate" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>
                  <asp:RequiredFieldValidator runat="server" ID="rfvFDate" ControlToValidate="txtFDate" Display="Dynamic" ErrorMessage="Please select travel date"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-6">
                    <label class="col-auto ps-0 label-165px">Travel From</label>

                    <div class="form-group col-sm-12 col-md-12 col-xl-12 px-0" >
                        <asp:TextBox CssClass="form-control" runat="server" ID="txtFrom" MaxLength="100">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="rfvFrom" ControlToValidate="txtFrom" Display="Dynamic" ErrorMessage="Please enter from name"></asp:RequiredFieldValidator>

                    </div>
                </div>

                <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-6">
                    <label class="col-auto ps-0 label-165px">Travel To</label>

                    <div class="form-group col-sm-12 col-md-12 col-xl-12 px-0" >
                        <asp:TextBox CssClass="form-control" runat="server" ID="txtTo" MaxLength="100">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="rfvTo" ControlToValidate="txtTo" Display="Dynamic" ErrorMessage="Please enter to name"></asp:RequiredFieldValidator>

                    </div>
                </div>

                <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-6">
                    <label class="col-auto ps-0 label-165px">Travel Time From (24 hours, Ex: 12:30)</label>

                    <div class="form-group col-sm-12 col-md-12 col-xl-12 px-0" >
                        <asp:TextBox CssClass="form-control" runat="server" ID="txtTFrom" MaxLength="5">   
                        </asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="rfvTFrom" ControlToValidate="txtTFrom" Display="Dynamic" ErrorMessage="Please enter from travel time"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ID="revTFrom" Display="Dynamic"
                         ValidationExpression="^([0-1]?[0-9]|[2][0-3]):([0-5][0-9])$" ControlToValidate="txtTFrom"
                             ErrorMessage="Please enter valid time"></asp:RegularExpressionValidator>

                    </div>
                </div>

                <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-6">
                    <label class="col-auto ps-0 label-165px">Travel Time To (24 hours, Ex: 18:30)</label>

                    <div class="form-group col-sm-12 col-md-12 col-xl-12 px-0" >
                        <asp:TextBox CssClass="form-control" runat="server" ID="txtTTo" MaxLength="5">   
                    </asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvTTo" ControlToValidate="txtTTo" Display="Dynamic" ErrorMessage="Please enter to travel time"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="revTTo" Display="Dynamic"
                     ValidationExpression="^([0-1]?[0-9]|[2][0-3]):([0-5][0-9])$" ControlToValidate="txtTTo"
                         ErrorMessage="Please enter valid time"></asp:RegularExpressionValidator>

                    </div>
                </div>

                <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-6">
                    <label class="col-auto ps-0 label-165px">Distance KM</label>

                    <div class="form-group col-sm-12 col-md-12 col-xl-12 px-0" >
                        <asp:TextBox CssClass="form-control" runat="server" ID="txtDistance" MaxLength="5">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="rfvDistance" ControlToValidate="txtDistance" Display="Dynamic" ErrorMessage="Please enter distance"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ID="revDistance" ValidationExpression="^[0-9]+$"
                             ControlToValidate="txtDistance" Display="Dynamic" ErrorMessage="Please enter valid distance"> </asp:RegularExpressionValidator>

                    </div>
                </div>

                <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-6">
                    <label class="col-auto ps-0 label-165px">Parking Place </label>

                    <div class="form-group col-sm-12 col-md-12 col-xl-12 px-0" >
                        <asp:TextBox CssClass="form-control" runat="server" ID="txtPlace" MaxLength="100">   
                        </asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="rfvPlace" ControlToValidate="txtPlace" Display="Dynamic" ErrorMessage="Please enter Parking Place"></asp:RequiredFieldValidator>

                    </div>
                </div>

            </div>

              <div class="form-group mb-3 d-flex justify-content-end">
              <asp:Button  CssClass="btn btn-primary btn-sm white-space-wrap me-1"   ID="btnSubmit" runat="server" Text="Create" OnClick="btnSubmit_Click" />
              <asp:Button  CssClass="btn btn-primary btn-sm white-space-wrap me-1"  ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
              <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"   ID="btnDelete" runat="server" CausesValidation="false" OnClientClick="return confirm('Are you sure want to delete schedule?');" Text="Delete" OnClick="btnDelete_Click" />
              <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"   runat="server" ID="btnCancel" CausesValidation="false" Text="Cancel" OnClick="btnCancel_Click" />
              </div>
              <div class="table-responsive mb-1">
                <asp:GridView ID="gvDept"  CssClass="table table-row-bordered table-row-gray-300 border-0 gy-2 mb-1"
                                runat="server" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                HeaderStyle-CssClass="HeaderDatagrid" PageSize="10" OnRowDataBound="SchRowDataBound" OnPageIndexChanging="gvDept_PageIndexChanging" AllowPaging="true">
                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <PagerStyle CssClass="gridViewPager" />
                                <Columns>
                                    <asp:TemplateField ItemStyle-Width="5%">
                                        <ItemTemplate>    
                                            <asp:RadioButton ID="rbDept" runat="server" AutoPostBack="true"
                                                oncheckedchanged="rbDept_CheckedChanged" />    
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Permit_NO" HeaderText="SNO" ShowHeader="false" >
                                        <ItemStyle CssClass="hide" /><HeaderStyle CssClass="hide"/>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Travel_Date" HeaderText="Travel Date" />
                                    <asp:BoundField DataField="Travel_From" HeaderText="Travel From" />
                                    <asp:BoundField DataField="Travel_To" HeaderText="Travel To" />
                                    <asp:BoundField DataField="Travel_Time_From" HeaderText="Travel Time From" />
                                    <asp:BoundField DataField="Travel_Time_To" HeaderText="Travel Time To" />
                                    <asp:BoundField DataField="Distance" HeaderText="Distance" />
                                    <asp:BoundField DataField="Parking_Place" HeaderText="Parking Place" />
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
