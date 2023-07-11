<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetupDept.aspx.cs"
MasterPageFile="~/Default_admin.Master"
Inherits="PresentationLayer.Admin.SetupDept" %> <%@ MasterType
VirtualPath="~/Default_admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <link rel="stylesheet" href="/assets/dataTable/css/jquery.dataTables.min.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div>
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
                Department
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
                <li class="breadcrumb-item text-dark">Department</li>
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
                    <div class="form-group row mx-0 mb-3 align-items-md-center">
                      <label class="col-auto ps-0">Department Type/Name:</label>

                      <asp:TextBox
                        CssClass="form-control col-md-7 col-lg-6"
                        runat="server"
                        ID="txtDept"
                        MaxLength="100"
                      ></asp:TextBox>
                      <asp:RequiredFieldValidator
                        runat="server"
                        ID="rfvDept"
                        CssClass="red"
                        ControlToValidate="txtDept"
                        Display="Dynamic"
                        ErrorMessage="Please enter department name"
                      ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ID="revnum" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9-&' ]*$" ControlToValidate="txtDept"
                                                     ErrorMessage="Accepts characters, numbers, hypens, and(&),apostrophe('), and spaces only" CssClass="red">
                                                </asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group col-12 text-end mb-3">
                      <asp:Button
                        CssClass="btn btn-primary btn-sm"
                        ID="btnSubmit"
                        runat="server"
                        Text="Create"
                        OnClick="btnSubmit_Click"
                      />
                      <asp:Button
                        CssClass="btn btn-primary btn-sm"
                        ID="btnUpdate"
                        runat="server"
                        Visible="false"
                        Text="Update"
                        OnClick="btnUpdate_Click"
                      />
                      <asp:Button
                        CssClass="btn btn-primary btn-sm"
                        ID="btnDelete"
                        runat="server"
                        CausesValidation="false"
                        OnClientClick="return confirm('Are you sure want to delete department?');"
                        Text="Delete"
                        OnClick="btnDelete_Click"
                      />
                      <asp:Button
                        CssClass="btn btn-primary btn-sm"
                        runat="server"
                        ID="btnCancel"
                        CausesValidation="false"
                        Text="Cancel"
                        OnClick="btnCancel_Click"
                      />
                    </div>

                    <div id="table__resposive">
                      <asp:GridView
                        ID="gvDept"
                        CssClass="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1 "
                        runat="server"
                        AutoGenerateColumns="false"
                        Width="100%"
                        AlternatingRowStyle-CssClass="AlternateItemStyle"
                        HeaderStyle-CssClass="fw-bold fs-6 text-gray-800 border-bottom border-gray-200 table_header"
                        OnPageIndexChanging="gvDept_PageIndexChanging"
                        >
                        <%-- PageSize="10"
                        AllowPaging="true" --%>
                        <RowStyle
                          HorizontalAlign="Left"
                          CssClass="FirstItemStyle"
                        />
                        <PagerStyle CssClass="gridViewPager" />
                        <Columns>
                          <asp:TemplateField ItemStyle-Width="5%">
                            <ItemTemplate>
                              <asp:RadioButton
                                ID="rbDept"
                                runat="server"
                                AutoPostBack="true"
                                oncheckedchanged="rbDept_CheckedChanged"
                              />
                            </ItemTemplate>
                          </asp:TemplateField>
                          <asp:BoundField
                            DataField="Department_Name"
                            HeaderText="Department Name"
                          />
                          <asp:BoundField
                            DataField="DeptID"
                            HeaderText="Department ID"
                            ShowHeader="false"
                          >
                            <ItemStyle CssClass="hide" /><HeaderStyle
                              CssClass="hide"
                            />
                          </asp:BoundField>
                        </Columns>
                      </asp:GridView>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
  </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
  <script src="/assets/dataTable/js/jquery.dataTables.min.js"></script>

  <script>
    (function(){
    $(function() {
      var table = $('table[id$=gvDept]');
      var thead_row = $('.table_header');
      var table__resposive_Wrapper = $('#table__resposive').children();
      var thead = $("<thead/>").append($(thead_row));

      // Add required classes
      $(table__resposive_Wrapper).addClass('table-responsive mb-1');

      $(table).prepend($(thead));

      $(table).DataTable({
          "stateSave": true,
          "responsive": true,
          "lengthMenu": [
              [10, 20, 30, 50, -1],
              [10, 20, 30, 50, "All"]
          ],
          "sPaginationType": "full_numbers"
      });
    });}());
  </script>

</asp:Content>