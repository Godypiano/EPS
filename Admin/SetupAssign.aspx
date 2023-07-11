<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetupAssign.aspx.cs" MasterPageFile="~/Default_admin.Master" Inherits="PresentationLayer.Admin.SetupAssign" %>

<%@ MasterType VirtualPath="~/Default_admin.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
                <asp:UpdatePanel ID="upRegister" runat="server">
            <ContentTemplate>
 <!--begin::Toolbar-->
 <div class="toolbar" id="kt_toolbar">
    <div
        class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
        <!--begin::Info-->
        <div
            class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
            <!--begin::Title-->
            <h1 class="text-dark fw-bolder my-1 fs-2">Access Rights
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
                <li class="breadcrumb-item text-dark">Access Rights</li>
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
                            <div class="form-group row mx-0 mb-3 align-items-md-center col-md-10 col-lg-8 col-xl-6">
                                <label class="col-auto ps-0 label-135px">Select Designation:</label>
                                 <asp:DropDownList CssClass="form-control col-md-12" runat="server" ID="ddlDesig" AutoPostBack="true" OnSelectedIndexChanged="ddlDesig_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ID="rfvDesig" CssClass="red" Display="Dynamic" ErrorMessage="Please select designation" ControlToValidate="ddlDesig"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="row">
                            <div class="mx-0 mb-3 col-sm-6 col-md-4 col-xl-4 px-1">
                                <div class="w-100"><b>Flow</b></div>
                                <div class="w-100"><asp:CheckBox class="label-ml-4" runat="server" ID="chkFALE" Text="Forward to ALE" TextAlign="Right" /></div>
                                <div class="w-100"><asp:CheckBox class="label-ml-4" runat="server" ID="chkFADS" Text="Forward to ADS" TextAlign="Right" /></div>
                                <div class="w-100"><asp:CheckBox class="label-ml-4" runat="server" ID="chkFWDE" Text="Forward to Senior Engineer" TextAlign="Right" /></div>
                                <div class="w-100"><asp:CheckBox class="label-ml-4" runat="server" ID="chkFDSE" Text="Forward to DSE" TextAlign="Right" /></div>
                                <div class="w-100"><asp:CheckBox class="label-ml-4" runat="server" ID="chkFDPS" Text="Forward to DPS" TextAlign="Right" /></div>
                                <div class="w-100"><asp:CheckBox class="label-ml-4" runat="server" ID="chkFPS" Text="Forward to PS" TextAlign="Right" /></div>
                                <div class="w-100"><asp:CheckBox class="label-ml-4" runat="server" ID="chkFDM" Text="Fowrard to Deputy Minister" TextAlign="Right" /></div>
                                <div class="w-100"><asp:CheckBox class="label-ml-4" runat="server" ID="chkFM" Text="Forward to Minister" TextAlign="Right" /></div>
                                <div class="w-100"><asp:CheckBox class="label-ml-4" runat="server" ID="chkRALC" Text="Return to ALC" TextAlign="Right" /></div>
                                <div class="w-100"><asp:CheckBox class="label-ml-4" runat="server" ID="chkRALE" Text="Return to ALE" TextAlign="Right" /></div>
                                <div class="w-100"><asp:CheckBox class="label-ml-4" runat="server" ID="chkRADS" Text="Return to ADS" TextAlign="Right" /></div>
                                <div class="w-100"><asp:CheckBox class="label-ml-4" runat="server" ID="chkRETE" Text="Return to Senior Engineer" TextAlign="Right" /></div>
                                <div class="w-100"><asp:CheckBox class="label-ml-4" runat="server" ID="chkRDSE" Text="Return to DSE" TextAlign="Right" /></div>
                                <div class="w-100"><asp:CheckBox class="label-ml-4" runat="server" ID="chkRPS" Text="Return to PS" TextAlign="Right" /></div>
                                <div class="w-100"><asp:CheckBox class="label-ml-4" runat="server" ID="chkRDM" Text="Return to Deputy Minister" TextAlign="Right" /></div>
                                <div class="w-100"><asp:CheckBox class="label-ml-4" runat="server" ID="chkRA" Text="Return to Applicant" TextAlign="Right" /></div>
                                <div class="w-100"><asp:CheckBox class="label-ml-4" runat="server" ID="chkAP" Text="Approve for Payment" TextAlign="Right" /></div>
                                <div class="w-100"><asp:CheckBox class="label-ml-4" runat="server" ID="chkIP" Text="Approve/Issue Permit" TextAlign="Right" /></div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chksms" Text="SMS Settings" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chktuse" Text="Terms of Use" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chklang" Text="Language" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkGrp" Text="Groups" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkWeight" Text="Category by Weight" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkHang" Text="Permitted Overhang" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkNot" Text="Notifications" TextAlign="Right" />
                                </div>
                            </div>
                            <div class="mx-0 mb-3 col-sm-6 col-md-3 col-xl-4 px-1">
                                <div class="w-100">
                                    <b>Menu</b>
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkOutB" Text="Outgoing" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkReports" Text="Reports" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkDR" Text="Dynamic Reports" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkCP" Text="Change Password" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkAT" Text="Audit Trail" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkAU" Text="Assign User" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkTD" Text="Transporter Details" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkAS" Text="Assign Screens" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkArch" Text="Archive" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkAUS" Text="Assign User (Admin)" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkRec" Text="Reconciliation" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkCan" Text="Cancel Invoice" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkResend" Text="Resend Control No." TextAlign="Right" />
                                </div>
                            </div>
                            <div class="mx-0 mb-3 col-md-5 col-xl-4 px-1">
                                <div class="w-100">
                                    <b>Configuration</b>
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkDept" Text="Department" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkUsers" Text="Users" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkCat" Text="Categories" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkVC" Text="Vehicle Configuration Type" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkAC" Text="Axle Configuration" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkOLA" Text="Overloading Fee Schedule for Axles" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkOLGVM" Text="Overloading Fee Schedule for GVM" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkEV" Text="Allowed Escort Vehicle" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkPF" Text="Permit Fee Schedule" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkSurcharge" Text="Penalty Factor" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkPD" Text="Permit Validity Period" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkTH" Text="Height Limitations" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkCargo" Text="Access Rights" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkIValidity" Text="Invoice Validity" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkDesig" Text="Designation" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chketext" Text="Email Text" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chkstext" Text="SMS Text" TextAlign="Right" />
                                </div>
                                <div class="w-100">
                                    <asp:CheckBox class="label-ml-4" runat="server" ID="chksmtp" Text="SMTP Settings" TextAlign="Right" />
                                </div>
                            </div>
                        </div>

                        <div class="form-group mb-3 d-flex justify-content-end">
                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnSubmit" runat="server" Text="Create" OnClick="btnSubmit_Click" />
                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap" runat="server" ID="btnCancel" CausesValidation="false" Text="Cancel" OnClick="btnCancel_Click" />
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
