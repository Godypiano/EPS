﻿<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="ViewComments.aspx.cs"
    MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.ViewComments" %>

    <%@ MasterType VirtualPath="~/Default_custom.master" %>
        <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <script type="text/javascript" language="javascript">
                function Function1(message) {
                    return confirm(message);
                }
                function Function2() {
                    //this.disabled = true;
                    window.document.forms[0].target = '_self';
                }

                function Check() {
                    // Call function1 and save the return value.
                    var success1 = Function1();
                    // Call function2 and save the return value.
                    var success2 = Function2();

                    // Return the logical combination of the two values:
                    // If both are true, return true, otherwise return false.
                    return success1 && success2;
                }
                function myfunction() {
                    return false;
                }

            </script>
            <div>

                <!--begin::Toolbar-->
                <div class="toolbar mb-5" id="kt_toolbar">
                    <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
                        <!--begin::Info-->
                        <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                            <!--begin::Title-->
                            <h1 class="text-dark fw-bolder my-1 fs-2">
                                <!-- <asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label> -->
                                <label class="hd1">View Application Details & Comments: <asp:Label runat="server"
                                        ID="lblapp"></asp:Label></label>
                            </h1>
                            <!--end::Title-->
                            <!--begin::Breadcrumb-->
                            <ul class="breadcrumb fw-bold fs-base my-1">
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                                </li>
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a href="Inbox.aspx" class="text-breadcrumbs text-hover-primary">Inbox</a>
                                </li>
                                <li class="breadcrumb-item text-dark">
                                    <asp:Label runat="server" ID="lblview"></asp:Label>
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

                                        <div class="text-end">
                                            <asp:Label runat="server" ID="lbltpd"></asp:Label>
                                            <asp:Label runat="server" ID="lblter"></asp:Label>
                                            <asp:LinkButton runat="server" ID="lnkTRA" CssClass="navigationbar btn btn-primary btn-sm ms-1 mt-1"
                                                CausesValidation="false" OnClick="lnkTRA_Click"></asp:LinkButton>
                                        </div>

                                        <fieldset>
                                            <h4>
                                                <asp:Label runat="server" ID="lblVC">Vehicle & Cargo Details:
                                                </asp:Label>
                                                <asp:Label runat="server" ID="lblDSE" Visible="false"></asp:Label>
                                            </h4>

                                            <div class="row">
                                                <div class="form-group mx-0 mb-3 col-sm-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblCargo">
                                                        Type of
                                                        Vehicle
                                                        <span class="red">*</span>
                                                    </asp:Label>
                                                    <asp:Label runat="server" ID="lblCtype" Visible="false">
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" Enabled="false"
                                                        ID="lblVN"></asp:TextBox>
                                                </div>
                                                <tr runat="server" id="tr2">
                                                    <td></td>
                                                </tr>
                                                <div class="form-group mx-0 mb-3 col-sm-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="Label1">
                                                        Vehicle
                                                        Lease Type
                                                        <span class="red">*</span>
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" Enabled="false"
                                                        ID="lblVeh"></asp:TextBox>
                                                </div>
                                            </div>
                                        </fieldset>

                                        <fieldset>
                                            <h4 class="mt-3">
                                                <asp:Label runat="server" ID="Label3">Applicant Details:</asp:Label>
                                            </h4>

                                            <div id="applicant_details" class="row">
                                                <div class="form-group mx-0 mb-3 col-sm-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="Label4">Name
                                                        of
                                                        Applicant
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtOApp"
                                                        MaxLength="200" Enabled="false">
                                                    </asp:TextBox>
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblHApp"
                                                        Visible="false">Name of Haulier</asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtHApp"
                                                        Visible="false" Enabled="false" MaxLength="200"></asp:TextBox>
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="Label6">
                                                        Street
                                                        Number
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtOSt"
                                                        MaxLength="200" Enabled="false">
                                                    </asp:TextBox><br />
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblHSt"
                                                        Visible="false">
                                                        Street Number</asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtHSt"
                                                        Visible="false" Enabled="false" MaxLength="200"></asp:TextBox>
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="Label8">City
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtOCity"
                                                        MaxLength="200" Enabled="false">
                                                    </asp:TextBox><br />
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblHCity"
                                                        Visible="false">
                                                        City</asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtHCity"
                                                        Visible="false" Enabled="false" MaxLength="200"></asp:TextBox>
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="Label10">Zip
                                                        /
                                                        Postal Code
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtOZip"
                                                        MaxLength="200" Enabled="false">
                                                    </asp:TextBox>
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblHZip"
                                                        Visible="false">Zip
                                                        / Postal Code</asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtHZip"
                                                        Visible="false" Enabled="false" MaxLength="200"></asp:TextBox>
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="Label12">
                                                        Country
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtOCou"
                                                        MaxLength="200" Enabled="false">
                                                    </asp:TextBox><br />
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblHCou"
                                                        Visible="false">
                                                        Country</asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtHCou"
                                                        Visible="false" Enabled="false" MaxLength="200"></asp:TextBox>
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="Label14">
                                                        Telephone
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtOTel"
                                                        MaxLength="200" Enabled="false">
                                                    </asp:TextBox><br />
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblHTel"
                                                        Visible="false">
                                                        Telephone</asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtHTel"
                                                        Visible="false" Enabled="false" MaxLength="200"></asp:TextBox>
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="Label16">Fax
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtOFax"
                                                        MaxLength="200" Enabled="false">
                                                    </asp:TextBox><br />
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblHFax"
                                                        Visible="false">Fax
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtHFax"
                                                        Visible="false" Enabled="false" MaxLength="200"></asp:TextBox>
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="Label18">
                                                        Email
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtOEmail"
                                                        MaxLength="200" Enabled="false">
                                                    </asp:TextBox><br />
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblHEmail"
                                                        Visible="false">
                                                        Email</asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtHEmail"
                                                        Visible="false" Enabled="false" MaxLength="200"></asp:TextBox>
                                                </div>
                                            </div>
                                        </fieldset>

                                        <fieldset>
                                            <h4 class="mt-3">
                                                <asp:Label runat="server" ID="Label20">Journey:</asp:Label>
                                            </h4>

                                            <div class="row">
                                                <div class="form-group mx-0 mb-3 col-sm-4">
                                                    <asp:Label CssClass="col-auto ps-0">
                                                        Application Date and
                                                        Time</asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" Enabled="false"
                                                        ID="lblADate">
                                                    </asp:TextBox>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-4">
                                                    <asp:Label CssClass="col-auto ps-0">
                                                        Journey
                                                        Date
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" Enabled="false"
                                                        ID="lblJDate">
                                                    </asp:TextBox>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-4">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="Label23">
                                                        Permit
                                                        Expired Date
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtTo1"
                                                        MaxLength="100" Enabled="false">
                                                    </asp:TextBox>
                                                </div>
                                            </div>

                                        </fieldset>

                                        <fieldset>
                                            <h4 class="mt-3">
                                                <asp:Label runat="server" ID="Label24">Transport Information:
                                                </asp:Label>
                                            </h4>

                                            <div class="table-responsive mb-4">
                                                <table
                                                    class="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1">
                                                    <thead
                                                        class="HeaderDatagrid fw-bold fs-6 text-gray-800 border-bottom border-gray-200">
                                                        <tr>
                                                            <th></th>
                                                            <th>
                                                                <asp:Label runat="server" ID="Label26">Unladen Vehicle
                                                                    <span class="red">*</span>
                                                                </asp:Label>
                                                            </th>
                                                            <th>
                                                                <asp:Label runat="server" ID="Label27">Load
                                                                    <span class="red">*</span>
                                                                </asp:Label>
                                                            </th>
                                                            <th>
                                                                <asp:Label runat="server" ID="Label25">Laden Vehicle
                                                                    <span class="red">*</span>
                                                                </asp:Label>
                                                            </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <asp:Label>Length (Metres)
                                                                </asp:Label>
                                                            </td>
                                                            <td style="width: 25%;text-align:left;">
                                                                <asp:TextBox CssClass="form-control" runat="server"
                                                                    ID="txtLength2" MaxLength="5" Width="190"
                                                                    Enabled="false">
                                                                </asp:TextBox>
                                                            </td>
                                                            <td style="width: 25%;text-align:left;">
                                                                <asp:TextBox CssClass="form-control" runat="server"
                                                                    ID="txtLength1" MaxLength="5" Width="190"
                                                                    Enabled="false">
                                                                </asp:TextBox>
                                                            </td>
                                                            <td style="width: 25%;text-align:left;">
                                                                <asp:TextBox CssClass="form-control" runat="server"
                                                                    ID="lblLength" MaxLength="5" Width="190"
                                                                    Enabled="false">
                                                                </asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label>Height (Metres)
                                                                </asp:Label>
                                                            </td>
                                                            <td style="width: 25%;text-align:left;">
                                                                <asp:TextBox CssClass="form-control" runat="server"
                                                                    ID="txtHeight2" MaxLength="4" Width="190"
                                                                    Enabled="false">
                                                                </asp:TextBox>
                                                            </td>
                                                            <td style="width: 25%;text-align:left;">
                                                                <asp:TextBox CssClass="form-control" runat="server"
                                                                    ID="txtHeight1" MaxLength="4" Width="190"
                                                                    Enabled="false">
                                                                </asp:TextBox>
                                                            </td>
                                                            <td style="width: 25%;text-align:left;">
                                                                <asp:TextBox CssClass="form-control" runat="server"
                                                                    ID="lblHeight" MaxLength="4" Width="190"
                                                                    Enabled="false">
                                                                </asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label>Width (Metres)
                                                                </asp:Label>
                                                            </td>
                                                            <td style="width: 25%;text-align:left;">
                                                                <asp:TextBox CssClass="form-control" runat="server"
                                                                    ID="txtWidth2" MaxLength="4" Width="190"
                                                                    Enabled="false">
                                                                </asp:TextBox>
                                                            </td>
                                                            <td style="width: 25%;text-align:left;">
                                                                <asp:TextBox CssClass="form-control" runat="server"
                                                                    ID="txtWidth1" MaxLength="4" Width="190"
                                                                    Enabled="false">
                                                                </asp:TextBox>
                                                            </td>
                                                            <td style="width: 25%;text-align:left;">
                                                                <asp:TextBox CssClass="form-control" runat="server"
                                                                    ID="lblWidth" MaxLength="4" Width="190"
                                                                    Enabled="false">
                                                                </asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label>Mass (Tonne)
                                                                </asp:Label>
                                                            </td>
                                                            <td style="width: 25%;text-align:left;">
                                                                <asp:TextBox CssClass="form-control" runat="server"
                                                                    ID="txtMass2" MaxLength="5" Width="190"
                                                                    Enabled="false">
                                                                </asp:TextBox>
                                                            </td>
                                                            <td style="width: 25%;text-align:left;">
                                                                <asp:TextBox CssClass="form-control" runat="server"
                                                                    ID="txtMass1" MaxLength="5" Width="190"
                                                                    Enabled="false">
                                                                </asp:TextBox>
                                                            </td>
                                                            <td style="width: 25%;text-align:left;">
                                                                <asp:TextBox CssClass="form-control" runat="server"
                                                                    ID="txtMass" MaxLength="5" Width="190"
                                                                    Enabled="false">
                                                                </asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div class="row">
                                                <div class="form-group mx-0 mb-3 col-sm-4">
                                                    <asp:Label CssClass="col-auto ps-0">
                                                        Overhang Rear (M)
                                                    </asp:Label>

                                                    <div class="input-group px-0">
                                                        <asp:TextBox CssClass="form-control" ID="txtHang" MaxLength="5"
                                                            Enabled="false" runat="server"></asp:TextBox>
                                                        <div class="input-group-append rounded-left-0">
                                                            <span class="input-group-text">M</span>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-4">
                                                    <asp:Label CssClass="col-auto ps-0">
                                                        Overhang Front
                                                        (motor vehicle) (M)</asp:Label>

                                                    <div class="input-group px-0">
                                                        <asp:TextBox CssClass="form-control" ID="txtHand" MaxLength="5"
                                                            Enabled="false" runat="server"></asp:TextBox>
                                                        <div class="input-group-append rounded-left-0">
                                                            <span class="input-group-text">M</span>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-4">
                                                    <asp:Label CssClass="col-auto ps-0">
                                                        Overhang Right
                                                        (M)</asp:Label>

                                                    <div class="input-group px-0">
                                                        <asp:TextBox CssClass="form-control" ID="txtORight"
                                                            MaxLength="5" Enabled="false" runat="server"></asp:TextBox>
                                                        <div class="input-group-append rounded-left-0">
                                                            <span class="input-group-text">M</span>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-4">
                                                    <asp:Label CssClass="col-auto ps-0">
                                                        Overhang Left (M)
                                                    </asp:Label>

                                                    <div class="input-group px-0">
                                                        <asp:TextBox CssClass="form-control" ID="txtOLeft" MaxLength="5"
                                                            Enabled="false" runat="server"></asp:TextBox>
                                                        <div class="input-group-append rounded-left-0">
                                                            <span class="input-group-text">M</span>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-4">
                                                    <asp:Label CssClass="col-auto ps-0">
                                                        Overhang Front
                                                        (drawbar) (M)</asp:Label>

                                                    <div class="input-group px-0">
                                                        <asp:TextBox CssClass="form-control" ID="txtFront" MaxLength="5"
                                                            Enabled="false" runat="server"></asp:TextBox>
                                                        <div class="input-group-append rounded-left-0">
                                                            <span class="input-group-text">M</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>

                                        <fieldset>
                                            <h4 class="mt-3">
                                                <asp:Label runat="server" ID="Label32">
                                                    Vehicle Configuration:</asp:Label>
                                            </h4>

                                            <div class="form-group mx-0 mb-3 col-sm-12 row align-items-sm-center">
                                                <asp:Label CssClass="col-auto ps-0 label-125px" runat="server"
                                                    ID="lblACF">Axle Configuration
                                                    <span class="red">*</span>
                                                </asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12 col-md-8" runat="server"
                                                    Enabled="false" ID="lblAC"></asp:TextBox>
                                            </div>

                                        </fieldset>

                                        <fieldset id="fsReg">
                                            <h4 class="mt-3">
                                                <asp:Label runat="server" ID="Label29">
                                                    Vehicle Registration Details:
                                                </asp:Label>
                                            </h4>
                                            <div class="row">
                                            <asp:PlaceHolder runat="server" ID="phAxel">
                                            </asp:PlaceHolder>
                                            </div>
                                        </fieldset>

                                        <fieldset>
                                            <h4 class="mt-3">
                                                <asp:Label runat="server" ID="Label28">Axle
                                                    Information:</asp:Label>
                                            </h4>

                                            <div class="table-responsive mb-4">
                                                <table id="table_input"
                                                    class="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1">
                                                    <thead
                                                        class="HeaderDatagrid fw-bold fs-6 text-gray-800 border-bottom border-gray-200">
                                                        <tr>
                                                            <th>
                                                                <Label>Axle No.
                                                                </Label>
                                                            </th>
                                                            <th>
                                                                <Label>Axle Spacing
                                                                    (M)
                                                                </Label>
                                                            </th>
                                                            <th>
                                                                <Label>Required Axle Load
                                                                    (Kg)</Label><span class="red"></span><br />
                                                            </th>
                                                            <th>
                                                                <Label>Actual Axle Load
                                                                    (Kg)</Label>
                                                            </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <asp:PlaceHolder runat="server" ID="phPermit1">
                                                        </asp:PlaceHolder>
                                                        <tr>
                                                            <td>
                                                                <asp:Label>Total Weight
                                                                </asp:Label><span class="red">*</span>
                                                            </td>
                                                            <td>

                                                                <div style="min-width: 70px;" class="input-group px-0">
                                                                    <asp:TextBox CssClass="form-control min-w-150px" Enabled="false"
                                                                        ID="lblWT" runat="server"></asp:TextBox>
                                                                    <div class="input-group-append rounded-left-0">
                                                                        <span class="input-group-text">Kg</span>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td>
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </fieldset>

                                        <fieldset>
                                            <h4 class="mt-3">
                                                <asp:Label runat="server" ID="Label33">Load
                                                    Information:</asp:Label>
                                            </h4>

                                            <div id="load_info" class="row">
                                                <div class="form-group mx-0 mb-3 col-sm-4">
                                                    <asp:Label CssClass="col-auto ps-0">
                                                        Load Type:
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" Enabled="false"
                                                        ID="lblDCargo"></asp:TextBox>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-4">
                                                    <asp:Label CssClass="col-auto ps-0">Load
                                                        Category:
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" Enabled="false"
                                                        ID="lblLoad"></asp:TextBox>
                                                </div>
                                                <tr>
                                                    <td id="tdin" visible="false" runat="server">
                                                        <asp:Label runat="server" ID="Label7">Upload Document
                                                        </asp:Label>
                                                    </td>
                                                    <td id="tddin" runat="server" visible="false">
                                                        <asp:LinkButton runat="server" ID="lnkEIND"
                                                            CausesValidation="false"
                                                            OnClientClick="window.document.forms[0].target='_blank';"
                                                            OnClick="lnkEIND_Click">
                                                        </asp:LinkButton>
                                                    </td>
                                                </tr>
                                                <div class="form-group mx-0 mb-3 col-sm-4">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblTCN">Load
                                                        Name
                                                        <span class="red">*</span>
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" Enabled="false"
                                                        ID="lblCName"></asp:TextBox>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-4">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblCReg"
                                                        Visible="false">
                                                        Registration No.</asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtCReg"
                                                        MaxLength="50" Visible="false" Enabled="false">
                                                    </asp:TextBox>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-4">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblCD">Load
                                                        Description
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" Enabled="false"
                                                        ID="lblCDetails">
                                                    </asp:TextBox>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-4">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblTP">Phone
                                                        No.<b>(Ex:XXXXXXXXX)</b>
                                                        <span class="red">*</span>
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtCD"
                                                        Enabled="false" Visible="false" MaxLength="3" Text="255">
                                                    </asp:TextBox>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtTP"
                                                        MaxLength="12" Enabled="false">
                                                    </asp:TextBox>
                                                </div>
                                                <div class="row">
                                                <asp:PlaceHolder runat="server" ID="phPermit">
                                                </asp:PlaceHolder>
                                                    </div>
                                                <tr runat="server" id="trnop" visible="false">
                                                    <td>
                                                        <div>
                                                            <asp:Label runat="server" ID="lblNumP">Number of Police
                                                                <span class="red">*</span>
                                                            </asp:Label>
                                                            <asp:TextBox runat="server" ID="lblNOP" MaxLength="5"
                                                                Width="190" Enabled="false">
                                                            </asp:TextBox>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="trgnop" visible="false">
                                                    <td></td>
                                                </tr>
                                                <tr runat="server" id="trnov" visible="false">
                                                    <td>
                                                        <div>
                                                            <asp:Label runat="server" ID="lblNumV">Number of Vehicles
                                                                <span class="red">*</span>
                                                            </asp:Label>
                                                            <asp:TextBox runat="server" ID="lblNOV" MaxLength="5"
                                                                Width="190" Enabled="false">
                                                            </asp:TextBox>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="trgnov" visible="false">
                                                    <td></td>
                                                </tr>
                                            </div>
                                        </fieldset>

                                        <fieldset>
                                            <h4 class="mt-3">
                                                <asp:Label runat="server" ID="lblRoute">
                                                    Route Information:</asp:Label>
                                            </h4>

                                            <div class="row">
                                                <div class="form-group mx-0 mb-3 col-sm-4">
                                                    <asp:Label CssClass="col-auto ps-0 label" runat="server" ID="lblF">
                                                        FROM
                                                        <span class="red">*</span>
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="lblFrom"
                                                        MaxLength="50" Enabled="false">
                                                    </asp:TextBox>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-4">
                                                    <asp:Label CssClass="col-auto ps-0 label" runat="server" ID="lblT">
                                                        TO
                                                        <span class="red">*</span>
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="lblTo"
                                                        MaxLength="50" Enabled="false">
                                                    </asp:TextBox>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-4">
                                                    <asp:Label CssClass="col-auto ps-0 label" runat="server" ID="lblV">
                                                        <span class="red">*</span>
                                                        VIA
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="lblVia"
                                                        MaxLength="100" Enabled="false">
                                                    </asp:TextBox>
                                                </div>
                                            </div>
                                            <tr>
                                                <td colspan="3" style="width: 100%; height:10px;">

                                                </td>
                                            </tr>
                                            </table>
                                        </fieldset>

                                        <fieldset runat="server" id="fsEscort" visible="false">
                                            <legend>
                                                <asp:Label runat="server" ID="lblEV">Escort
                                                    Vehicle:</asp:Label>
                                            </legend>
                                                <div class="row">
                                                <asp:PlaceHolder runat="server" Visible="false" ID="phEscort">
                                                </asp:PlaceHolder>
                                                    </div>
                                        </fieldset>
                                        <fieldset runat="server" id="fsTRA" visible="false">
                                            <legend>
                                                <label>Vehicle Registration Status:</label>
                                            </legend>

                                            <div class="table-responsive mb-1">
                                                <asp:GridView ID="gvRegStatus"
                                                    Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                                    runat="server" AutoGenerateColumns="false" Width="100%"
                                                    AlternatingRowStyle-CssClass="AlternateItemStyle"
                                                    HeaderStyle-CssClass="HeaderDatagrid"
                                                    OnPageIndexChanging="gvRegStatus_PageIndexChanging" PageSize="10"
                                                    AllowPaging="true">
                                                    <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                                    <PagerStyle CssClass="gridViewPager" />
                                                    <Columns>
                                                        <asp:BoundField DataField="Reg_No"
                                                            HeaderText="Vehicle Registration Number" />
                                                        <asp:BoundField DataField="Status" HeaderText="Status" />
                                                    </Columns>
                                                </asp:GridView>
                                            </div>

                                        </fieldset>

                                        <fieldset runat="server" id="fsAttach" visible="false">
                                            <h4 class="mt-3">
                                                <Label>
                                                    Attachments:</Label>
                                            </h4>
                                            
                                            <asp:PlaceHolder runat="server" ID="phHorse"></asp:PlaceHolder>

                                            <tr runat="server" id="trHire" visible="false">
                                            <td>

                                                <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-12">
                                                    <asp:Label CssClass="col-sm-6 col-xl-4 ps-0" runat="server" ID="lblEHire">Hiring Agreement
                                                    </asp:Label>
                                                    
                                                    <div class="col-sm-6 px-0">
                                                        <asp:LinkButton runat="server" ID="lnkHire" CausesValidation="false" CssClass="btn btn-primary btn-sm py-4 doc-icon"
                                                            OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkHire_Click">
                                                        </asp:LinkButton>
                                                    </div>
                                                </div>

                                            </td>
                                        </tr>

                                        <tr runat="server" id="trgHire" visible="false">
                                            <td>
                                            </td>
                                        </tr>

                                        <tr runat="server" id="trDraw" visible="false">
                                            <td>
                                                <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-12">
                                                    <asp:Label CssClass="col-sm-6 col-xl-4 ps-0" runat="server" ID="lblCID">Cargo Images &
                                                        Drawings</asp:Label>

                                                    <div class="col-sm-6 px-0">
                                                        <asp:LinkButton runat="server" ID="lnkImages" CausesValidation="false" CssClass="btn btn-primary btn-sm py-4 doc-icon"
                                                            OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkImages_Click">
                                                        </asp:LinkButton>
                                                    </div>
                                                </div>
                                            </td>

                                        </tr>

                                        <tr runat="server" id="trgDraw" visible="false">
                                            <td>
                                            </td>
                                        </tr>

                                        <tr runat="server" id="trWeight" visible="false">
                                            <td>
                                                <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-12">
                                                    <asp:Label ID="Label2" CssClass="col-sm-6 col-xl-4 ps-0" runat="server">Weigh
                                                        Ticket from
                                                        TANROADS</asp:Label>
                                                    <div class="col-sm-6 px-0">
                                                        <asp:LinkButton runat="server" ID="lnkTan" CausesValidation="false" CssClass="btn btn-primary btn-sm py-4 doc-icon"
                                                            OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkTan_Click">
                                                        </asp:LinkButton>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr runat="server" id="trgWeight" visible="false">
                                            <td>
                                            </td>
                                        </tr>

                                        <tr runat="server" id="trPolice" visible="false">
                                            <td>
                                                <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-12">
                                                    <asp:Label ID="Label9" CssClass="col-sm-6 col-xl-4 ps-0" runat="server">
                                                        Confirmation Letter from Police</asp:Label>
                                                    <div class="col-sm-6 px-0">
                                                        <asp:LinkButton runat="server" ID="lnkPolice" CausesValidation="false" CssClass="btn btn-primary btn-sm py-4 doc-icon"
                                                            OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkPolice_Click" />
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr runat="server" id="trgPolice" visible="false">
                                            <td>
                                            </td>
                                        </tr>

                                        <tr runat="server" id="trTanesco" visible="false">
                                            <td>
                                                <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-12">
                                                    <asp:Label ID="Label11" CssClass="col-sm-6 col-xl-4 ps-0" runat="server">
                                                        Confirmation Letter from TANESCO</asp:Label>
                                                    <div class="col-sm-6 px-0">
                                                        <asp:LinkButton runat="server" ID="lnkTanesco" CausesValidation="false" CssClass="btn btn-primary btn-sm py-4 doc-icon"
                                                            OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkTanesco_Click" />
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr runat="server" id="trgTanesco" visible="false">
                                            <td>
                                            </td>
                                        </tr>

                                        <tr runat="server" id="trRoute" visible="false">
                                            <td>
                                                <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-12">
                                                    <asp:Label ID="Label13" CssClass="col-sm-6 col-xl-4 ps-0" runat="server">
                                                        Route Survey
                                                    </asp:Label>
                                                    <div class="col-sm-6 px-0">
                                                        <asp:LinkButton runat="server" CausesValidation="false" ID="lnkRoute" CssClass="btn btn-primary btn-sm py-4 doc-icon"
                                                            OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkRoute_Click" />
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr runat="server" id="trERoute" visible="false">
                                            <td>

                                                <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-12">
                                                    <asp:Label ID="Label15" CssClass="col-sm-6 col-xl-4 ps-0" runat="server">
                                                        Upload Route Survey
                                                    </asp:Label>
                                                    <div class="form-group col-sm-12 col-md-12 col-xl-12 px-0">
                                                        <asp:FileUpload runat="server" ID="fuRoute"
                                                            ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                                        <asp:RegularExpressionValidator runat="server" ID="revRoute" CssClass="red"
                                                            ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                            ControlToValidate="fuRoute" Display="Dynamic"
                                                            ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt">
                                                        </asp:RegularExpressionValidator>
                                                        <asp:CustomValidator ID="cvRoute" runat="server" ControlToValidate="fuRoute"
                                                            ErrorMessage="File size should not be greater than 20 MB." Display="Dynamic"
                                                            OnServerValidate="cvRoute_ServerValidate">
                                                        </asp:CustomValidator>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr runat="server" id="trgRoute" visible="false">
                                            <td>
                                            </td>
                                        </tr>

                                        <tr runat="server" id="trAdvg" visible="false">
                                            <td>
                                                <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-12">
                                                    <asp:Label ID="Label17" CssClass="col-sm-6 col-xl-4 ps-0" runat="server">
                                                        Advertisement
                                                    </asp:Label>
                                                    <div class="col-sm-6 px-0">
                                                        <asp:LinkButton runat="server" ID="lnkAdvg" CausesValidation="false" CssClass="btn btn-primary btn-sm py-4 doc-icon"
                                                            OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkAdvg_Click" />
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr runat="server" id="trgAdvg" visible="false">
                                            <td>
                                            </td>
                                        </tr>

                                        <tr runat="server" id="trMass" visible="false">
                                            <td>
                                                <div class="form-group row mx-0 mb-3 align-items-sm-center col-sm-12">
                                                    <asp:Label CssClass="col-sm-6 col-xl-4 ps-0" runat="server" ID="lblMD">
                                                        Mass Document
                                                    </asp:Label>
                                                    <div class="form-group col-sm-12 col-md-12 col-xl-12 px-0">
                                                        <asp:LinkButton runat="server" ID="lnkEMass" CausesValidation="false" CssClass="btn btn-primary btn-sm py-4 doc-icon"
                                                            OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkEMass_Click" />
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr runat="server" id="trgMass" visible="false">
                                            <td>
                                            </td>
                                        </tr>


                                            <tr runat="server" id="trEALE" visible="false">
                                                <td style="width: 40%;">
                                                    <asp:Label runat="server" ID="Label5">Existing ALE Document
                                                    </asp:Label>
                                                </td>
                                                <td style="width: 60%;">
                                                    <asp:LinkButton runat="server" ID="lnkEALE" CausesValidation="false" CssClass="btn btn-primary btn-sm py-4 doc-icon"
                                                        OnClientClick="window.document.forms[0].target='_blank';"
                                                        OnClick="lnkEALE_Click"></asp:LinkButton>
                                                </td>
                                            </tr>
                                            <tr runat="server" id="trale" visible="false">
                                                <td style="width: 40%;">
                                                    <asp:Label runat="server" ID="Label40">Upload ALE Document
                                                    </asp:Label>
                                                    <span class="red">*</span>
                                                </td>
                                                <td style="width: 60%;">
                                                    <asp:FileUpload runat="server" ID="fuALE" Width="190"
                                                        ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                                    <asp:RegularExpressionValidator runat="server"
                                                        ID="RegularExpressionValidator9" CssClass="red"
                                                        ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                        ControlToValidate="fuALE" Display="Dynamic"
                                                        ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt">
                                                    </asp:RegularExpressionValidator>
                                                    <asp:CustomValidator ID="cuALE" runat="server"
                                                        ControlToValidate="fuALE" CssClass="red"
                                                        ErrorMessage="File size should not be greater than 20 MB."
                                                        Display="Dynamic" OnServerValidate="cvALE_ServerValidate">
                                                    </asp:CustomValidator>
                                                </td>
                                            </tr>
                                            <tr runat="server" id="trgale" visible="false">
                                                <td colspan="2" style="width: 100%; height: 10px;"></td>
                                            </tr>

                                            </table>
                                        </fieldset>

                                        <fieldset>
                                            <legend>
                                                <label>Travel Schedule:</label>
                                            </legend>

                                            <tr runat="server" id="trsch" visible="false">
                                                <td style="width:100%;">
                                                    <div>
                                                        <asp:LinkButton runat="server" ID="lnkAddSch" CssClass="btn btn-primary btn-sm"
                                                            CausesValidation="false" OnClick="lnkAddSch_Click">
                                                            Add/View/Edit Travel Schedule</asp:LinkButton>
                                                    </div>

                                                </td>
                                            </tr>
                                            <tr runat="server" id="trschemp" visible="false">
                                                <td style="width:100%;">
                                                    <div>
                                                        <asp:LinkButton runat="server" ID="lnkEmpSch" CssClass="btn btn-primary btn-sm"
                                                            CausesValidation="false" OnClick="lnkEmpSch_Click">
                                                            Add/View/Edit Travel Schedule</asp:LinkButton>
                                                    </div>

                                                </td>

                                            </tr>
                                        </fieldset>


                                        <fieldset runat="server" id="fsTrans" visible="false">
                                            <legend>
                                                <asp:Label runat="server" ID="lblTrans"></asp:Label>
                                            </legend>
                                            <tr runat="server" id="trTrans" visible="false">
                                                <td style="width: 100%;">
                                                    <!--<label>Upload Dcoument to Transporter</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-->
                                                    <asp:FileUpload runat="server" ID="fuTrans" Width="300"
                                                        ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                                    <br />
                                                    <asp:RegularExpressionValidator runat="server" ID="revTrans"
                                                        CssClass="red"
                                                        ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                        ControlToValidate="fuTrans" Display="Dynamic"
                                                        ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt">
                                                    </asp:RegularExpressionValidator>
                                                    <asp:CustomValidator ID="cvTrans" runat="server"
                                                        ControlToValidate="fuTrans" CssClass="red"
                                                        ErrorMessage="File size should not be greater than 20 MB."
                                                        Display="Dynamic" OnServerValidate="cvTrans_ServerValidate">
                                                    </asp:CustomValidator>
                                                </td>
                                            </tr>
                                            <tr runat="server" id="truTrans" visible="false">
                                                <td style="width: 100%;">
                                                    <!--<label>Uploaded Document to Transporter</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-->
                                                    <asp:LinkButton runat="server" ID="lnkTrans"
                                                        CausesValidation="false"
                                                        OnClientClick="window.document.forms[0].target='_blank';"
                                                        OnClick="lnkTrans_Click"></asp:LinkButton>
                                                </td>
                                            </tr>
                                        </fieldset>



                                        <fieldset>
                                            <h4 class="mt-3">
                                                <Label>Permit
                                                    Fee & Surcharge Details:</Label>
                                            </h4>

                                            <div class="table-responsive mb-4">
                                                <asp:GridView ID="gvSurcharge"
                                                    CssClass="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1"
                                                    runat="server" AutoGenerateColumns="false" Width="100%"
                                                    AlternatingRowStyle-CssClass="AlternateItemStyle"
                                                    HeaderStyle-CssClass="HeaderDatagrid"
                                                    OnRowDataBound="schRowDataBound" PageSize="10" AllowPaging="true">
                                                    <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                                    <PagerStyle CssClass="gridViewPager" />
                                                    <Columns>
                                                        <asp:BoundField DataField="Axel_No" HeaderText="Axle" />
                                                        <asp:BoundField DataField="Axel_Actual_Weight"
                                                            HeaderText="Actual Weight KG" />
                                                        <asp:BoundField DataField="Axel_Allowed_Weight"
                                                            HeaderText="Allowed Weight KG" />
                                                        <asp:BoundField DataField="Overload_Weight"
                                                            HeaderText="Over Weight KG" />
                                                        <asp:BoundField DataField="Fees" HeaderText="Fees" />
                                                        <asp:BoundField DataField="Axel_Surcharge_Amount"
                                                            HeaderText="Axle Surcharge" />

                                                    </Columns>
                                                </asp:GridView>
                                            </div>

                                            <div class="table-responsive mb-1">
                                                <asp:GridView ID="gvGVM"
                                                    CssClass="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1"
                                                    runat="server" AutoGenerateColumns="false" Width="100%"
                                                    AlternatingRowStyle-CssClass="AlternateItemStyle"
                                                    HeaderStyle-CssClass="HeaderDatagrid"
                                                    OnRowDataBound="gvmRowDataBound" PageSize="10" AllowPaging="true">
                                                    <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                                    <PagerStyle CssClass="gridViewPager" />
                                                    <Columns>
                                                        <asp:BoundField DataField="Axel_Configuration"
                                                            HeaderText="Axle Configuration" />
                                                        <asp:BoundField DataField="GVM_Actual_Weight"
                                                            HeaderText="Actual GVM KG" />
                                                        <asp:BoundField DataField="GVM_Allowed_Weight"
                                                            HeaderText="Allowed GVM KG" />
                                                        <asp:BoundField DataField="Overload_GVM_Weight"
                                                            HeaderText="Over Weight KG" />
                                                        <asp:BoundField DataField="Overload_GVM_Fee"
                                                            HeaderText="Fees" />
                                                        <asp:BoundField DataField="GVM_Surcharge_Amount"
                                                            HeaderText="GVM Surcharge" />
                                                    </Columns>
                                                </asp:GridView>
                                            </div>

                                            <div>
                                                <Label>Permit Fee
                                                    (Permit Fee + Surcharge Fee: => Permit Fee
                                                </Label>: <asp:Label runat="server" ID="lblPFee">
                                                </asp:Label> => Surcharge Fee</asp:Label>: <asp:Label runat="server"
                                                    ID="lblSF">
                                                </asp:Label>
                                            </div>

                                            <div>
                                                <Label>Total
                                                    Permit Fee</Label>:
                                                <asp:Label runat="server" ID="lblTF"></asp:Label>
                                            </div>
                                        </fieldset>

                                        <fieldset>
                                            <h4 class="mt-3">
                                                <Label>
                                                    Comments:</Label>
                                            </h4>
                                            <tr runat="server" id="trgrid" visible="true">
                                                <td>
                                                    <div class="table-responsive">
                                                        <asp:GridView ID="gvComments"
                                                            Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                                            runat="server" AutoGenerateColumns="false" Width="100%"
                                                            EmptyDataText="No comments exists" GridLines="None"
                                                            AllowPaging="true" PageSize="10"
                                                            OnPageIndexChanging="gvComments_PageIndexChanging"
                                                            ShowHeader="false">
                                                            <PagerStyle CssClass="gridViewPager" />
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="Commentd On"
                                                                    ItemStyle-VerticalAlign="Top"
                                                                    ItemStyle-Width="60px">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblCD" runat="server">
                                                                            <br />Commented By:<br />Commented
                                                                            Date:<br />Comment:<br />
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Commented By"
                                                                    ItemStyle-VerticalAlign="Top"
                                                                    ItemStyle-Width="200px">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblCB" runat="server"><br />
                                                                            <%# Eval("FullName") %><br />
                                                                                <%# Eval("Comments_Date") %><br />
                                                                                    <%# Eval("Comments") %><br />
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                            </Columns>
                                                        </asp:GridView>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr runat="server" id="trgv" visible="true">
                                                <td></td>
                                            </tr>
                                            </table>
                                        </fieldset>

                                        <tr runat="server" id="tralc" visible="true">
                                            <td>
                                                <div class="mt-5 form-group mx-0 mb-3 col-sm-6">
                                                    <label class="col-auto ps-0">Add Comments <span
                                                            class="red">*</span></label>
                                                    <asp:TextBox CssClass="form-control" runat="server"
                                                        TextMode="MultiLine" Rows="5" Columns="30" ID="txtComments">
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ID="rfvComments"
                                                        CssClass="red" ControlToValidate="txtComments" Display="Dynamic"
                                                        ErrorMessage="Please enter comments">
                                                    </asp:RequiredFieldValidator>
                                                </div>


                                            </td>
                                        </tr>
                                        <tr runat="server" id="trgalc" visible="true">
                                            <td style="width: 100%; height: 30px;"></td>
                                        </tr>

                                        <div
                                            class="form-group mt-5 mb-3 d-flex justify-content-end flex-wrap flex-sm-row-auto">



                                            <asp:Button
                                                CssClass=" mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnFALE" runat="server" Visible="false"
                                                OnClientClick="return Function1('Are you sure want to Forward to ALE?') && Function2();"
                                                Text="Forward to ALE" OnClick="btnSubmit_Click" />&nbsp;&nbsp;
                                            &nbsp;&nbsp;

                                            <asp:Button
                                                CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnFADS" runat="server" Visible="false" Text="Forward to ADS"
                                                OnClick="btnFADS_Click"
                                                OnClientClick="return Function1('Are you sure want to Forward to ADS?') && Function2();" />
                                            &nbsp;&nbsp;
                                            <asp:Button
                                                CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnFSE" runat="server" Visible="false"
                                                Text="Forward to Senior Engineer" OnClick="btnFSE_Click"
                                                OnClientClick="return Function1('Are you sure want to Forward to Senior Engineer?') && Function2();" />
                                            &nbsp;&nbsp;
                                            <asp:Button
                                                CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                runat="server" ID="btnRALC" Visible="false" Text="Return to ALC"
                                                OnClick="btnRALC_Click"
                                                OnClientClick="return Function1('Are you sure want to Return to ALC?') && Function2();" />
                                            &nbsp;&nbsp; &nbsp;&nbsp;

                                            <asp:Button
                                                CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnFDSE" runat="server" Visible="false" Text="Forward to DSE"
                                                OnClick="btnFDSE_Click"
                                                OnClientClick="return Function1('Are you sure want to Forward to DSE?') && Function2();" />
                                            &nbsp;&nbsp;
                                            <asp:Button
                                                CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                runat="server" ID="btnRALE" Visible="false" Text="Return to ALE"
                                                OnClick="btnRALE_Click"
                                                OnClientClick="return Function1('Are you sure want to Return to ALE?') && Function2();" />
                                            &nbsp;&nbsp; &nbsp;&nbsp;

                                            <asp:Button
                                                CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnApprove" runat="server" Visible="false" Text="Aprove for Payment"
                                                OnClick="btnApprove_Click"
                                                OnClientClick="return Function1('Are you sure want to Aprove for Payment?') && Function2();" />
                                            &nbsp;&nbsp;
                                            <asp:Button
                                                CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnVReceipt" runat="server" Visible="false" CausesValidation="false"
                                                Text="View Receipt" OnClick="btnVReceipt_Click"
                                                OnClientClick="return Function1('Are you sure want to View Receipt?') && Function2();" />
                                            &nbsp;&nbsp;
                                            <asp:Button
                                                CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnVPermit" runat="server" Visible="false" CausesValidation="false"
                                                Text="View Permit" OnClick="btnVPermit_Click"
                                                OnClientClick="return Function1('Are you sure want to View Permit?') && Function2();" />
                                            &nbsp;&nbsp;
                                            <asp:Button
                                                CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnAPermit" runat="server" Visible="false" CausesValidation="false"
                                                Text="Aprove Permit" OnClick="btnAPermit_Click"
                                                OnClientClick="return Function1('Are you sure want to Aprove Permit?') && Function2();" />
                                            &nbsp;&nbsp;
                                            <asp:Button
                                                CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                runat="server" ID="btnFDPS" Visible="false" Text="Forward to DPS"
                                                OnClick="btnFDPS_Click"
                                                OnClientClick="return Function1('Are you sure want to Forward to DPS?') && Function2();" />
                                            &nbsp;&nbsp;
                                            <asp:Button
                                                CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                runat="server" ID="btnFPS" Visible="false" Text="Foward to PS"
                                                OnClick="btnFPS_Click"
                                                OnClientClick="return Function1('Are you sure want to Foward to PS?') && Function2();" />
                                            &nbsp;&nbsp;
                                            <asp:Button
                                                CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                runat="server" ID="btnRADS" Visible="false" Text="Return to ADS"
                                                OnClick="btnRADS_Click"
                                                OnClientClick="return Function1('Are you sure want to Return to ADS?') && Function2();" />
                                            &nbsp;&nbsp;
                                            <asp:Button
                                                CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                runat="server" ID="btnRSE" Visible="false"
                                                Text="Return to Senior Engineer" OnClick="btnRSE_Click"
                                                OnClientClick="return Function1('Are you sure want to Return to Senior Engineer?') && Function2();" />
                                            &nbsp;&nbsp;
                                            <asp:Button
                                                CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                runat="server" ID="btnDSERT" Visible="false"
                                                Text="Return to Transporter" OnClick="btnDSERT_Click"
                                                OnClientClick="return Function1('Are you sure want to Return to Transporter?') && Function2();" />
                                            &nbsp;&nbsp;

                                            <asp:Button
                                                CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnDPSFPS" runat="server" Visible="false" Text="Foward to PS"
                                                OnClick="btnDPSFPS_Click"
                                                OnClientClick="return Function1('Are you sure want to Foward to PS?') && Function2();" />
                                            &nbsp;&nbsp;
                                            <asp:Button
                                                CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                runat="server" ID="btnRDSE" Visible="false" Text="Return to DSE"
                                                OnClick="btnRDSE_Click"
                                                OnClientClick="return confirm('Are you sure want to Return to DSE?') && Function2();" />
                                            &nbsp;&nbsp;

                                            <asp:Button
                                                CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btFDM" runat="server" Visible="false"
                                                Text="Forward to Deputy Minister" OnClick="btFDM_Click"
                                                OnClientClick="return confirm('Are you sure want to Forward to Deputy Minister?') && Function2();" />
                                            &nbsp;&nbsp;
                                            <asp:Button
                                                CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                runat="server" ID="btnFM" Visible="false" Text="Forward to Minister"
                                                OnClick="btnFM_Click"
                                                OnClientClick="return Function1('Are you sure want to Forward to Minister?') && Function2();" />
                                            &nbsp;&nbsp;
                                            <asp:Button
                                                CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                runat="server" ID="btnDRDSE" Visible="false" Text="Return to DSE"
                                                OnClick="btnDRDSE_Click"
                                                OnClientClick="return Function1('Are you sure want to Return to DSE?') && Function2();" />
                                            &nbsp;&nbsp;

                                            <asp:Button
                                                CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnDFM" runat="server" Visible="false" Text="Forward to Minister"
                                                OnClick="btnDFM_Click"
                                                OnClientClick="return Function1('Are you sure want to Forward to Minister?') && Function2();" />
                                            &nbsp;&nbsp;
                                            <asp:Button  CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1" runat="server" ID="btnRPS" Visible="false" Text="Return to PS"
                                                OnClick="btnRPS_Click"
                                                OnClientClick="return Function1('Are you sure want to Return to PS?') && Function2();" />
                                            &nbsp;&nbsp;

                                            <asp:Button
                                                CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                runat="server" ID="btnMRPS" Visible="false" Text="Return to PS"
                                                OnClick="btnMRPS_Click"
                                                OnClientClick="return Function1('Are you sure want to Return to PS?') && Function2();" />
                                            &nbsp;&nbsp;
                                            <asp:Button
                                                CssClass="mb-2 mt-2 btn btn-primary btn-sm white-space-wrap me-1"
                                                runat="server" ID="btnRDM" Visible="false"
                                                Text="Return to Deputy Minister" OnClick="btnRDM_Click"
                                                OnClientClick="return Function1('Are you sure want to Return to Deputy Minister?') && Function2();" />

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
        (function () {
            $(function () {
                var carOwnership = $('[id*=lblVeh]');
                var applicant_details_ID = $('#applicant_details');
                var load_info_ID = $('#load_info');
                var table_input = $('#table_input');

                AppDet_hideEmptyFormGroups(carOwnership, applicant_details_ID);
                hideEmptyFormGroups(load_info_ID);

                add_Class_To_Table_Input(table_input);
            });
        }());

        /*
         *The function hides the div elements with [form-group] class with zero children.
         */

        function AppDet_hideEmptyFormGroups(carOwnership, rowID) {
            if (isOwnCar(carOwnership)) {
                hideEmptyFormGroups(rowID);
            }
        }

        function hideEmptyFormGroups(rowID) {
            $(rowID).find(
                $(".form-group:not(:has(*))")
            ).css('display', 'none');
        }

        function add_Class_To_Table_Input(table_input) {
            var table_input = $('#table_input').find($('input'));

            $(table_input).addClass('form-control');
        }

        function isOwnCar(carOwnership) {
            return $(carOwnership).val() == "Own";
        }
    </script>

</asp:Content>