<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ActEmail.aspx.cs"
    MasterPageFile="~/Default_admin.Master"
    Inherits="PresentationLayer.Admin.ActEmail" %>

<%@ MasterType
    VirtualPath="~/Default_admin.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="/assets/dataTable/css/jquery.dataTables.min.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upRegister" runat="server">
            <ContentTemplate>
                <!--begin::Toolbar-->
                <div class="toolbar" id="kt_toolbar">
                    <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
                        <!--begin::Info-->
                        <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                            <!--begin::Title-->
                            <h1 class="text-dark fw-bolder my-1 fs-2">Transporter Activation
                                <small class="text-muted fs-6 fw-normal ms-1"></small>
                            </h1>
                            <!--end::Title-->
                            <!--begin::Breadcrumb-->
                            <ul class="breadcrumb fw-bold fs-base my-1">
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                                </li>
                                <li class="breadcrumb-item text-dark">Transporter Activation</li>
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
                                 
                                        <div id="table__responsive_Wrapper">
                                            <asp:GridView ID="gvPermit"
                                                CssClass="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1 display"
                                                runat="server" EmptyDataText="No data exists."
                                                ShowHeaderWhenEmpty="true" OnRowDataBound="InbRowDataBound"
                                                OnPageIndexChanging="gvPermit_PageIndexChanging"
                                                AutoGenerateColumns="false" Width="100%"
                                                AlternatingRowStyle-CssClass="AlternateItemStyle"
                                                HeaderStyle-CssClass="HeaderDatagrid fw-bold fs-6 text-gray-800 border-bottom border-gray-200 table_header"  >
                                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                                <%-- PageSize="10"AllowPaging="false" --%>
                                                <PagerStyle CssClass="gridViewPager" />
                                                <Columns>
                                                    
                                                    <asp:TemplateField HeaderText="SNo" ItemStyle-Width="2%"
                                                        ItemStyle-VerticalAlign="Top"
                                                        HeaderStyle-HorizontalAlign="Left">
                                                        <ItemTemplate>
                                                            <%# Container.DataItemIndex + 1 %>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="Trans_Comp_Reg_No" HeaderText="Registration No" />
                                                    <asp:BoundField DataField="Transporter_Name" HeaderText="Transporter Name" />
                                                    <asp:BoundField DataField="Contact_Person" HeaderText="Contact Person" />
                                                    <asp:BoundField DataField="Email_ID" HeaderText="Email" />
                                                    <asp:BoundField DataField="Created_Date" HeaderText="Create Date" DataFormatString="{0:dd/MM/yyyy}" />
                                                    <asp:TemplateField HeaderText="Activate Account">
                                                        <ItemTemplate>
                                                            <asp:LinkButton runat="server" ID="lnkView" OnClientClick="return confirm('Are you sure want to activate this account?');"
                                                                Text='Activate Account'
                                                                OnClick="lnkView_Click"></asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="ID" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label runat="server" ID="lblID"
                                                                Text='<%#Eval("Transporter_ID") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
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

<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
    <script src="/assets/dataTable/js/jquery.dataTables.min.js"></script>

    <script>
        (function () {
            $(function () {
                var table = $('table[id$=gvPermit]');
                var thead_row = $('.table_header');
                var thead = $("<thead/>").append($(thead_row));

                var table__responsive_Wrapper = $('#table__responsive_Wrapper').children();

                // Add required classes
                $(table__responsive_Wrapper).addClass('table-responsive mb-1');

                $(table).prepend($(thead));

                $(table).DataTable({
                    "stateSave": true,
                    "stateDuration": 60 * 1,
                    "responsive": true,
                    "lengthMenu": [
                        [10, 20, 30, 50, -1],
                        [10, 20, 30, 50, "All"]
                    ],
                    "sPaginationType": "full_numbers"
                });
            });
        }());
    </script>

</asp:Content>