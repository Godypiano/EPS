<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetupLanguage.aspx.cs" MasterPageFile="~/Default_admin.Master" Inherits="PresentationLayer.Admin.SetupLanguage" %>

<%@ MasterType VirtualPath="~/Default_admin.master" %>
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
                            <h1 class="text-dark fw-bolder my-1 fs-2">Language Settings
                                <small class="text-muted fs-6 fw-normal ms-1"></small>
                            </h1>
                            <!--end::Title-->
                            <!--begin::Breadcrumb-->
                            <ul class="breadcrumb fw-bold fs-base my-1">
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                                </li>
                                <li class="breadcrumb-item text-dark">Language Settings</li>
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

                                        <div class="row">
                                            <div class="form-group row mx-0 mb-3 align-items-md-center col-sm-6">
                                                <label class="col-auto ps-0 label-80px">Date From</label>

                                                <div class="input-group col-md-12 col-lg-10 col-xl-8 px-0">
                                                    <asp:TextBox CssClass="form-control" ID="txtFDate" runat="server">
                                                    </asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <asp:ImageButton CssClass="input-group-text" runat="server"
                                                            CausesValidation="false" ID="iPopup"
                                                            ImageUrl="/images/calendar.png" />
                                                    </div>
                                                </div>

                                                <ajaxToolkit:CalendarExtender ID="Calendar1" runat="server"
                                                    PopupButtonID="iPopup" TargetControlID="txtFDate"
                                                    Format="dd/MM/yyyy">
                                                </ajaxToolkit:CalendarExtender>
                                                <br />
                                                <asp:RequiredFieldValidator runat="server" ID="rfvFDate"
                                                    ControlToValidate="txtFDate" Display="Dynamic" CssClass="red"
                                                    ErrorMessage="Please select from date"></asp:RequiredFieldValidator>
                                                <asp:CompareValidator ID="cmpFDate" runat="server" Display="Dynamic"
                                                    ErrorMessage="The date must be less than today date" CssClass="red"
                                                    ValueToCompare="<%# DateTime.Today.ToShortDateString() %>"
                                                    ControlToValidate="txtFDate" Type="date" Operator="LessThan" />
                                            </div>
                                            <div class="form-group row mx-0 mb-3 align-items-md-center col-sm-6">
                                                <label class="col-auto ps-0 label-80px">Date To</label>

                                                <div class="input-group col-md-12 col-lg-10 col-xl-8 px-0">
                                                    <asp:TextBox CssClass="form-control" ID="txtTDate" runat="server">
                                                    </asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <asp:ImageButton CssClass="input-group-text" runat="server"
                                                            CausesValidation="false" ID="iPopup1"
                                                            ImageUrl="/images/calendar.png" />
                                                    </div>
                                                </div>

                                                <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server"
                                                    PopupButtonID="iPopup1" TargetControlID="txtTDate"
                                                    Format="dd/MM/yyyy">
                                                </ajaxToolkit:CalendarExtender>
                                                <br />
                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1"
                                                    ControlToValidate="txtTDate" Display="Dynamic" CssClass="red"
                                                    ErrorMessage="Please select to date"></asp:RequiredFieldValidator>
                                                <asp:CompareValidator ID="cmpVal" ControlToCompare="txtFDate"
                                                    ControlToValidate="txtTDate" Display="Dynamic" CssClass="red"
                                                    Type="Date" Operator="GreaterThan"
                                                    ErrorMessage="To Date should be greater than From Date"
                                                    runat="server"></asp:CompareValidator>
                                            </div>
                                        </div>
                                        <div class="form-group mb-3 d-flex justify-content-end">
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap"
                                                ID="btnSubmit" runat="server" Text="View Report"
                                                OnClick="btnSubmit_Click" />
                                            &nbsp;&nbsp;
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap" ID="btnPdf"
                                                runat="server" Text="Download PDF" OnClick="btnPdf_Click" />
                                            &nbsp;&nbsp;
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap" ID="btnExcel"
                                                runat="server" Text="Download Excel" OnClick="btnExcel_Click" />
                                        </div>

                                        <div class="table-responsive mb-1">
                                            <asp:GridView ID="gvDept"
                                                CssClass="table table-row-bordered table-row-gray-300 border-0 gy-2 mb-1"
                                                runat="server" AutoGenerateColumns="false" Width="100%"
                                                AlternatingRowStyle-CssClass="AlternateItemStyle"
                                                HeaderStyle-CssClass="HeaderDatagrid" PageSize="10"
                                                OnRowDataBound="gvRowDataBound"
                                                OnPageIndexChanging="gvDept_PageIndexChanging" AllowPaging="true">
                                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                                <PagerStyle CssClass="gridViewPager" />
                                                <Columns>
                                                    <asp:BoundField DataField="AuditID" HeaderText="AuditID" />
                                                    <asp:BoundField DataField="AuditAction" HeaderText="Action" />
                                                    <asp:BoundField DataField="SNO" HeaderText="SNO" />
                                                    <asp:BoundField DataField="Cargo_Name" HeaderText="Cargo Name" />
                                                    <asp:BoundField DataField="Audit_Date" HeaderText="Action Date" />
                                                    <asp:BoundField DataField="AuditDone" HeaderText="Action By" />
                                                </Columns>
                                            </asp:GridView>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>






                <table style="width: 100%;">
                    <tr>
                        <td style="width: 2%;"></td>
                        <td style="width: 96%;">

                            <table style="width: 100%;">
                                <tr>
                                    <td style="width: 2%;"></td>
                                    <td style="width: 96%;">
                                        <a class="navigationbar" href="Dashboard.aspx">Home</a>&nbsp; &gt;&gt; &nbsp;<a
                                            class="navigationbar" href="SetupSMS.aspx">Language Settings</a>
                                    </td>
                                    <td style="width: 2%;"></td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 100%; height: 10px;"></td>
                                </tr>
                                <tr>
                                    <div>
                                        <label>Select Page</label>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:DropDownList runat="server" AutoPostBack="true" ID="ddlPage"
                                            OnSelectedIndexChanged="ddlPage_SelectedIndexChanged">
                                            <asp:ListItem Value="">Select Page</asp:ListItem>
                                            <asp:ListItem Value="Change Password">Change Password</asp:ListItem>
                                            <asp:ListItem Value="Dashboard">Dashboard</asp:ListItem>
                                            <asp:ListItem Value="Fees">Fees</asp:ListItem>
                                            <asp:ListItem Value="Inbox">Inbox</asp:ListItem>
                                            <asp:ListItem Value="Menu">Menu</asp:ListItem>
                                            <asp:ListItem Value="Permit Apply">Permit Apply</asp:ListItem>
                                            <asp:ListItem Value="Registration">Registration</asp:ListItem>
                                            <asp:ListItem Value="Templates">Templates</asp:ListItem>
                                            <asp:ListItem Value="Travel Schedule">Travel Schedule</asp:ListItem>
                                            <asp:ListItem Value="Others">Others</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator runat="server" ID="rfvPage" CssClass="red"
                                            ControlToValidate="ddlPage" Display="Dynamic"
                                            ErrorMessage="Please select page"></asp:RequiredFieldValidator>
                                    </div>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 100%; height: 10px;"></td>
                                </tr>
                            </table>
                            <fieldset runat="server" id="fsReg" visible="false">
                                <legend>
                                    <label class="hd1">Language Settings</label>
                                </legend>
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 2%;"></td>
                                        <td style="width: 96%;">

                                        </td>
                                        <td style="width: 2%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                                    </tr>
                                </table>

                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label><b>Controls:</b></label>
                                        </td>
                                        <td style="width: 30%;">
                                            <label><b>English:</b></label>
                                        </td>
                                        <td style="width: 30%;">
                                            <label><b>Swahili:</b></label>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 20px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Heading</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="lblTrans" Enabled="false" MaxLength="100">
                                                Transporter</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtTrans" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="rfvTrans" CssClass="red"
                                                ControlToValidate="txtTrans" Display="Dynamic"
                                                ErrorMessage="Please enter Transporter heading">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Heading</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="lblReg" Enabled="false" MaxLength="100">
                                                Registration</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtReg" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="rfvReg" CssClass="red"
                                                ControlToValidate="txtReg" Display="Dynamic"
                                                ErrorMessage="Please enter Registration heading">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="lblTType" Enabled="false" MaxLength="100">
                                                Transporter Type</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtTType" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="rfvTType" CssClass="red"
                                                ControlToValidate="txtTType" Display="Dynamic"
                                                ErrorMessage="Please enter Transporter Type Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox1" Enabled="false" MaxLength="100">
                                                Company Name</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtCN" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="rfvCN" CssClass="red"
                                                ControlToValidate="txtCN" Display="Dynamic"
                                                ErrorMessage="Please enter Company Name Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox3" Enabled="false" MaxLength="100">
                                                TIN Number</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtTIN" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="rfvTIN" CssClass="red"
                                                ControlToValidate="txtTIN" Display="Dynamic"
                                                ErrorMessage="Please enter TIN Number Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox5" Enabled="false" MaxLength="100">
                                                Name of Contact Person</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtContact" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="rfvContact" CssClass="red"
                                                ControlToValidate="txtContact" Display="Dynamic"
                                                ErrorMessage="Please enter Name of Contact Person Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox7" Enabled="false" MaxLength="100">
                                                Title/Designation</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtTitle" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="rfvTitle" CssClass="red"
                                                ControlToValidate="txtTitle" Display="Dynamic"
                                                ErrorMessage="Please enter Title/Designation Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox9" Enabled="false" MaxLength="100">
                                                P.O.Box</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPO" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="rfvPO" CssClass="red"
                                                ControlToValidate="txtPO" Display="Dynamic"
                                                ErrorMessage="Please enter P.O.Box Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox11" Enabled="false" MaxLength="100">
                                                City</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtCity" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="rfvCity" CssClass="red"
                                                ControlToValidate="txtCity" Display="Dynamic"
                                                ErrorMessage="Please enter City Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox13" Enabled="false" MaxLength="100">
                                                Country</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtCountry" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="rfvCountry" CssClass="red"
                                                ControlToValidate="txtCountry" Display="Dynamic"
                                                ErrorMessage="Please enter Country Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox15" Enabled="false" MaxLength="100">
                                                Zip/Postal Code</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtZip" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="rfvZip" CssClass="red"
                                                ControlToValidate="txtCity" Display="Dynamic"
                                                ErrorMessage="Please enter Zip/Postal Code Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox17" Enabled="false" MaxLength="100">
                                                Address 2</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtAdd2" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="rfvAdd2" CssClass="red"
                                                ControlToValidate="txtAdd2" Display="Dynamic"
                                                ErrorMessage="Please enter Address 2 Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox19" Enabled="false" MaxLength="100">
                                                Mobile #</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtMobile" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="rfvMobile" CssClass="red"
                                                ControlToValidate="txtMobile" Display="Dynamic"
                                                ErrorMessage="Please enter Mobile # Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox21" Enabled="false" MaxLength="100">
                                                Land Phone #</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtLand" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="rfvLand" CssClass="red"
                                                ControlToValidate="txtLand" Display="Dynamic"
                                                ErrorMessage="Please enter Land Phone # Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox23" Enabled="false" MaxLength="100">
                                                Email</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtEmail" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="rfvEmail" CssClass="red"
                                                ControlToValidate="txtEmail" Display="Dynamic"
                                                ErrorMessage="Please enter Email Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox25" Enabled="false" MaxLength="100">
                                                Enter Below Code</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtCaptcha" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="rfvCaptcha" CssClass="red"
                                                ControlToValidate="txtCaptcha" Display="Dynamic"
                                                ErrorMessage="Please enter Enter Below Code Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox2" Enabled="false" MaxLength="100">
                                                View Personal Data</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtVPD" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator17"
                                                CssClass="red" ControlToValidate="txtVPD" Display="Dynamic"
                                                ErrorMessage="Please enter View Personal Data Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Button</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox27" Enabled="false" MaxLength="100">
                                                Register</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtRegister" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="rfvRegister" CssClass="red"
                                                ControlToValidate="txtRegister" Display="Dynamic"
                                                ErrorMessage="Please enter Register button">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Button</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox29" Enabled="false" MaxLength="100">
                                                Cancel</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtCancel" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="rfvCancel" CssClass="red"
                                                ControlToValidate="txtCancel" Display="Dynamic"
                                                ErrorMessage="Please enter Cancel button"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 20px;"></td>
                                    </tr>
                                </table>
                                <table style="width: 100%;">


                                    <tr>
                                        <td style="width: 98%; text-align: right;">
                                            <asp:Button ID="btnSubmit" runat="server" Text="Create"
                                                OnClick="btnSubmit_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnUpdate" runat="server" Text="Update"
                                                OnClick="btnUpdate_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnDelete" runat="server" Visible="false"
                                                CausesValidation="false"
                                                OnClientClick="return confirm('Are you sure want to delete smtp settings?');"
                                                Text="Delete" OnClick="btnDelete_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button runat="server" ID="btnCancel" CausesValidation="false"
                                                Text="Cancel" OnClick="btnCancel_Click" />
                                        </td>
                                        <td style="width: 2%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                                    </tr>


                                </table>
                            </fieldset>
                            <fieldset runat="server" id="fsDash" visible="false">
                                <legend>
                                    <label class="hd1">Language Settings</label>
                                </legend>
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 2%;"></td>
                                        <td style="width: 96%;">

                                        </td>
                                        <td style="width: 2%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                                    </tr>
                                </table>

                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label><b>Controls:</b></label>
                                        </td>
                                        <td style="width: 30%;">
                                            <label><b>English:</b></label>
                                        </td>
                                        <td style="width: 30%;">
                                            <label><b>Swahili:</b></label>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 20px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Heading</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="lblDash" Enabled="false" MaxLength="100">
                                                Dashboard</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtDash" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1"
                                                CssClass="red" ControlToValidate="txtDash" Display="Dynamic"
                                                ErrorMessage="Please enter Dashboard heading">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Heading</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="lblView" Enabled="false" MaxLength="100">
                                                View All Applications Status Count</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtView" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2"
                                                CssClass="red" ControlToValidate="txtView" Display="Dynamic"
                                                ErrorMessage="Please enter view all applications heading">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="lblTA" Enabled="false" MaxLength="100">Total
                                                Applications</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtTA" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3"
                                                CssClass="red" ControlToValidate="txtTA" Display="Dynamic"
                                                ErrorMessage="Please enter Total Applications Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="lblIP" Enabled="false" MaxLength="100">
                                                Inprocess</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtIP" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4"
                                                CssClass="red" ControlToValidate="txtIP" Display="Dynamic"
                                                ErrorMessage="Please enter Inprocess Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="lblAPa" Enabled="false" MaxLength="100">
                                                Awating Payment</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtAPa" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5"
                                                CssClass="red" ControlToValidate="txtAPa" Display="Dynamic"
                                                ErrorMessage="Please enter Awating Payment Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="lblAPe" Enabled="false" MaxLength="100">
                                                Awating Permit</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtAPe" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6"
                                                CssClass="red" ControlToValidate="txtAPe" Display="Dynamic"
                                                ErrorMessage="Please enter Name of Awating Permit Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="lblPR" Enabled="false" MaxLength="100">
                                                Permit Received</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPR" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7"
                                                CssClass="red" ControlToValidate="txtPR" Display="Dynamic"
                                                ErrorMessage="Please enter Title/Designation Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>

                                </table>
                                <table style="width: 100%;">


                                    <tr>
                                        <td style="width: 98%; text-align: right;">
                                            <asp:Button ID="btnDSubmit" runat="server" Text="Create"
                                                OnClick="btnDSubmit_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnDUpdate" runat="server" Text="Update"
                                                OnClick="btnDUpdate_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="Button3" runat="server" Visible="false"
                                                CausesValidation="false"
                                                OnClientClick="return confirm('Are you sure want to delete smtp settings?');"
                                                Text="Delete" OnClick="btnDelete_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button runat="server" ID="btnDCancel" CausesValidation="false"
                                                Text="Cancel" OnClick="btnDCancel_Click" />
                                        </td>
                                        <td style="width: 2%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                                    </tr>


                                </table>
                            </fieldset>

                            <fieldset runat="server" id="fsInbox" visible="false">
                                <legend>
                                    <label class="hd1">Language Settings</label>
                                </legend>
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 2%;"></td>
                                        <td style="width: 96%;">

                                        </td>
                                        <td style="width: 2%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                                    </tr>
                                </table>

                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label><b>Controls:</b></label>
                                        </td>
                                        <td style="width: 30%;">
                                            <label><b>English:</b></label>
                                        </td>
                                        <td style="width: 30%;">
                                            <label><b>Swahili:</b></label>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 20px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Heading</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="lblInb" Enabled="false" MaxLength="100">
                                                Inbox - View All Applications </asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtInb" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8"
                                                CssClass="red" ControlToValidate="txtInb" Display="Dynamic"
                                                ErrorMessage="Please enter Inbox heading"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Heading</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="lblViewI" Enabled="false" MaxLength="100">
                                                View Archive Applications</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtViewI" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9"
                                                CssClass="red" ControlToValidate="txtViewI" Display="Dynamic"
                                                ErrorMessage="Please enter view all applications heading">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Grid Column Heading</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="lblAppI" Enabled="false" MaxLength="100">
                                                Application No</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtAppI" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator10"
                                                CssClass="red" ControlToValidate="txtAppI" Display="Dynamic"
                                                ErrorMessage="Please enter Application No heading">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Grid Column Heading</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="lblCnameI" Enabled="false" MaxLength="100">
                                                Cargo Name</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtCnameI" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator11"
                                                CssClass="red" ControlToValidate="txtCnameI" Display="Dynamic"
                                                ErrorMessage="Please enter Cargo Name Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Grid Column Heading</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="lblRfromI" Enabled="false" MaxLength="100">
                                                Route:From</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtRfromI" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator12"
                                                CssClass="red" ControlToValidate="txtRfromI" Display="Dynamic"
                                                ErrorMessage="Please enter Route From Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Grid Column Heading</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="lblRtoI" Enabled="false" MaxLength="100">
                                                Route:To</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtRtoI" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator13"
                                                CssClass="red" ControlToValidate="txtRtoI" Display="Dynamic"
                                                ErrorMessage="Please enter Route To Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Grid Column Heading</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="lblADTI" Enabled="false" MaxLength="100">
                                                Application Date and Time</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtADTI" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator14"
                                                CssClass="red" ControlToValidate="txtADTI" Display="Dynamic"
                                                ErrorMessage="Please enter Application Date and Time Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Grid Column Heading</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="lblStatusI" Enabled="false" MaxLength="100">
                                                Status</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtStatusI" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator15"
                                                CssClass="red" ControlToValidate="txtStatusI" Display="Dynamic"
                                                ErrorMessage="Please enter Status Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Heading</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="lblAppSI" Enabled="false" MaxLength="100">
                                                Update Applications</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtAppSI" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator16"
                                                CssClass="red" ControlToValidate="txtAppSI" Display="Dynamic"
                                                ErrorMessage="Please enter Applications Status Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                </table>
                                <table style="width: 100%;">


                                    <tr>
                                        <td style="width: 98%; text-align: right;">
                                            <asp:Button ID="btnISubmit" runat="server" Text="Create"
                                                OnClick="btnISubmit_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnIUpdate" runat="server" Text="Update"
                                                OnClick="btnIUpdate_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnIDelete" runat="server" Visible="false"
                                                CausesValidation="false"
                                                OnClientClick="return confirm('Are you sure want to delete smtp settings?');"
                                                Text="Delete" OnClick="btnDelete_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button runat="server" ID="btnICancel" CausesValidation="false"
                                                Text="Cancel" OnClick="btnICancel_Click" />
                                        </td>
                                        <td style="width: 2%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                                    </tr>


                                </table>
                            </fieldset>
                            <fieldset runat="server" id="fsPassword" visible="false">
                                <legend>
                                    <label class="hd1">Language Settings</label>
                                </legend>
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 2%;"></td>
                                        <td style="width: 96%;">

                                        </td>
                                        <td style="width: 2%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                                    </tr>
                                </table>

                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label><b>Controls:</b></label>
                                        </td>
                                        <td style="width: 30%;">
                                            <label><b>English:</b></label>
                                        </td>
                                        <td style="width: 30%;">
                                            <label><b>Swahili:</b></label>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 20px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Heading</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox4" Enabled="false" MaxLength="100">
                                                Change Password</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtCP" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator18"
                                                CssClass="red" ControlToValidate="txtCP" Display="Dynamic"
                                                ErrorMessage="Please enter Change Password heading">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox8" Enabled="false" MaxLength="100">
                                                Your password haven't been changed for more than 90 days. You are
                                                advised to change your password.</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtDays" MaxLength="500"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator19"
                                                CssClass="red" ControlToValidate="txtDays" Display="Dynamic"
                                                ErrorMessage="Please enter label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox12" Enabled="false" MaxLength="100">
                                                Current Password</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtCurrent" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator20"
                                                CssClass="red" ControlToValidate="txtCurrent" Display="Dynamic"
                                                ErrorMessage="Please enter Current Password Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox16" Enabled="false" MaxLength="100">
                                                New Password</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtNew" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator21"
                                                CssClass="red" ControlToValidate="txtNew" Display="Dynamic"
                                                ErrorMessage="Please enter New Password Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox20" Enabled="false" MaxLength="100">
                                                Re-type New Password</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtRetype" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator22"
                                                CssClass="red" ControlToValidate="txtRetype" Display="Dynamic"
                                                ErrorMessage="Please enterRe-type New Password Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Button</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox24" Enabled="false" MaxLength="100">
                                                Submit</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtSubmitP" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator23"
                                                CssClass="red" ControlToValidate="txtSubmitP" Display="Dynamic"
                                                ErrorMessage="Please enter Submit Button"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Button</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox28" Enabled="false" MaxLength="100">
                                                Reset</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtResetP" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator24"
                                                CssClass="red" ControlToValidate="txtResetP" Display="Dynamic"
                                                ErrorMessage="Please enter Reset Button"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>

                                </table>
                                <table style="width: 100%;">


                                    <tr>
                                        <td style="width: 98%; text-align: right;">
                                            <asp:Button ID="btnPSubmit" runat="server" Text="Create"
                                                OnClick="btnPSubmit_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnPUpdate" runat="server" Text="Update"
                                                OnClick="btnPUpdate_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnPDelete" runat="server" Visible="false"
                                                CausesValidation="false"
                                                OnClientClick="return confirm('Are you sure want to delete smtp settings?');"
                                                Text="Delete" OnClick="btnDelete_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button runat="server" ID="btnPCancel" CausesValidation="false"
                                                Text="Cancel" OnClick="btnPCancel_Click" />
                                        </td>
                                        <td style="width: 2%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                                    </tr>


                                </table>
                            </fieldset>
                            <fieldset runat="server" id="fsTemplates" visible="false">
                                <legend>
                                    <label class="hd1">Language Settings</label>
                                </legend>
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 2%;"></td>
                                        <td style="width: 96%;">

                                        </td>
                                        <td style="width: 2%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                                    </tr>
                                </table>

                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label><b>Controls:</b></label>
                                        </td>
                                        <td style="width: 30%;">
                                            <label><b>English:</b></label>
                                        </td>
                                        <td style="width: 30%;">
                                            <label><b>Swahili:</b></label>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 20px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Heading</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox6" Enabled="false" MaxLength="100">
                                                Templates</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtTemp" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator25"
                                                CssClass="red" ControlToValidate="txtTemp" Display="Dynamic"
                                                ErrorMessage="Please enter Templates heading">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>


                                </table>
                                <table style="width: 100%;">


                                    <tr>
                                        <td style="width: 98%; text-align: right;">
                                            <asp:Button ID="btnTSubmit" runat="server" Text="Create"
                                                OnClick="btnTSubmit_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnTUpdate" runat="server" Text="Update"
                                                OnClick="btnTUpdate_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnTDelete" runat="server" Visible="false"
                                                CausesValidation="false"
                                                OnClientClick="return confirm('Are you sure want to delete smtp settings?');"
                                                Text="Delete" OnClick="btnDelete_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button runat="server" ID="btnTCancel" CausesValidation="false"
                                                Text="Cancel" OnClick="btnTCancel_Click" />
                                        </td>
                                        <td style="width: 2%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                                    </tr>


                                </table>
                            </fieldset>
                            <fieldset runat="server" id="fsPermit" visible="false">
                                <legend>
                                    <label class="hd1">Language Settings</label>
                                </legend>
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 2%;"></td>
                                        <td style="width: 96%;">

                                        </td>
                                        <td style="width: 2%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                                    </tr>
                                </table>

                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label><b>Controls:</b></label>
                                        </td>
                                        <td style="width: 30%;">
                                            <label><b>English:</b></label>
                                        </td>
                                        <td style="width: 30%;">
                                            <label><b>Swahili:</b></label>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 20px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Heading</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox10" Enabled="false" MaxLength="100">
                                                Apply Permit</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPAP" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator26"
                                                CssClass="red" ControlToValidate="txtPAP" Display="Dynamic"
                                                ErrorMessage="Please enter apply permit heading">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Heading</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox18" Enabled="false" MaxLength="100">
                                                Edit/Update Application</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPEA" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator27"
                                                CssClass="red" ControlToValidate="txtPEA" Display="Dynamic"
                                                ErrorMessage="Please enter edit/update application heading">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Heading</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox26" Enabled="false" MaxLength="100">
                                                View Application</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPVA" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator28"
                                                CssClass="red" ControlToValidate="txtPVA" Display="Dynamic"
                                                ErrorMessage="Please enter view application heading">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox31" Enabled="false" MaxLength="100">
                                                Vehicle & Cargo Details</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPVCD" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator29"
                                                CssClass="red" ControlToValidate="txtPVCD" Display="Dynamic"
                                                ErrorMessage="Please enter Vehicle & Cargo Details">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox33" Enabled="false" MaxLength="100">
                                                Type of Vehicle</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPTV" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator30"
                                                CssClass="red" ControlToValidate="txtPTV" Display="Dynamic"
                                                ErrorMessage="Please enter Type of Vehicle Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox114" Enabled="false" MaxLength="100">
                                                Vehicle Lease Type</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtVLease" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator127"
                                                CssClass="red" ControlToValidate="txtVLease" Display="Dynamic"
                                                ErrorMessage="Please enter Lease Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox118" Enabled="false" MaxLength="100">
                                                Name of Applicant</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtNApp" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator128"
                                                CssClass="red" ControlToValidate="txtNApp" Display="Dynamic"
                                                ErrorMessage="Please enter Applicant Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox120" Enabled="false" MaxLength="100">
                                                Name of Hauler</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtHApp" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator129"
                                                CssClass="red" ControlToValidate="txtHApp" Display="Dynamic"
                                                ErrorMessage="Please enter Lease Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox122" Enabled="false" MaxLength="100">
                                                Street Number</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtStreet" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator130"
                                                CssClass="red" ControlToValidate="txtStreet" Display="Dynamic"
                                                ErrorMessage="Please enter Street Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox124" Enabled="false" MaxLength="100">
                                                City</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtCity1" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator131"
                                                CssClass="red" ControlToValidate="txtCity1" Display="Dynamic"
                                                ErrorMessage="Please enter City Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox126" Enabled="false" MaxLength="100">
                                                Zip / Postal Code</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtZip1" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator132"
                                                CssClass="red" ControlToValidate="txtZip1" Display="Dynamic"
                                                ErrorMessage="Please enter Zip Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox128" Enabled="false" MaxLength="100">
                                                Country</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtCountry1" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator133"
                                                CssClass="red" ControlToValidate="txtCountry1" Display="Dynamic"
                                                ErrorMessage="Please enter Country Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox130" Enabled="false" MaxLength="100">
                                                Telephone</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtTel" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator134"
                                                CssClass="red" ControlToValidate="txtTel" Display="Dynamic"
                                                ErrorMessage="Please enter Telephone Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox132" Enabled="false" MaxLength="100">
                                                Fax</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtFax" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator135"
                                                CssClass="red" ControlToValidate="txtFax" Display="Dynamic"
                                                ErrorMessage="Please enter Fax Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox133" Enabled="false" MaxLength="100">
                                                Email</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtEmail1" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator136"
                                                CssClass="red" ControlToValidate="txtEmail1" Display="Dynamic"
                                                ErrorMessage="Please enter Email Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox134" Enabled="false" MaxLength="100">
                                                Mass (Tonne)</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtMass" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator137"
                                                CssClass="red" ControlToValidate="txtMass" Display="Dynamic"
                                                ErrorMessage="Please enter Mass Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox135" Enabled="false" MaxLength="100">
                                                Overhang Rear (M)</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtORear" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator138"
                                                CssClass="red" ControlToValidate="txtORear" Display="Dynamic"
                                                ErrorMessage="Please enter Overhang Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox137" Enabled="false" MaxLength="100">
                                                Overhang Front (motor vehicle) (M)</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtOFront" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator139"
                                                CssClass="red" ControlToValidate="txtOFront" Display="Dynamic"
                                                ErrorMessage="Please enter Overhang Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox139" Enabled="false" MaxLength="100">
                                                Overhang Right (M)</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtORight" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator140"
                                                CssClass="red" ControlToValidate="txtORight" Display="Dynamic"
                                                ErrorMessage="Please enter Overhang Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox141" Enabled="false" MaxLength="100">
                                                Overhang Left (M)</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtOLeft" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator141"
                                                CssClass="red" ControlToValidate="txtOLeft" Display="Dynamic"
                                                ErrorMessage="Please enter Overhang Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox143" Enabled="false" MaxLength="100">
                                                Overhang Front (drawbar) (M)</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtDraw" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator142"
                                                CssClass="red" ControlToValidate="txtDraw" Display="Dynamic"
                                                ErrorMessage="Please enter Mass Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox136" Enabled="false" MaxLength="100">
                                                Vehicle Registration Details</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtVRDet" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator143"
                                                CssClass="red" ControlToValidate="txtVRDet" Display="Dynamic"
                                                ErrorMessage="Please enter Vehicle Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox138" Enabled="false" MaxLength="100">
                                                Certificate No.</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtCert" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator144"
                                                CssClass="red" ControlToValidate="txtCert" Display="Dynamic"
                                                ErrorMessage="Please enter Certificate Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox140" Enabled="false" MaxLength="100">
                                                Vehicle Configuration</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtVConfig" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator145"
                                                CssClass="red" ControlToValidate="txtVConfig" Display="Dynamic"
                                                ErrorMessage="Please enter Configuration Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox142" Enabled="false" MaxLength="100">
                                                Journey</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtJour" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator146"
                                                CssClass="red" ControlToValidate="txtJour" Display="Dynamic"
                                                ErrorMessage="Please enter Journey Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox144" Enabled="false" MaxLength="100">
                                                Applicant Details</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtAPD" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator160"
                                                CssClass="red" ControlToValidate="txtAPD" Display="Dynamic"
                                                ErrorMessage="Please enter Application Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox145" Enabled="false" MaxLength="100">
                                                Transport Information</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtTInfo" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator147"
                                                CssClass="red" ControlToValidate="txtTInfo" Display="Dynamic"
                                                ErrorMessage="Please enter Transport Info Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox146" Enabled="false" MaxLength="100">
                                                Unladen Vehicle</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtULV" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator148"
                                                CssClass="red" ControlToValidate="txtULV" Display="Dynamic"
                                                ErrorMessage="Please enter Unladen Info Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox147" Enabled="false" MaxLength="100">
                                                Load</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtLoad" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator149"
                                                CssClass="red" ControlToValidate="txtLoad" Display="Dynamic"
                                                ErrorMessage="Please enter Load Info Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox148" Enabled="false" MaxLength="100">
                                                Laden Vehicle</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtLV" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator150"
                                                CssClass="red" ControlToValidate="txtLV" Display="Dynamic"
                                                ErrorMessage="Please enter Laden Info Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox149" Enabled="false" MaxLength="100">
                                                Axle Information</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtAInfo" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator151"
                                                CssClass="red" ControlToValidate="txtAInfo" Display="Dynamic"
                                                ErrorMessage="Please enter Axle Info Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox150" Enabled="false" MaxLength="100">
                                                Axle No.</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtANo" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator152"
                                                CssClass="red" ControlToValidate="txtANo" Display="Dynamic"
                                                ErrorMessage="Please enter Axle No Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox151" Enabled="false" MaxLength="100">
                                                Axle Spacing (M)</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtASpace" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator153"
                                                CssClass="red" ControlToValidate="txtASpace" Display="Dynamic"
                                                ErrorMessage="Please enter Axle Space Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox152" Enabled="false" MaxLength="100">
                                                Required Axle Load (Kg)</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtRALoad" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator154"
                                                CssClass="red" ControlToValidate="txtRALoad" Display="Dynamic"
                                                ErrorMessage="Please enter Axle Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox153" Enabled="false" MaxLength="100">
                                                Actual Axle Load (Kg)</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtAALoad" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator155"
                                                CssClass="red" ControlToValidate="txtAALoad" Display="Dynamic"
                                                ErrorMessage="Please enter Axle Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox154" Enabled="false" MaxLength="100">
                                                Load Information</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtLInfo" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator156"
                                                CssClass="red" ControlToValidate="txtLInfo" Display="Dynamic"
                                                ErrorMessage="Please enter Load Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox155" Enabled="false" MaxLength="100">
                                                Load Type</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtLType" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator157"
                                                CssClass="red" ControlToValidate="txtLType" Display="Dynamic"
                                                ErrorMessage="Please enter Load Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox156" Enabled="false" MaxLength="100">
                                                Load Category</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtLCat" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator158"
                                                CssClass="red" ControlToValidate="txtLCat" Display="Dynamic"
                                                ErrorMessage="Please enter Load Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox157" Enabled="false" MaxLength="100">
                                                Phone No. (Ex:XXXXXXXXX) </asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPhone1" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator159"
                                                CssClass="red" ControlToValidate="txtPhone1" Display="Dynamic"
                                                ErrorMessage="Please enter Phone Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox35" Enabled="false" MaxLength="100">
                                                Type of Language Settings</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPTCN" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator31"
                                                CssClass="red" ControlToValidate="txtPTCN" Display="Dynamic"
                                                ErrorMessage="Please enter Type of Language Settings Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox37" Enabled="false" MaxLength="100">
                                                Load Name</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPCN" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator32"
                                                CssClass="red" ControlToValidate="txtPCN" Display="Dynamic"
                                                ErrorMessage="Please enter Cargo Name Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox39" Enabled="false" MaxLength="100">
                                                Load Description</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPCD" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator33"
                                                CssClass="red" ControlToValidate="txtPCD" Display="Dynamic"
                                                ErrorMessage="Please enter Cargo Details Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox38" Enabled="false" MaxLength="100">
                                                Vehicle Registration No</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPVRN" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator51"
                                                CssClass="red" ControlToValidate="txtPVRN" Display="Dynamic"
                                                ErrorMessage="Please enter Vehicle Registration No Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox40" Enabled="false" MaxLength="100">
                                                Trailer Registration No</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPTRN" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator52"
                                                CssClass="red" ControlToValidate="txtPTRN" Display="Dynamic"
                                                ErrorMessage="Please enter Trailer Registration No Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox41" Enabled="false" MaxLength="100">
                                                Axle Configuration</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPAC" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator34"
                                                CssClass="red" ControlToValidate="txtPAC" Display="Dynamic"
                                                ErrorMessage="Please enter Axle Configuration Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox43" Enabled="false" MaxLength="100">
                                                Weight of Axles</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPWA" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator35"
                                                CssClass="red" ControlToValidate="txtPWA" Display="Dynamic"
                                                ErrorMessage="Please enter Weight of Axles Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox45" Enabled="false" MaxLength="100">
                                                Total Weight</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPTW" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator36"
                                                CssClass="red" ControlToValidate="txtPTW" Display="Dynamic"
                                                ErrorMessage="Please enter Total Weight Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox47" Enabled="false" MaxLength="100">
                                                Permit Expired Date</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPADT" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator37"
                                                CssClass="red" ControlToValidate="txtPADT" Display="Dynamic"
                                                ErrorMessage="Please enter Application Date and Time Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox49" Enabled="false" MaxLength="100">
                                                Journey Date</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPJD" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator38"
                                                CssClass="red" ControlToValidate="txtPJD" Display="Dynamic"
                                                ErrorMessage="Please enter Journey Date Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox158" Enabled="false" MaxLength="100">
                                                Application Date & Time</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtADT" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator161"
                                                CssClass="red" ControlToValidate="txtADT" Display="Dynamic"
                                                ErrorMessage="Please enter Date Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox159" Enabled="false" MaxLength="100">
                                                Document</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtDoc" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator162"
                                                CssClass="red" ControlToValidate="txtDoc" Display="Dynamic"
                                                ErrorMessage="Please enter Document Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox160" Enabled="false" MaxLength="100">
                                                Mass Document</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtMDoc" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator163"
                                                CssClass="red" ControlToValidate="txtMDoc" Display="Dynamic"
                                                ErrorMessage="Please enter Document Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox161" Enabled="false" MaxLength="100">
                                                Registration No</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtReg1" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator164"
                                                CssClass="red" ControlToValidate="txtReg" Display="Dynamic"
                                                ErrorMessage="Please enter Registration Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox51" Enabled="false" MaxLength="100">
                                                Height (M)</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPH" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator39"
                                                CssClass="red" ControlToValidate="txtPH" Display="Dynamic"
                                                ErrorMessage="Please enter height Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox53" Enabled="false" MaxLength="100">
                                                Width (M)</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPW" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator40"
                                                CssClass="red" ControlToValidate="txtPW" Display="Dynamic"
                                                ErrorMessage="Please enter width Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox55" Enabled="false" MaxLength="100">
                                                Length (M)</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPL" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator41"
                                                CssClass="red" ControlToValidate="txtPL" Display="Dynamic"
                                                ErrorMessage="Please enter length Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox57" Enabled="false" MaxLength="100">
                                                Number of Police</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPNOP" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator42"
                                                CssClass="red" ControlToValidate="txtPNOP" Display="Dynamic"
                                                ErrorMessage="Please enter Number of Police Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox14" Enabled="false" MaxLength="100">
                                                Number of Vehicles</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPNOV" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator45"
                                                CssClass="red" ControlToValidate="txtPNOV" Display="Dynamic"
                                                ErrorMessage="Please enter Number of Vehicles Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox22" Enabled="false" MaxLength="100">
                                                Enter Below Code</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPCaptcha" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator46"
                                                CssClass="red" ControlToValidate="txtPCaptcha" Display="Dynamic"
                                                ErrorMessage="Please enter Number of Enter Below Code Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox30" Enabled="false" MaxLength="100">
                                                Route</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPRoute" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator47"
                                                CssClass="red" ControlToValidate="txtPRoute" Display="Dynamic"
                                                ErrorMessage="Please enter Route Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox32" Enabled="false" MaxLength="100">
                                                From</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPFrom" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator48"
                                                CssClass="red" ControlToValidate="txtPFrom" Display="Dynamic"
                                                ErrorMessage="Please enter from Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox34" Enabled="false" MaxLength="100">
                                                To</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPTo" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator49"
                                                CssClass="red" ControlToValidate="txtPTo" Display="Dynamic"
                                                ErrorMessage="Please enter to Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox36" Enabled="false" MaxLength="100">
                                                Via</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPVia" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator50"
                                                CssClass="red" ControlToValidate="txtPVia" Display="Dynamic"
                                                ErrorMessage="Please enter via Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox42" Enabled="false" MaxLength="100">
                                                Escort Vehicle</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPEV" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator53"
                                                CssClass="red" ControlToValidate="txtPEV" Display="Dynamic"
                                                ErrorMessage="Please enter Escort Vehicle Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox44" Enabled="false" MaxLength="100">
                                                Escort Vehicle Type</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPEVT" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator54"
                                                CssClass="red" ControlToValidate="txtPEVT" Display="Dynamic"
                                                ErrorMessage="Please enter Escort Vehicle Type Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox46" Enabled="false" MaxLength="100">
                                                Vehicle Registration No</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPVRNO" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator55"
                                                CssClass="red" ControlToValidate="txtPVRNO" Display="Dynamic"
                                                ErrorMessage="Please enter Vehicle Registration No Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox48" Enabled="false" MaxLength="100">
                                                Attachments</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPAttach" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator56"
                                                CssClass="red" ControlToValidate="txtPAttach" Display="Dynamic"
                                                ErrorMessage="Please enter Attachments Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtHRC123" Enabled="false" MaxLength="100">
                                                Horse registration card</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtHRC" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator124"
                                                CssClass="red" ControlToValidate="txtHRC" Display="Dynamic"
                                                ErrorMessage="Please enter Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox112" Enabled="false" MaxLength="100">
                                                Trailer registration card</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtTRC" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator125"
                                                CssClass="red" ControlToValidate="txtTRC" Display="Dynamic"
                                                ErrorMessage="Please enter Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox116" Enabled="false" MaxLength="100">
                                                Hiring Agreement</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtHA" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator126"
                                                CssClass="red" ControlToValidate="txtHA" Display="Dynamic"
                                                ErrorMessage="Please enter Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox50" Enabled="false" MaxLength="100">
                                                Cargo Images & Drawings</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPCID" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator57"
                                                CssClass="red" ControlToValidate="txtPCID" Display="Dynamic"
                                                ErrorMessage="Please enter Cargo Images & Drawings Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox52" Enabled="false" MaxLength="100">
                                                Weigh Ticket from TANROADS</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPWTA" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator58"
                                                CssClass="red" ControlToValidate="txtPWTA" Display="Dynamic"
                                                ErrorMessage="Please enter Weigh Ticket from TANROADS Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox54" Enabled="false" MaxLength="100">
                                                Confirmation Letter from Police</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPCLP" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator59"
                                                CssClass="red" ControlToValidate="txtPCLP" Display="Dynamic"
                                                ErrorMessage="Please enter Confirmation Letter from Police Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox56" Enabled="false" MaxLength="100">
                                                Confirmation Letter from TANESCO</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPCLT" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator60"
                                                CssClass="red" ControlToValidate="txtPCLT" Display="Dynamic"
                                                ErrorMessage="Please enter Confirmation Letter from TANESCO Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox58" Enabled="false" MaxLength="100">
                                                Route Survey</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPRS" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator61"
                                                CssClass="red" ControlToValidate="txtPRS" Display="Dynamic"
                                                ErrorMessage="Please enter Route Survey Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox63" Enabled="false" MaxLength="100">
                                                Advertisement</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPAdvg" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator62"
                                                CssClass="red" ControlToValidate="txtPAdvg" Display="Dynamic"
                                                ErrorMessage="Please enter Route Survey Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox64" Enabled="false" MaxLength="100">
                                                Document from MOWTC (Works)</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtMOWTC" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator63"
                                                CssClass="red" ControlToValidate="txtMOWTC" Display="Dynamic"
                                                ErrorMessage="Please enter Document from MOWTC (Works) Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox65" Enabled="false" MaxLength="100">
                                                Travel Schedule</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPTS" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator64"
                                                CssClass="red" ControlToValidate="txtPTS" Display="Dynamic"
                                                ErrorMessage="Please enter Travel Schedule Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox66" Enabled="false" MaxLength="100">
                                                Permit Fee & Surcharge Details</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPFSD" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator65"
                                                CssClass="red" ControlToValidate="txtPFSD" Display="Dynamic"
                                                ErrorMessage="Please enter Permit Fee & Surcharge Details Label">
                                            </asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox67" Enabled="false" MaxLength="100">
                                                Comments</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPComments" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator66"
                                                CssClass="red" ControlToValidate="txtPComments" Display="Dynamic"
                                                ErrorMessage="Please enter comments Label"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Button</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox59" Enabled="false" MaxLength="100">
                                                Submit</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPSubmit" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator43"
                                                CssClass="red" ControlToValidate="txtPSubmit" Display="Dynamic"
                                                ErrorMessage="Please enter submit button"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Button</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox61" Enabled="false" MaxLength="100">
                                                Cancel</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPCancel" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator44"
                                                CssClass="red" ControlToValidate="txtPCancel" Display="Dynamic"
                                                ErrorMessage="Please enter Cancel button"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 20px;"></td>
                                    </tr>
                                </table>
                                <table style="width: 100%;">


                                    <tr>
                                        <td style="width: 98%; text-align: right;">
                                            <asp:Button ID="btnASubmit" runat="server" Text="Create"
                                                OnClick="btnASubmit_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnAUpdate" runat="server" Text="Update"
                                                OnClick="btnAUpdate_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnADelete" runat="server" Visible="false"
                                                CausesValidation="false"
                                                OnClientClick="return confirm('Are you sure want to delete smtp settings?');"
                                                Text="Delete" OnClick="btnDelete_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button runat="server" ID="btnACancel" CausesValidation="false"
                                                Text="Cancel" OnClick="btnCancel_Click" />
                                        </td>
                                        <td style="width: 2%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                                    </tr>


                                </table>
                            </fieldset>
                            <fieldset runat="server" id="fsMenu" visible="false">
                                <legend>
                                    <label class="hd1">Language Settings</label>
                                </legend>
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 2%;"></td>
                                        <td style="width: 96%;">

                                        </td>
                                        <td style="width: 2%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                                    </tr>
                                </table>

                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label><b>Controls:</b></label>
                                        </td>
                                        <td style="width: 30%;">
                                            <label><b>English:</b></label>
                                        </td>
                                        <td style="width: 30%;">
                                            <label><b>Swahili:</b></label>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 20px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Menu</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox60" Enabled="false" MaxLength="100">
                                                Dashboard</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtMDash" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator67"
                                                CssClass="red" ControlToValidate="txtMDash" Display="Dynamic"
                                                ErrorMessage="Please enter menu name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Menu</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox68" Enabled="false" MaxLength="100">
                                                Inbox</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtMInbox" MaxLength="500"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator68"
                                                CssClass="red" ControlToValidate="txtMInbox" Display="Dynamic"
                                                ErrorMessage="Please enter menu name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Menu</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox70" Enabled="false" MaxLength="100">
                                                Apply Permit</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtMAP" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator69"
                                                CssClass="red" ControlToValidate="txtMAP" Display="Dynamic"
                                                ErrorMessage="Please enter menu name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Menu</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox72" Enabled="false" MaxLength="100">
                                                Udate Applications</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtMUA" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator70"
                                                CssClass="red" ControlToValidate="txtMUA" Display="Dynamic"
                                                ErrorMessage="Please enter menu name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Menu</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox74" Enabled="false" MaxLength="100">
                                                View Personal Data</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtMVPD" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator71"
                                                CssClass="red" ControlToValidate="txtMVPD" Display="Dynamic"
                                                ErrorMessage="Please enter menu name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Menu</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox76" Enabled="false" MaxLength="100">
                                                Archive</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtMArch" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator72"
                                                CssClass="red" ControlToValidate="txtMArch" Display="Dynamic"
                                                ErrorMessage="Please enter menu name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Menu</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox78" Enabled="false" MaxLength="100">
                                                Templates</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtMTemp" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator73"
                                                CssClass="red" ControlToValidate="txtMTemp" Display="Dynamic"
                                                ErrorMessage="Please enter menu name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Menu</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox62" Enabled="false" MaxLength="100">
                                                Change Password</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtMCP" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator74"
                                                CssClass="red" ControlToValidate="txtMCP" Display="Dynamic"
                                                ErrorMessage="Please enter menu name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                </table>
                                <table style="width: 100%;">


                                    <tr>
                                        <td style="width: 98%; text-align: right;">
                                            <asp:Button ID="btnMSubmit" runat="server" Text="Create"
                                                OnClick="btnMSubmit_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnMUpdate" runat="server" Text="Update"
                                                OnClick="btnMUpdate_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnMDelete" runat="server" Visible="false"
                                                CausesValidation="false"
                                                OnClientClick="return confirm('Are you sure want to delete smtp settings?');"
                                                Text="Delete" OnClick="btnDelete_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button runat="server" ID="btnMCancel" CausesValidation="false"
                                                Text="Cancel" OnClick="btnMCancel_Click" />
                                        </td>
                                        <td style="width: 2%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                                    </tr>


                                </table>
                            </fieldset>
                            </fieldset>
                            <fieldset runat="server" id="fsOthers" visible="false">
                                <legend>
                                    <label class="hd1">Language Settings</label>
                                </legend>
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 2%;"></td>
                                        <td style="width: 96%;">

                                        </td>
                                        <td style="width: 2%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                                    </tr>
                                </table>

                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label><b>Controls:</b></label>
                                        </td>
                                        <td style="width: 30%;">
                                            <label><b>English:</b></label>
                                        </td>
                                        <td style="width: 30%;">
                                            <label><b>Swahili:</b></label>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 20px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox69" Enabled="false" MaxLength="100">
                                                Welcome</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtWel" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator75"
                                                CssClass="red" ControlToValidate="txtWel" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox73" Enabled="false" MaxLength="100">
                                                Login Time</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtLogin" MaxLength="500"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator76"
                                                CssClass="red" ControlToValidate="txtLogin" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox77" Enabled="false" MaxLength="100">
                                                Logout</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtLogout" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator77"
                                                CssClass="red" ControlToValidate="txtLogout" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox80" Enabled="false" MaxLength="100">
                                                No Comments Exists</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtCExists" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator78"
                                                CssClass="red" ControlToValidate="txtCExists" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox82" Enabled="false" MaxLength="100">
                                                Download Letter from Police</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPolice" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator79"
                                                CssClass="red" ControlToValidate="txtPolice" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox84" Enabled="false" MaxLength="100">
                                                Download Letter from TANESCO</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtTanesco" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator80"
                                                CssClass="red" ControlToValidate="txtTanesco" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox75" Enabled="false" MaxLength="100">
                                                Pay Permit Fee</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPFee" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator82"
                                                CssClass="red" ControlToValidate="txtPFee" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox71" Enabled="false" MaxLength="100">
                                                Download Invoice</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtDInvoice" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator81"
                                                CssClass="red" ControlToValidate="txtDInvoice" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox79" Enabled="false" MaxLength="100">
                                                Download Receipt</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtDReceipt" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator83"
                                                CssClass="red" ControlToValidate="txtDReceipt" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox81" Enabled="false" MaxLength="100">
                                                Download Permit</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtDPermit" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator84"
                                                CssClass="red" ControlToValidate="txtDPermit" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                </table>
                                <table style="width: 100%;">


                                    <tr>
                                        <td style="width: 98%; text-align: right;">
                                            <asp:Button ID="btnOTSubmit" runat="server" Text="Create"
                                                OnClick="btnOTSubmit_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnOTUpdate" runat="server" Text="Update"
                                                OnClick="btnOTUpdate_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="Button4" runat="server" Visible="false"
                                                CausesValidation="false"
                                                OnClientClick="return confirm('Are you sure want to delete smtp settings?');"
                                                Text="Delete" OnClick="btnDelete_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button runat="server" ID="btnOTCancel" CausesValidation="false"
                                                Text="Cancel" OnClick="btnOTCancel_Click" />
                                        </td>
                                        <td style="width: 2%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                                    </tr>


                                </table>
                            </fieldset>
                            <fieldset runat="server" id="fsFees" visible="false">
                                <legend>
                                    <label class="hd1">Language Settings</label>
                                </legend>
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 2%;"></td>
                                        <td style="width: 96%;">

                                        </td>
                                        <td style="width: 2%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                                    </tr>
                                </table>

                                <table style="width: 100%;">
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label><b>Controls:</b></label>
                                        </td>
                                        <td style="width: 30%;">
                                            <label><b>English:</b></label>
                                        </td>
                                        <td style="width: 30%;">
                                            <label><b>Swahili:</b></label>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 20px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox83" Enabled="false" MaxLength="100">
                                                Axle</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtAxle" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator85"
                                                CssClass="red" ControlToValidate="txtAxle" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox86" Enabled="false" MaxLength="100">
                                                Actual Weight KG</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtAWK" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator86"
                                                CssClass="red" ControlToValidate="txtAWK" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox88" Enabled="false" MaxLength="100">
                                                Allowed Weight KG</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtALWK" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator87"
                                                CssClass="red" ControlToValidate="txtALWK" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox90" Enabled="false" MaxLength="100">
                                                Over Weight KG</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtOWK" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator88"
                                                CssClass="red" ControlToValidate="txtOWK" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox92" Enabled="false" MaxLength="100">
                                                Fees</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtFees" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator89"
                                                CssClass="red" ControlToValidate="txtFees" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox94" Enabled="false" MaxLength="100">
                                                Axle Surcharge</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtAS" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator90"
                                                CssClass="red" ControlToValidate="txtAS" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox96" Enabled="false" MaxLength="100">
                                                Axle Configuration</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtAConfig" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator91"
                                                CssClass="red" ControlToValidate="txtAConfig" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox98" Enabled="false" MaxLength="100">
                                                Actual GVM KG</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtAGK" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator92"
                                                CssClass="red" ControlToValidate="txtAGK" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox100" Enabled="false" MaxLength="100">
                                                Allowed GVM KG</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtALGK" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator93"
                                                CssClass="red" ControlToValidate="txtALGK" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox102" Enabled="false" MaxLength="100">
                                                GVM Surcharge</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtGVMS" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator94"
                                                CssClass="red" ControlToValidate="txtGVMS" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox85" Enabled="false" MaxLength="100">
                                                Permit Fee</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtPerFee" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator95"
                                                CssClass="red" ControlToValidate="txtPerFee" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox87" Enabled="false" MaxLength="100">
                                                Surcharge Fee</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtSurFee" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator96"
                                                CssClass="red" ControlToValidate="txtSurFee" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox89" Enabled="false" MaxLength="100">
                                                Total Permit Fee</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtTPerFee" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator97"
                                                CssClass="red" ControlToValidate="txtTPerFee" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox104" Enabled="false" MaxLength="100">
                                                Total Fee</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtTF" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator105"
                                                CssClass="red" ControlToValidate="txtTF" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox91" Enabled="false" MaxLength="100">
                                                Surcharges</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtSurcharges" MaxLength="100">
                                            </asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator98"
                                                CssClass="red" ControlToValidate="txtSurcharges" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 10%;"></td>
                                        <td style="width: 20%;">
                                            <label>Label</label>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="TextBox108" Enabled="false" MaxLength="100">
                                                ABNORMAL LOAD PERMIT SYSTEM</asp:TextBox>
                                        </td>
                                        <td style="width: 30%;">
                                            <asp:TextBox runat="server" ID="txtALPS" MaxLength="100"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator109"
                                                CssClass="red" ControlToValidate="txtALPS" Display="Dynamic"
                                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                        </td>
                                        <td style="width: 10%;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                                    </tr <tr>
                                    <td style="width: 10%;"></td>
                                    <td style="width: 20%;">
                                        <label>Label</label>
                                    </td>
                                    <td style="width: 30%;">
                                        <asp:TextBox runat="server" ID="txtPayFee123" Enabled="false" MaxLength="100">
                                            Pay Permit Fee</asp:TextBox>
                                    </td>
                                    <td style="width: 30%;">
                                        <asp:TextBox runat="server" ID="txtPayFee" MaxLength="100"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator110"
                                            CssClass="red" ControlToValidate="txtPayFee" Display="Dynamic"
                                            ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                                    </td>
                                    <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                    </tr>

                    <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 20%;">
                            <label>Label</label>
                        </td>
                        <td style="width: 30%;">
                            <asp:TextBox runat="server" ID="TextBox105" Enabled="false" MaxLength="100">Commented By
                            </asp:TextBox>
                        </td>
                        <td style="width: 30%;">
                            <asp:TextBox runat="server" ID="txtCBy" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator106" CssClass="red"
                                ControlToValidate="txtCBy" Display="Dynamic" ErrorMessage="Please enter label name">
                            </asp:RequiredFieldValidator>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 20%;">
                            <label>Label</label>
                        </td>
                        <td style="width: 30%;">
                            <asp:TextBox runat="server" ID="TextBox106" Enabled="false" MaxLength="100">Commented Date
                            </asp:TextBox>
                        </td>
                        <td style="width: 30%;">
                            <asp:TextBox runat="server" ID="txtCDate" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator107" CssClass="red"
                                ControlToValidate="txtCDate" Display="Dynamic" ErrorMessage="Please enter label name">
                            </asp:RequiredFieldValidator>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 20%;">
                            <label>Label</label>
                        </td>
                        <td style="width: 30%;">
                            <asp:TextBox runat="server" ID="TextBox107" Enabled="false" MaxLength="100">Comment
                            </asp:TextBox>
                        </td>
                        <td style="width: 30%;">
                            <asp:TextBox runat="server" ID="txtCMT" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator108" CssClass="red"
                                ControlToValidate="txtCMT" Display="Dynamic" ErrorMessage="Please enter label name">
                            </asp:RequiredFieldValidator>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 20%;">
                            <label>Label</label>
                        </td>
                        <td style="width: 30%;">
                            <asp:TextBox runat="server" ID="TextBox93" Enabled="false" MaxLength="100">Mean
                            </asp:TextBox>
                        </td>
                        <td style="width: 30%;">
                            <asp:TextBox runat="server" ID="txtMean" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator99" CssClass="red"
                                ControlToValidate="txtMean" Display="Dynamic" ErrorMessage="Please enter label name">
                            </asp:RequiredFieldValidator>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 20%;">
                            <label>Label</label>
                        </td>
                        <td style="width: 30%;">
                            <asp:TextBox runat="server" ID="TextBox95" Enabled="false" MaxLength="100"> Spot Buying
                            </asp:TextBox>
                        </td>
                        <td style="width: 30%;">
                            <asp:TextBox runat="server" ID="txtSBuying" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator100" CssClass="red"
                                ControlToValidate="txtSBuying" Display="Dynamic" ErrorMessage="Please enter label name">
                            </asp:RequiredFieldValidator>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 20%;">
                            <label>Label</label>
                        </td>
                        <td style="width: 30%;">
                            <asp:TextBox runat="server" ID="TextBox97" Enabled="false" MaxLength="100"> Spot Selling
                            </asp:TextBox>
                        </td>
                        <td style="width: 30%;">
                            <asp:TextBox runat="server" ID="txtSSelling" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator101" CssClass="red"
                                ControlToValidate="txtSSelling" Display="Dynamic"
                                ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 20%;">
                            <label>Label</label>
                        </td>
                        <td style="width: 30%;">
                            <asp:TextBox runat="server" ID="TextBox99" Enabled="false" MaxLength="100">Your Reference No
                            </asp:TextBox>
                        </td>
                        <td style="width: 30%;">
                            <asp:TextBox runat="server" ID="txtRefNo" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator102" CssClass="red"
                                ControlToValidate="txtRefNo" Display="Dynamic" ErrorMessage="Please enter label name">
                            </asp:RequiredFieldValidator>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 20%;">
                            <label>Label</label>
                        </td>
                        <td style="width: 30%;">
                            <asp:TextBox runat="server" ID="TextBox101" Enabled="false" MaxLength="100">One
                            </asp:TextBox>
                        </td>
                        <td style="width: 30%;">
                            <asp:TextBox runat="server" ID="txtOne" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator103" CssClass="red"
                                ControlToValidate="txtOne" Display="Dynamic" ErrorMessage="Please enter label name">
                            </asp:RequiredFieldValidator>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 20%;">
                            <label>Label</label>
                        </td>
                        <td style="width: 30%;">
                            <asp:TextBox runat="server" ID="TextBox103" Enabled="false" MaxLength="100">as on
                            </asp:TextBox>
                        </td>
                        <td style="width: 30%;">
                            <asp:TextBox runat="server" ID="txtAsOn" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator104" CssClass="red"
                                ControlToValidate="txtAsOn" Display="Dynamic" ErrorMessage="Please enter label name">
                            </asp:RequiredFieldValidator>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="5" style="width: 100%; height: 10px;"></td>
                    </tr>
                </table>
                <table style="width: 100%;">


                    <tr>
                        <td style="width: 98%; text-align: right;">
                            <asp:Button ID="btnFSubmit" runat="server" Text="Create" OnClick="btnFSubmit_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnFUpdate" runat="server" Text="Update" OnClick="btnFUpdate_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button5" runat="server" Visible="false" CausesValidation="false"
                                OnClientClick="return confirm('Are you sure want to delete smtp settings?');"
                                Text="Delete" OnClick="btnDelete_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button runat="server" ID="btnFCancel" CausesValidation="false" Text="Cancel"
                                OnClick="btnFCancel_Click" />
                        </td>
                        <td style="width: 2%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                    </tr>


                </table>
                </fieldset>
                <fieldset runat="server" id="fsTravel" visible="false">
                    <legend>
                        <label class="hd1">Language Settings</label>
                    </legend>
                    <table style="width: 100%;">
                        <tr>
                            <td style="width: 2%;"></td>
                            <td style="width: 96%;">

                            </td>
                            <td style="width: 2%;"></td>
                        </tr>
                        <tr>
                            <td colspan="3" style="width: 100%; height: 20px;"></td>
                        </tr>
                    </table>

                    <table style="width: 100%;">
                        <tr>
                            <td style="width: 10%;"></td>
                            <td style="width: 20%;">
                                <label><b>Controls:</b></label>
                            </td>
                            <td style="width: 30%;">
                                <label><b>English:</b></label>
                            </td>
                            <td style="width: 30%;">
                                <label><b>Swahili:</b></label>
                            </td>
                            <td style="width: 10%;"></td>
                        </tr>
                        <tr>
                            <td colspan="5" style="width: 100%; height: 20px;"></td>
                        </tr>
                        <tr>
                            <td style="width: 10%;"></td>
                            <td style="width: 20%;">
                                <label>Label</label>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="TextBox110" Enabled="false" MaxLength="100">Travel
                                    Schedule</asp:TextBox>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="txtTS" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator123" CssClass="red"
                                    ControlToValidate="txtTS" Display="Dynamic" ErrorMessage="Please enter label name">
                                </asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 10%;"></td>
                        </tr>
                        <tr>
                            <td colspan="5" style="width: 100%; height: 10px;"></td>
                        </tr>
                        <tr>
                            <td style="width: 10%;"></td>
                            <td style="width: 20%;">
                                <label>Label</label>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="TextBox109" Enabled="false" MaxLength="100">Application
                                    No</asp:TextBox>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="txtTAppNo" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator111" CssClass="red"
                                    ControlToValidate="txtTAppNo" Display="Dynamic"
                                    ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 10%;"></td>
                        </tr>
                        <tr>
                            <td colspan="5" style="width: 100%; height: 10px;"></td>
                        </tr>
                        <tr>
                            <td style="width: 10%;"></td>
                            <td style="width: 20%;">
                                <label>Label</label>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="TextBox111" Enabled="false" MaxLength="100">Travel Date
                                </asp:TextBox>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="txtTDate" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator112" CssClass="red"
                                    ControlToValidate="txtTDate" Display="Dynamic"
                                    ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 10%;"></td>
                        </tr>
                        <tr>
                            <td colspan="5" style="width: 100%; height: 10px;"></td>
                        </tr>
                        <tr>
                            <td style="width: 10%;"></td>
                            <td style="width: 20%;">
                                <label>Label</label>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="TextBox113" Enabled="false" MaxLength="100">Travel From
                                </asp:TextBox>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="txtTFrom" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator113" CssClass="red"
                                    ControlToValidate="txtTFrom" Display="Dynamic"
                                    ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 10%;"></td>
                        </tr>
                        <tr>
                            <td colspan="5" style="width: 100%; height: 10px;"></td>
                        </tr>
                        <tr>
                            <td style="width: 10%;"></td>
                            <td style="width: 20%;">
                                <label>Label</label>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="TextBox115" Enabled="false" MaxLength="100">Travel To
                                </asp:TextBox>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="txtTTo" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator114" CssClass="red"
                                    ControlToValidate="txtTTo" Display="Dynamic" ErrorMessage="Please enter label name">
                                </asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 10%;"></td>
                        </tr>
                        <tr>
                            <td colspan="5" style="width: 100%; height: 10px;"></td>
                        </tr>
                        <tr>
                            <td style="width: 10%;"></td>
                            <td style="width: 20%;">
                                <label>Label</label>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="TextBox117" Enabled="false" MaxLength="100">Travel Time
                                    From</asp:TextBox>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="txtTTFrom" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator115" CssClass="red"
                                    ControlToValidate="txtTTFrom" Display="Dynamic"
                                    ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 10%;"></td>
                        </tr>
                        <tr>
                            <td colspan="5" style="width: 100%; height: 10px;"></td>
                        </tr>
                        <tr>
                            <td style="width: 10%;"></td>
                            <td style="width: 20%;">
                                <label>Label</label>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="TextBox119" Enabled="false" MaxLength="100">Travel Time
                                    To</asp:TextBox>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="txtTTTo" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator116" CssClass="red"
                                    ControlToValidate="txtTTTo" Display="Dynamic"
                                    ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 10%;"></td>
                        </tr>
                        <tr>
                            <td colspan="5" style="width: 100%; height: 10px;"></td>
                        </tr>
                        <tr>
                            <td style="width: 10%;"></td>
                            <td style="width: 20%;">
                                <label>Label</label>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="TextBox121" Enabled="false" MaxLength="100">Distance KM
                                </asp:TextBox>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="txtDistance" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator117" CssClass="red"
                                    ControlToValidate="txtDistance" Display="Dynamic"
                                    ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 10%;"></td>
                        </tr>
                        <tr>
                            <td colspan="5" style="width: 100%; height: 10px;"></td>
                        </tr>
                        <tr>
                            <td style="width: 10%;"></td>
                            <td style="width: 20%;">
                                <label>Label</label>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="TextBox123" Enabled="false" MaxLength="100">Parking
                                    Place</asp:TextBox>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="txtParking" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator118" CssClass="red"
                                    ControlToValidate="txtParking" Display="Dynamic"
                                    ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 10%;"></td>
                        </tr>
                        <tr>
                            <td colspan="5" style="width: 100%; height: 10px;"></td>
                        </tr>
                        <tr>
                            <td style="width: 10%;"></td>
                            <td style="width: 20%;">
                                <label>Label</label>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="TextBox125" Enabled="false" MaxLength="100">Create
                                </asp:TextBox>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="txtTCreate" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator119" CssClass="red"
                                    ControlToValidate="txtTCreate" Display="Dynamic"
                                    ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 10%;"></td>
                        </tr>
                        <tr>
                            <td colspan="5" style="width: 100%; height: 10px;"></td>
                        </tr>
                        <tr>
                            <td style="width: 10%;"></td>
                            <td style="width: 20%;">
                                <label>Label</label>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="TextBox127" Enabled="false" MaxLength="100">Update
                                </asp:TextBox>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="txtTUpdate" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator120" CssClass="red"
                                    ControlToValidate="txtTUpdate" Display="Dynamic"
                                    ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 10%;"></td>
                        </tr>
                        <tr>
                            <td colspan="5" style="width: 100%; height: 10px;"></td>
                        </tr>
                        <tr>
                            <td style="width: 10%;"></td>
                            <td style="width: 20%;">
                                <label>Label</label>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="TextBox129" Enabled="false" MaxLength="100">Delete
                                </asp:TextBox>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="txtTDelete" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator121" CssClass="red"
                                    ControlToValidate="txtTDelete" Display="Dynamic"
                                    ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 10%;"></td>
                        </tr>
                        <tr>
                            <td colspan="5" style="width: 100%; height: 10px;"></td>
                        </tr>
                        <tr>
                            <td style="width: 10%;"></td>
                            <td style="width: 20%;">
                                <label>Label</label>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="TextBox131" Enabled="false" MaxLength="100">Cancel
                                </asp:TextBox>
                            </td>
                            <td style="width: 30%;">
                                <asp:TextBox runat="server" ID="txtTCancel" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator122" CssClass="red"
                                    ControlToValidate="txtTCancel" Display="Dynamic"
                                    ErrorMessage="Please enter label name"></asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 10%;"></td>
                        </tr>
                        <tr>
                            <td colspan="5" style="width: 100%; height: 10px;"></td>
                        </tr>

                    </table>
                    <table style="width: 100%;">


                        <tr>
                            <td style="width: 98%; text-align: right;">
                                <asp:Button ID="btnTrSubmit" runat="server" Text="Create" OnClick="btnTrSubmit_Click" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnTrUpdate" runat="server" Text="Update" OnClick="btnTrUpdate_Click" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnTrDelete" runat="server" Visible="false" CausesValidation="false"
                                    OnClientClick="return confirm('Are you sure want to delete smtp settings?');"
                                    Text="Delete" OnClick="btnDelete_Click" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button runat="server" ID="btnTrCancel" CausesValidation="false" Text="Cancel"
                                    OnClick="btnTrCancel_Click" />
                            </td>
                            <td style="width: 2%;"></td>
                        </tr>
                        <tr>
                            <td colspan="3" style="width: 100%; height: 20px;"></td>
                        </tr>


                    </table>
                </fieldset>
                </td>
                <td style="width: 2%;"></td>
                </tr>
                <tr>
                    <td colspan="3" style="width: 100%; height: 20px;"></td>
                </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>