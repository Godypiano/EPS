<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reconci.aspx.cs" MasterPageFile="~/Default_admin.Master" Inherits="PresentationLayer.Admin.Reconci" %>

<%@ MasterType VirtualPath="~/Default_admin.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <link href="/Styles/jquery-ui.css" rel="stylesheet" type="text/css" />

     <!--begin::Toolbar-->
     <div class="toolbar" id="kt_toolbar">
        <div
            class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
            <!--begin::Info-->
            <div
                class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                <!--begin::Title-->
                <h1 class="text-dark fw-bolder my-1 fs-2">Reconciliation
                    <small class="text-muted fs-6 fw-normal ms-1"></small>
                </h1>
                <!--end::Title-->
                <!--begin::Breadcrumb-->
                <ul class="breadcrumb fw-bold fs-base my-1">
                    <li class="breadcrumb-item text-breadcrumbs">
                        <a
                            href="Dashboard.aspx"
                            class="text-breadcrumbs text-hover-primary">Home</a>
                    </li>
                    <li class="breadcrumb-item text-dark">Reconciliation</li>
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
                            class="card-body d-flex justify-content-between flex-column">

                            <div class="row">
                                <div class="form-group row mx-0 mb-3 align-items-md-center col-sm-6">
                                    <label class="col-auto ps-0 label-80px">Date <span class="red"> * </span></label>

                                    <div class="input-group col-md-12 col-lg-10 col-xl-8 px-0">
                                        <asp:TextBox CssClass="form-control" ID="txtFDate" runat="server"></asp:TextBox>
                                        <div class="input-group-append rounded-left-0">
                                            <asp:ImageButton CssClass="input-group-text" runat="server" CausesValidation="false" ID="iPopup" ImageUrl="/images/calendar.png" />
                                        </div>
                                    </div>

                                    <ajaxToolkit:CalendarExtender ID="Calendar1" runat="server" PopupButtonID="iPopup"
                                        TargetControlID="txtFDate" Format="dd/MM/yyyy">
                                    </ajaxToolkit:CalendarExtender>
                                    <br />
                                    <asp:RequiredFieldValidator runat="server" ID="rfvFDate" ControlToValidate="txtFDate" Display="Dynamic" CssClass="red" ErrorMessage="Please select from date"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="cmpFDate" runat="server" Display="Dynamic"
                                        ErrorMessage="The date must be less than today date" CssClass="red" ValueToCompare="<%# DateTime.Today.ToShortDateString() %>"
                                        ControlToValidate="txtFDate" Type="date" Operator="LessThan" />
                                </div>
                                <div class="form-group row mx-0 align-items-md-center col-sm-6">
                                    <label class="input-group ps-0 label-80px"> Option <span class="red"> * </span></label>

                                    <div class="input-group col-md-12 col-lg-10 col-xl-8 px-0 mb-3">
                                        <asp:DropDownList CssClass="form-control" runat="server" ID="ddlOpt"  >
                                        <asp:ListItem Value="">Select Option</asp:ListItem>
                                        <asp:ListItem Value="1">1</asp:ListItem>
                                        <asp:ListItem Value="2">2</asp:ListItem>
                                    </asp:DropDownList> 
                                </div>
                                    <br />
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" CssClass="red" Display="Dynamic" ControlToValidate="ddlOpt" ErrorMessage="Please select the option  "></asp:RequiredFieldValidator>
                                   
                                </div>
                            </div>
                            <div class="form-group mb-3 d-flex justify-content-end">
                                <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" runat="server" ID="btnSearch" Text="Reconciliation" OnClick="btnSearch_Click" />
                                <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnPdf" CausesValidation="false" runat="server" Text="Download PDF" OnClick="btnPdf_Click"  />
                                <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap" ID="btnExcel" runat="server" CausesValidation="false" Text="Download Excel" OnClick="btnExcel_Click"  />
                            </div>

                            <div class="table-responsive mb-1">
                                <asp:GridView ID="gvDept" CssClass="table table-row-bordered table-row-gray-300 border-0 gy-2 mb-1"
                                runat="server" OnPageIndexChanging="gvPermit_PageIndexChanging" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                HeaderStyle-CssClass="HeaderDatagrid" OnRowDataBound="gvRowDataBound" ShowFooter="true" PageSize="10" AllowPaging="true">
                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <PagerStyle CssClass="gridViewPager" />
                                <Columns>
                                    <asp:BoundField DataField="Payment_SNo" HeaderText="Sno" />
                                    <asp:BoundField DataField="Payment_Date" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Payment Date" />
                                    <asp:BoundField DataField="Transporter_Name" HeaderText="Transporter Name" />
                                    <asp:BoundField DataField="Transporter_Phone" HeaderText="Transporter Phone" />
                                    <asp:BoundField DataField="Transporter_Email" HeaderText="Transporter_Email" />
                                    <asp:TemplateField HeaderText="Amount">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="lblAMT" Text='<%#Eval("Amount") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Right" />
                                        <FooterTemplate>
                                         <asp:Label ID="lblGAMT" runat="server"></asp:Label><br />
                                            <asp:Label ID="lblGAMT1" runat="server"></asp:Label>
                                         </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Payment_Trans_No" HeaderText="Transaction No" />
                                    <asp:BoundField DataField="Control_Num" HeaderText="Control Num" />
                                    <asp:BoundField DataField="Token" HeaderText="Application No" />
                                    <asp:BoundField DataField="Pay_Name" HeaderText="Payer Name" />
                                    <asp:BoundField DataField="Pay_Channel" HeaderText="Pay Channel" />
                         
                                </Columns>
                                <FooterStyle HorizontalAlign="Right" />
                            </asp:GridView>
                            </div>
                            <div class="table-responsive mb-1">
                            <asp:GridView ID="gvCopy" CssClass="table table-row-bordered table-row-gray-300 border-0 gy-2 mb-1"
                                runat="server" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                HeaderStyle-CssClass="HeaderDatagrid" Visible="false" OnRowDataBound="gvCopyRowDataBound" AllowPaging="false">
                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <PagerStyle CssClass="gridViewPager" />
                                <Columns>
                                    <asp:BoundField DataField="Amount" HeaderText="Amount" />
                         
                                </Columns>
                            </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
