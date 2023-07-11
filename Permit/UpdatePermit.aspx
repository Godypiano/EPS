<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="UpdatePermit.aspx.cs" MasterPageFile="~/Default.Master" Inherits="PresentationLayer.Permit.UpdatePermit" %>

<%@ MasterType VirtualPath="~/Default.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript" language="javascript">
        function Function2() {
            //this.disabled = true;
            window.document.forms[0].target = '_self';
        }
    </script>
    <div>
        <asp:UpdatePanel ID="upAPermit" runat="server">
            <ContentTemplate>
                <!--begin::Toolbar-->
                <div class="toolbar" id="kt_toolbar">
                    <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
                        <!--begin::Info-->
                        <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                            <!--begin::Title-->
                            <h1 class="text-dark fw-bolder my-1 fs-2">
                                <asp:Label runat="server" CssClass="hd1" ID="lblAP">Edit/Update Application:</asp:Label>
                                <asp:Label runat="server" CssClass="hd1" ID="lbluapp"></asp:Label>
                            </h1>
                            <!--end::Title-->
                            <!--begin::Breadcrumb-->
                            <ul class="breadcrumb fw-bold fs-base my-1">
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                                </li>
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a href="EditApplications.aspx" class="text-breadcrumbs text-hover-primary">Update
                                        Applications</a>
                                </li>
                                <li class="breadcrumb-item text-dark">
                                    Edit/Update Application
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

                                        <div class="text-end mb-3">
                                            <asp:LinkButton runat="server" CssClass="navigationbar" Visible="true"
                                                ID="lnkEnglish" CausesValidation="false" OnClick="lnkEnglish_Click">
                                                English
                                            </asp:LinkButton>
                                            <asp:LinkButton runat="server" Visible="true" CausesValidation="false"
                                                CssClass="navigationbar" ID="lnkSwahili" OnClick="lnkSwahili_Click">
                                                Swahili</asp:LinkButton>
                                        </div>

                                        <fieldset>
                                            <h4>
                                                <asp:Label runat="server" ID="lblVC">Vehicle & Cargo Details:
                                                </asp:Label>
                                            </h4>

                                            <div class="row">
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblCargo">
                                                        Type of
                                                        Vehicle
                                                        <span class="red">*</span>
                                                    </asp:Label>
                                                    <asp:DropDownList CssClass="form-control" runat="server"
                                                        ID="ddlCargo" AutoPostBack="true"
                                                        OnSelectedIndexChanged="ddlCargo_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator runat="server" ID="rfvCargo"
                                                        CssClass="red" Display="Dynamic" ControlToValidate="ddlCargo"
                                                        ErrorMessage="Please select vehicle type">
                                                    </asp:RequiredFieldValidator>
                                                </div>
                                                <tr runat="server" id="tr2">
                                                    <td></td>
                                                </tr>
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblLease">
                                                        Vehicle
                                                        Lease Type
                                                        <span class="red">*</span>
                                                    </asp:Label>
                                                    <asp:DropDownList CssClass="form-control" runat="server" ID="ddlVeh"
                                                        AutoPostBack="true"
                                                        OnSelectedIndexChanged="ddlVeh_SelectedIndexChanged">
                                                        <asp:ListItem Value="">Vehicle
                                                            Type</asp:ListItem>
                                                        <asp:ListItem Value="1">Own
                                                        </asp:ListItem>
                                                        <asp:ListItem Value="2">Hire
                                                        </asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator runat="server"
                                                        ID="RequiredFieldValidator1" CssClass="red"
                                                        ControlToValidate="ddlVeh" Display="Dynamic"
                                                        ErrorMessage="Please select cargo type">
                                                    </asp:RequiredFieldValidator>
                                                </div>

                                            </div>
                                        </fieldset>

                                        <fieldset>
                                            <h4 class="mt-3">
                                                <asp:Label runat="server" ID="lblAPD">
                                                    Applicant Details:</asp:Label>
                                            </h4>
                                            <div id="applicant_details" class="row">
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblNApp">
                                                        Name of
                                                        Applicant
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtOApp"
                                                        MaxLength="200" Enabled="false">
                                                    </asp:TextBox>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblHApp"
                                                        Visible="false">Name of Haulier</asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtHApp"
                                                        Visible="false" MaxLength="200">
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" Visible="false"
                                                        ID="rfvHApp" CssClass="red" ControlToValidate="txtHApp"
                                                        Display="Dynamic" ErrorMessage="Please enter name.">
                                                    </asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator runat="server" Visible="false" ID="revnum" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9- ]*$" ControlToValidate="txtHApp"
                                                     ErrorMessage="Accepts characters, numbers, hypens and spaces only" CssClass="red">
                                                </asp:RegularExpressionValidator>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblSt">
                                                        Street
                                                        Number
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtOSt"
                                                        MaxLength="200" Enabled="false">
                                                    </asp:TextBox>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblHSt"
                                                        Visible="false">
                                                        Street
                                                        Number</asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtHSt"
                                                        Visible="false" MaxLength="200">
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" Visible="false"
                                                        ID="rfvHSt" CssClass="red" ControlToValidate="txtHSt"
                                                        Display="Dynamic" ErrorMessage="Please enter street.">
                                                    </asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator runat="server" Visible="false" ID="RegularExpressionValidator16" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9- ]*$" ControlToValidate="txtHSt"
                                                     ErrorMessage="Accepts characters, numbers, hypens and spaces only" CssClass="red">
                                                </asp:RegularExpressionValidator> 
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblCity">
                                                        City
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtOCity"
                                                        MaxLength="200" Enabled="false">
                                                    </asp:TextBox>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblHCity"
                                                        Visible="false">
                                                        City
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtHCity"
                                                        Visible="false" MaxLength="100">
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ID="rfvHCity"
                                                        Visible="false" CssClass="red" ControlToValidate="txtHCity"
                                                        Display="Dynamic" ErrorMessage="Please enter city.">
                                                    </asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator runat="server" Visible="false" ID="RegularExpressionValidator17" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9- ]*$" ControlToValidate="txtHCity"
                                                     ErrorMessage="Accepts characters, numbers, hypens and spaces only" CssClass="red">
                                                </asp:RegularExpressionValidator> 
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblZip">
                                                        Zip /
                                                        Postal Code
                                                    </asp:Label>

                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtOZip"
                                                        MaxLength="200" Enabled="false">
                                                    </asp:TextBox>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblHZip"
                                                        Visible="false">Zip
                                                        /
                                                        Postal Code</asp:Label>

                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtHZip"
                                                        Visible="false" MaxLength="50">
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ID="rfvHZip"
                                                        CssClass="red" ControlToValidate="txtHZip" Display="Dynamic"
                                                        ErrorMessage="Please enter zip.">
                                                    </asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator runat="server" Visible="false" ID="RegularExpressionValidator19" Display="Dynamic" ValidationExpression="^[0-9]*$" ControlToValidate="txtHZip"
                                                     ErrorMessage="Accepts numbers only" CssClass="red">
                                                </asp:RegularExpressionValidator> 
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblCou">
                                                        Country
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtOCou"
                                                        MaxLength="200" Enabled="false">
                                                    </asp:TextBox>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblHCou"
                                                        Visible="false">
                                                        Country</asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtHCou"
                                                        Visible="false" MaxLength="200">
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" Visible="false"
                                                        ID="rfvHCou" CssClass="red" ControlToValidate="txtHCou"
                                                        Display="Dynamic" ErrorMessage="Please select country.">
                                                    </asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator runat="server" Visible="false" ID="RegularExpressionValidator20" Display="Dynamic" ValidationExpression="^[a-zA-Z- ]*$" ControlToValidate="txtHCou"
                                                     ErrorMessage="Accepts characters, hypens and spaces only" CssClass="red">
                                                </asp:RegularExpressionValidator> 
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblTel">
                                                        Telephone
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtOTel"
                                                        MaxLength="200" Enabled="false">
                                                    </asp:TextBox>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblHTel"
                                                        Visible="false">
                                                        Telephone</asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtHTel"
                                                        Visible="false" MaxLength="15">
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" Visible="false"
                                                        ID="rfvHTel" CssClass="red" ControlToValidate="txtHTel"
                                                        Display="Dynamic" ErrorMessage="Please enter telephone.">
                                                    </asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator runat="server" Visible="false" ID="RegularExpressionValidator22" Display="Dynamic" ValidationExpression="^[0-9]*$" ControlToValidate="txtHTel"
                                                     ErrorMessage="Accepts numbers only" CssClass="red">
                                                </asp:RegularExpressionValidator>
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblFax">
                                                        Fax
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtOFax"
                                                        MaxLength="200" Enabled="false">
                                                    </asp:TextBox>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblHFax"
                                                        Visible="false">Fax
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtHFax"
                                                        Visible="false" MaxLength="20">
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ID="rfvHFax"
                                                        Visible="false" CssClass="red" ControlToValidate="txtHFax"
                                                        Display="Dynamic" ErrorMessage="Please enter fax.">
                                                    </asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator runat="server" Visible="false" ID="RegularExpressionValidator23" Display="Dynamic" ValidationExpression="^[0-9]*$" ControlToValidate="txtHFax"
                                                     ErrorMessage="Accepts numbers only" CssClass="red">
                                                </asp:RegularExpressionValidator>
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblEmail">
                                                        Email
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtOEmail"
                                                        MaxLength="200" Enabled="false">
                                                    </asp:TextBox>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblHEmail"
                                                        Visible="false">
                                                        Email</asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtHEmail"
                                                        Visible="false" MaxLength="200">
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" Visible="false"
                                                        ID="rfvHEmail" CssClass="red" ControlToValidate="txtHEmail"
                                                        Display="Dynamic" ErrorMessage="Please enter email.">
                                                    </asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="rev1" runat="server" Visible="false"
                                                    ControlToValidate="txtHEmail" CssClass="red"
                                                    ErrorMessage="Please enter the valid Email ID"
                                                    ValidationExpression="^[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"
                                                    Display="Dynamic">
                                                </asp:RegularExpressionValidator>
                                                </div>
                                            </div>
                                        </fieldset>

                                        <fieldset>
                                            <h4 class="mt-3">
                                                <asp:Label runat="server" ID="lblLInfo">Load
                                                    Information:
                                                </asp:Label>
                                            </h4>


                                            <div id="load_info" class="row">
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblLType">
                                                        Load
                                                        Type:
                                                    </asp:Label>
                                                    <asp:DropDownList CssClass="form-control" runat="server"
                                                        ID="ddlDCargo" AutoPostBack="true"
                                                        OnSelectedIndexChanged="ddlDCargo_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator runat="server" ID="rfvDCargo"
                                                        CssClass="red" Visible="true" ControlToValidate="ddlDCargo"
                                                        Display="Dynamic" ErrorMessage="Please select load">
                                                    </asp:RequiredFieldValidator>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblLCat">Load
                                                        Category:
                                                    </asp:Label>
                                                    <asp:DropDownList CssClass="form-control" runat="server"
                                                        ID="ddlLoad" AutoPostBack="true"
                                                        OnSelectedIndexChanged="ddlLoad_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator runat="server" ID="rfvLoad"
                                                        CssClass="red" Visible="true" ControlToValidate="ddlLoad"
                                                        Display="Dynamic" ErrorMessage="Please select load category">
                                                    </asp:RequiredFieldValidator>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <td id="tdin" visible="false" runat="server">
                                                        <asp:Label CssClass="col-sm-12 ps-0" runat="server" ID="lblUD">
                                                            Upload
                                                            Document
                                                        </asp:Label>
                                                    </td>
                                                    <td id="tddin" runat="server" visible="false">
                                                        <asp:LinkButton CssClass="col-sm-12" runat="server" ID="lnkEIND"
                                                            CausesValidation="false"
                                                            OnClientClick="window.document.forms[0].target='_blank';"
                                                            OnClick="lnkEIND_Click">
                                                        </asp:LinkButton>
                                                        <asp:FileUpload CssClass="col-sm-12" runat="server" ID="fuIND"
                                                            ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                                        <asp:RegularExpressionValidator runat="server"
                                                            ID="RegularExpressionValidator10" CssClass="red"
                                                            ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                            ControlToValidate="fuIND" Display="Dynamic"
                                                            ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt">
                                                        </asp:RegularExpressionValidator>
                                                        <asp:CustomValidator ID="cvIND" runat="server"
                                                            ControlToValidate="fuIND" CssClass="red"
                                                            ErrorMessage="File size should not be greater than 20 MB."
                                                            Display="Dynamic" OnServerValidate="cvIND_ServerValidate">
                                                        </asp:CustomValidator>
                                                    </td>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblTCN">Load
                                                        Name
                                                        <span class="red">*</span>
                                                    </asp:Label>
                                                    <asp:DropDownList CssClass="form-control" runat="server"
                                                        ID="ddlCName" AutoPostBack="true"
                                                        OnSelectedIndexChanged="ddlCName_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator runat="server" ID="rfvCName"
                                                        CssClass="red" ControlToValidate="ddlCName" Display="Dynamic"
                                                        ErrorMessage="Please select cargo type">
                                                    </asp:RequiredFieldValidator>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblCReg"
                                                        Visible="false">
                                                        Registration No.</asp:Label>
                                                    <asp:TextBox runat="server" ID="txtCReg" MaxLength="50"
                                                        Visible="false">
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ID="rfvCReg"
                                                        CssClass="red" Visible="false" ControlToValidate="txtCReg"
                                                        Display="Dynamic" ErrorMessage="Please enter registration no.">
                                                    </asp:RequiredFieldValidator>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblCD">Load
                                                        Description
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtCDetails"
                                                        MaxLength="200">
                                                    </asp:TextBox>

                                                    <asp:Label CssClass="col-sm-12 red" runat="server" ID="lblCDetails"
                                                        Visible="false">Please enter cargo details
                                                    </asp:Label>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblTP">Phone
                                                        No.
                                                        <span class="red">*</span>
                                                    </asp:Label>

                                                    <div class="input-group col-sm-12 px-0">
                                                        <div class="input-group-prepend rounded-right-0">
                                                            <span class="input-group-text">
                                                                <asp:TextBox CssClass="border-0" runat="server"
                                                                    ID="txtCD" Width="32" Enabled="false" MaxLength="3"
                                                                    Text="255"></asp:TextBox>
                                                            </span>
                                                        </div>
                                                        <asp:TextBox CssClass="form-control" runat="server" ID="txtTP"
                                                            MaxLength="9">
                                                        </asp:TextBox>
                                                    </div>

                                                    <asp:RequiredFieldValidator runat="server" ID="rfvTP" CssClass="red"
                                                        ControlToValidate="txtTP" Display="Dynamic"
                                                        ErrorMessage="Please enter phone no.">
                                                    </asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator runat="server" ID="revPhone"
                                                        CssClass="red" ValidationExpression="^[0-9]{9}$"
                                                        ControlToValidate="txtTP" Display="Dynamic"
                                                        ErrorMessage="Please enter valid number">
                                                    </asp:RegularExpressionValidator>
                                                </div>

                                                <asp:PlaceHolder runat="server" ID="phPermit"></asp:PlaceHolder>
                                                <tr runat="server" id="trnop" visible="false">
                                                    <td>
                                                        <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                            <asp:Label CssClass="col-auto ps-0" runat="server"
                                                                ID="lblNumP">
                                                                Number of
                                                                Police
                                                                <span class="red">*</span>
                                                            </asp:Label>
                                                            <asp:TextBox CssClass="form-control" runat="server"
                                                                ID="txtNOP" MaxLength="5">
                                                            </asp:TextBox>
                                                            <asp:RequiredFieldValidator runat="server" ID="rfvNOP"
                                                                CssClass="red" ControlToValidate="txtNOP"
                                                                Display="Dynamic"
                                                                ErrorMessage="Please enter number of police">
                                                            </asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator runat="server" ID="revNOP"
                                                                CssClass="red" ValidationExpression="^[0-9]{1,2}$"
                                                                ControlToValidate="txtNOP" Display="Dynamic"
                                                                ErrorMessage="Please enter valid police number">
                                                            </asp:RegularExpressionValidator>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="trgnop" visible="false">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="trnov" visible="false">
                                                    <td>
                                                        <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                            <asp:Label CssClass="col-auto ps-0" runat="server"
                                                                ID="lblNumV">
                                                                Number of
                                                                Vehicles
                                                                <span class="red">*</span>
                                                            </asp:Label>
                                                            <asp:TextBox CssClass="form-control" runat="server"
                                                                ID="txtNOV" MaxLength="5">
                                                            </asp:TextBox>
                                                            <asp:RequiredFieldValidator runat="server" ID="rfvNOV"
                                                                CssClass="red" ControlToValidate="txtNOV"
                                                                Display="Dynamic"
                                                                ErrorMessage="Please enter number of vehicles">
                                                            </asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator runat="server" ID="revNOV"
                                                                CssClass="red" ValidationExpression="^[0-9]{1,2}$"
                                                                ControlToValidate="txtNOV" Display="Dynamic"
                                                                ErrorMessage="Please enter valid vehicle number">
                                                            </asp:RegularExpressionValidator>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="trgnov" visible="false">
                                                    <td>
                                                    </td>
                                                </tr>
                                            </div>

                                        </fieldset>

                                        <fieldset>
                                            <h4 class="mt-3">
                                                <asp:Label runat="server" ID="lblJou">
                                                    Journey:</asp:Label>
                                            </h4>

                                            <div class="row">
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblJD">Date
                                                        of the
                                                        Transport
                                                        <span class="red">*</span>
                                                    </asp:Label>

                                                    <div class="input-group col-sm-12 px-0">
                                                        <asp:TextBox CssClass="form-control Displaytext" ID="txtJDate"
                                                            runat="server" AutoPostBack="true"
                                                            OnTextChanged="txtDate_TextChanged"></asp:TextBox>
                                                        <div class="input-group-append rounded-left-0">
                                                            <asp:ImageButton CssClass="input-group-text" runat="server"
                                                                CausesValidation="false" ID="iPopup"
                                                                ImageUrl="/images/calendar.png" />
                                                        </div>
                                                    </div>

                                                    <asp:RequiredFieldValidator runat="server" ID="rfvJDate"
                                                        CssClass="red" Display="Dynamic" ControlToValidate="txtJDate"
                                                        ErrorMessage="Please enter journey to">
                                                    </asp:RequiredFieldValidator>

                                                    <ajaxToolkit:CalendarExtender ID="Calendar1" runat="server"
                                                        PopupButtonID="iPopup" TargetControlID="txtJDate"
                                                        Format="dd/MM/yyyy">
                                                    </ajaxToolkit:CalendarExtender>
                                                    <asp:comparevalidator ID="cmpJDate" runat="server" Display="Dynamic"
                                                        errormessage="The date must be greater than equal to today"
                                                        CssClass="red" controltovalidate="txtJDate" type="date"
                                                        Operator="GreaterThanEqual"
                                                        valuetocompare="<%# DateTime.Today.ToShortDateString() %>" />
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblED">Permit
                                                        Expired Date
                                                        <span class="red">*</span>
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtTo1"
                                                        MaxLength="100" Enabled="false">
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server"
                                                        ID="RequiredFieldValidator12" CssClass="red" Display="Dynamic"
                                                        ControlToValidate="txtTo1" ErrorMessage="Please enter to date">
                                                    </asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                        </fieldset>

                                        <fieldset>
                                            <h4 class="mt-3">
                                                <asp:Label runat="server" ID="lblTInfo">
                                                    Transport Information:
                                                </asp:Label>
                                            </h4>

                                            <div class="table-responsive mb-5">
                                                <table
                                                    class="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1">
                                                    <thead
                                                        class="HeaderDatagrid fw-bold fs-6 text-gray-800 border-bottom border-gray-200">
                                                        <tr>
                                                            <td>
                                                            </td>
                                                            <td>
                                                                <asp:Label runat="server" ID="lblULaden">Unladen
                                                                    Vehicle
                                                                    <span class="red">*</span>
                                                                </asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:Label runat="server" ID="lblLoad">Load
                                                                    <span class="red">*</span>
                                                                </asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:Label runat="server" ID="lblLaden">Laden
                                                                    Vehicle
                                                                    <span class="red">*</span>
                                                                </asp:Label>
                                                            </td>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <asp:Label runat="server" ID="lblDL">Length (Metres)
                                                                </asp:Label>
                                                            </td>
                                                            <td>
                                                                <div class="input-group col-sm-12 min-w-200px px-0">
                                                                    <asp:TextBox CssClass="form-control" ID="txtLength2"
                                                                        MaxLength="5" runat="server"></asp:TextBox>
                                                                    <div class="input-group-append rounded-left-0">
                                                                        <span class="input-group-text">M</span>
                                                                    </div>
                                                                </div>

                                                                <asp:RequiredFieldValidator runat="server"
                                                                    ID="rfvLength" CssClass="red" Display="Dynamic"
                                                                    ControlToValidate="txtLength2"
                                                                    ErrorMessage="Please enter Lenghth">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator runat="server"
                                                                    ID="revLength2" CssClass="red"
                                                                    ValidationExpression="^(?:\d{1,2})?(?:\.\d{1,2})?$"
                                                                    ControlToValidate="txtLength" Display="Dynamic"
                                                                    ErrorMessage="Please enter valid length">
                                                                </asp:RegularExpressionValidator>
                                                            </td>
                                                            <td>
                                                                <div class="input-group col-sm-12 min-w-200px px-0">
                                                                    <asp:TextBox CssClass="form-control" ID="txtLength1"
                                                                        MaxLength="5" runat="server"></asp:TextBox>
                                                                    <div class="input-group-append rounded-left-0">
                                                                        <span class="input-group-text">M</span>
                                                                    </div>
                                                                </div>

                                                                <asp:RequiredFieldValidator runat="server"
                                                                    ID="RequiredFieldValidator10" CssClass="red"
                                                                    Display="Dynamic" ControlToValidate="txtLength1"
                                                                    ErrorMessage="Please enter Lenghth">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator runat="server"
                                                                    ID="RegularExpressionValidator2" CssClass="red"
                                                                    ValidationExpression="^(?:\d{1,2})?(?:\.\d{1,2})?$"
                                                                    ControlToValidate="txtLength1" Display="Dynamic"
                                                                    ErrorMessage="Please enter valid length">
                                                                </asp:RegularExpressionValidator>
                                                            </td>
                                                            <td>
                                                                <div class="input-group col-sm-12 min-w-200px px-0">
                                                                    <asp:TextBox CssClass="form-control" ID="txtLength"
                                                                        MaxLength="5" runat="server"></asp:TextBox>
                                                                    <div class="input-group-append rounded-left-0">
                                                                        <span class="input-group-text">M</span>
                                                                    </div>
                                                                </div>

                                                                <asp:RequiredFieldValidator runat="server"
                                                                    ID="RequiredFieldValidator13" CssClass="red"
                                                                    Display="Dynamic" ControlToValidate="txtLength"
                                                                    ErrorMessage="Please enter Lenghth">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator runat="server"
                                                                    ID="RegularExpressionValidator3" CssClass="red"
                                                                    ValidationExpression="^(?:\d{1,2})?(?:\.\d{1,2})?$"
                                                                    ControlToValidate="txtLength" Display="Dynamic"
                                                                    ErrorMessage="Please enter valid length">
                                                                </asp:RegularExpressionValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label runat="server" ID="lblDH">Height (Metres)
                                                                </asp:Label>
                                                            </td>
                                                            <td>
                                                                <div class="input-group col-sm-12 min-w-200px px-0">
                                                                    <asp:TextBox CssClass="form-control" ID="txtHeight2"
                                                                        MaxLength="4" runat="server"></asp:TextBox>
                                                                    <div class="input-group-append rounded-left-0">
                                                                        <span class="input-group-text">M</span>
                                                                    </div>
                                                                </div>

                                                                <asp:RequiredFieldValidator runat="server"
                                                                    ID="rfvHeight" CssClass="red" Display="Dynamic"
                                                                    ControlToValidate="txtHeight2"
                                                                    ErrorMessage="Please enter Height">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator runat="server"
                                                                    ID="revHeight" CssClass="red"
                                                                    ValidationExpression="^(?:\d{1})?(?:\.\d{1,2})?$"
                                                                    ControlToValidate="txtHeight2" Display="Dynamic"
                                                                    ErrorMessage="Please enter valid height">
                                                                </asp:RegularExpressionValidator>
                                                            </td>
                                                            <td>
                                                                <div class="input-group col-sm-12 min-w-200px px-0">
                                                                    <asp:TextBox CssClass="form-control" ID="txtHeight1"
                                                                        MaxLength="4" runat="server"></asp:TextBox>
                                                                    <div class="input-group-append rounded-left-0">
                                                                        <span class="input-group-text">M</span>
                                                                    </div>
                                                                </div>

                                                                <asp:RequiredFieldValidator runat="server"
                                                                    ID="RequiredFieldValidator16" CssClass="red"
                                                                    Display="Dynamic" ControlToValidate="txtHeight1"
                                                                    ErrorMessage="Please enter Height">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator runat="server"
                                                                    ID="RegularExpressionValidator6" CssClass="red"
                                                                    ValidationExpression="^(?:\d{1})?(?:\.\d{1,2})?$"
                                                                    ControlToValidate="txtHeight1" Display="Dynamic"
                                                                    ErrorMessage="Please enter valid height">
                                                                </asp:RegularExpressionValidator>
                                                            </td>
                                                            <td>
                                                                <div class="input-group col-sm-12 min-w-200px px-0">
                                                                    <asp:TextBox CssClass="form-control" ID="txtHeight"
                                                                        MaxLength="4" AutoPostBack="true"
                                                                        OnTextChanged="txtHeight_TextChanged"
                                                                        runat="server"></asp:TextBox>
                                                                    <div class="input-group-append rounded-left-0">
                                                                        <span class="input-group-text">M</span>
                                                                    </div>
                                                                </div>

                                                                <asp:RequiredFieldValidator runat="server"
                                                                    ID="RequiredFieldValidator17" CssClass="red"
                                                                    Display="Dynamic" ControlToValidate="txtHeight"
                                                                    ErrorMessage="Please enter Height">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator runat="server"
                                                                    ID="RegularExpressionValidator7" CssClass="red"
                                                                    ValidationExpression="^(?:\d{1})?(?:\.\d{1,2})?$"
                                                                    ControlToValidate="txtHeight" Display="Dynamic"
                                                                    ErrorMessage="Please enter valid height">
                                                                </asp:RegularExpressionValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label runat="server" ID="lblDW">Width (Metres)
                                                                </asp:Label>
                                                            </td>
                                                            <td>
                                                                <div class="input-group col-sm-12 min-w-200px px-0">
                                                                    <asp:TextBox CssClass="form-control" ID="txtWidth2"
                                                                        MaxLength="4" runat="server"></asp:TextBox>
                                                                    <div class="input-group-append rounded-left-0">
                                                                        <span class="input-group-text">M</span>
                                                                    </div>
                                                                </div>

                                                                <asp:RequiredFieldValidator runat="server" ID="rfvWidth"
                                                                    CssClass="red" Display="Dynamic"
                                                                    ControlToValidate="txtWidth2"
                                                                    ErrorMessage="Please enter Width">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator runat="server"
                                                                    ID="revWidth" CssClass="red"
                                                                    ValidationExpression="^(?:\d{1})?(?:\.\d{1,2})?$"
                                                                    ControlToValidate="txtWidth2" Display="Dynamic"
                                                                    ErrorMessage="Please enter valid Width">
                                                                </asp:RegularExpressionValidator>
                                                            </td>
                                                            <td>
                                                                <div class="input-group col-sm-12 min-w-200px px-0">
                                                                    <asp:TextBox CssClass="form-control" ID="txtWidth1"
                                                                        MaxLength="4" runat="server"></asp:TextBox>
                                                                    <div class="input-group-append rounded-left-0">
                                                                        <span class="input-group-text">M</span>
                                                                    </div>
                                                                </div>

                                                                <asp:RequiredFieldValidator runat="server"
                                                                    ID="RequiredFieldValidator14" CssClass="red"
                                                                    Display="Dynamic" ControlToValidate="txtWidth1"
                                                                    ErrorMessage="Please enter Width">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator runat="server"
                                                                    ID="RegularExpressionValidator4" CssClass="red"
                                                                    ValidationExpression="^(?:\d{1})?(?:\.\d{1,2})?$"
                                                                    ControlToValidate="txtWidth1" Display="Dynamic"
                                                                    ErrorMessage="Please enter valid Width">
                                                                </asp:RegularExpressionValidator>
                                                            </td>
                                                            <td>
                                                                <div class="input-group col-sm-12 min-w-200px px-0">
                                                                    <asp:TextBox CssClass="form-control" ID="txtWidth"
                                                                        AutoPostBack="true" MaxLength="4"
                                                                        OnTextChanged="txtWidth_TextChanged"
                                                                        runat="server">
                                                                    </asp:TextBox>
                                                                    <div class="input-group-append rounded-left-0">
                                                                        <span class="input-group-text">M</span>
                                                                    </div>
                                                                </div>

                                                                <asp:RequiredFieldValidator runat="server"
                                                                    ID="RequiredFieldValidator15" CssClass="red"
                                                                    Display="Dynamic" ControlToValidate="txtWidth"
                                                                    ErrorMessage="Please enter Width">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator runat="server"
                                                                    ID="RegularExpressionValidator5" CssClass="red"
                                                                    ValidationExpression="^(?:\d{1})?(?:\.\d{1,2})?$"
                                                                    ControlToValidate="txtWidth" Display="Dynamic"
                                                                    ErrorMessage="Please enter valid Width">
                                                                </asp:RegularExpressionValidator>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td>
                                                                <asp:Label runat="server" ID="lblMass">Mass
                                                                    (Tonne)
                                                                </asp:Label>
                                                            </td>
                                                            <td>
                                                                <div class="input-group col-sm-12 min-w-200px px-0">
                                                                    <asp:TextBox CssClass="form-control" ID="txtMass2"
                                                                        MaxLength="5" runat="server"></asp:TextBox>
                                                                    <div class="input-group-append rounded-left-0">
                                                                        <span class="input-group-text">T</span>
                                                                    </div>
                                                                </div>

                                                                <asp:RequiredFieldValidator runat="server"
                                                                    ID="RequiredFieldValidator20" CssClass="red"
                                                                    Display="Dynamic" ControlToValidate="txtMass2"
                                                                    ErrorMessage="Please enter Mass">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator runat="server"
                                                                    ID="RegularExpressionValidator8" CssClass="red"
                                                                    ValidationExpression="^[0-9]+$"
                                                                    ControlToValidate="txtMass2" Display="Dynamic"
                                                                    ErrorMessage="Please enter valid mass">
                                                                </asp:RegularExpressionValidator>
                                                            </td>
                                                            <td>
                                                                <div class="input-group col-sm-12 min-w-200px px-0">
                                                                    <asp:TextBox CssClass="form-control" ID="txtMass1"
                                                                        MaxLength="5" runat="server"></asp:TextBox>
                                                                    <div class="input-group-append rounded-left-0">
                                                                        <span class="input-group-text">T</span>
                                                                    </div>
                                                                </div>

                                                                <asp:RequiredFieldValidator runat="server"
                                                                    ID="RequiredFieldValidator21" CssClass="red"
                                                                    Display="Dynamic" ControlToValidate="txtMass1"
                                                                    ErrorMessage="Please enter Mass">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator runat="server"
                                                                    ID="RegularExpressionValidator11" CssClass="red"
                                                                    ValidationExpression="^[0-9]+$"
                                                                    ControlToValidate="txtMass1" Display="Dynamic"
                                                                    ErrorMessage="Please enter valid mass">
                                                                </asp:RegularExpressionValidator>
                                                            </td>
                                                            <td>
                                                                <div class="input-group col-sm-12 min-w-200px px-0">
                                                                    <asp:TextBox CssClass="form-control" ID="txtMass"
                                                                        MaxLength="5" AutoPostBack="true"
                                                                        OnTextChanged="txtMass_TextChanged"
                                                                        runat="server">
                                                                    </asp:TextBox>
                                                                    <div class="input-group-append rounded-left-0">
                                                                        <span class="input-group-text">T</span>
                                                                    </div>
                                                                </div>

                                                                <asp:RequiredFieldValidator runat="server"
                                                                    ID="RequiredFieldValidator22" CssClass="red"
                                                                    Display="Dynamic" ControlToValidate="txtMass"
                                                                    ErrorMessage="Please enter Mass">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator runat="server"
                                                                    ID="RegularExpressionValidator12" CssClass="red"
                                                                    ValidationExpression="^[0-9]+$"
                                                                    ControlToValidate="txtMass" Display="Dynamic"
                                                                    ErrorMessage="Please enter valid mass">
                                                                </asp:RegularExpressionValidator>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div class="row">
                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblORear">
                                                        Overhang
                                                        Rear (M)
                                                    </asp:Label>

                                                    <div class="input-group col-sm-12 px-0">
                                                        <asp:TextBox CssClass="form-control" ID="txtHang" MaxLength="5"
                                                            runat="server"></asp:TextBox>
                                                        <div class="input-group-append rounded-left-0">
                                                            <span class="input-group-text">M</span>
                                                        </div>
                                                    </div>

                                                    <asp:RequiredFieldValidator runat="server"
                                                        ID="RequiredFieldValidator25" CssClass="red" Display="Dynamic"
                                                        ControlToValidate="txtHang" ErrorMessage="Please enter Lenghth">
                                                    </asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator runat="server"
                                                        ID="RegularExpressionValidator15" CssClass="red"
                                                        ValidationExpression="^(?:\d{1,2})?(?:\.\d{1,2})?$"
                                                        ControlToValidate="txtHang" Display="Dynamic"
                                                        ErrorMessage="Please enter valid length">
                                                    </asp:RegularExpressionValidator>
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblOFront">
                                                        Overhang Front
                                                        (motor vehicle) (M)</asp:Label>

                                                    <div class="input-group col-sm-12 px-0">
                                                        <asp:TextBox CssClass="form-control" ID="txtHand" MaxLength="5"
                                                            runat="server"></asp:TextBox>
                                                        <div class="input-group-append rounded-left-0">
                                                            <span class="input-group-text">M</span>
                                                        </div>
                                                    </div>

                                                    <asp:RequiredFieldValidator runat="server"
                                                        ID="RequiredFieldValidator28" CssClass="red" Display="Dynamic"
                                                        ControlToValidate="txtHand" ErrorMessage="Please enter Lenghth">
                                                    </asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator runat="server"
                                                        ID="RegularExpressionValidator18" CssClass="red"
                                                        ValidationExpression="^(?:\d{1,2})?(?:\.\d{1,2})?$"
                                                        ControlToValidate="txtHand" Display="Dynamic"
                                                        ErrorMessage="Please enter valid length">
                                                    </asp:RegularExpressionValidator>
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblORight">
                                                        Overhang Right
                                                        (M)
                                                    </asp:Label>
                                                    <div class="input-group col-sm-12 px-0">
                                                        <asp:TextBox CssClass="form-control" ID="txtORight"
                                                            MaxLength="5" runat="server"></asp:TextBox>
                                                        <div class="input-group-append rounded-left-0">
                                                            <span class="input-group-text">M</span>
                                                        </div>
                                                    </div>

                                                    <asp:RequiredFieldValidator runat="server"
                                                        ID="RequiredFieldValidator3" CssClass="red" Display="Dynamic"
                                                        ControlToValidate="txtORight" ErrorMessage="Please enter right">
                                                    </asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator runat="server"
                                                        ID="RegularExpressionValidator13" CssClass="red"
                                                        ValidationExpression="^(?:\d{1,2})?(?:\.\d{1,2})?$"
                                                        ControlToValidate="txtORight" Display="Dynamic"
                                                        ErrorMessage="Please enter valid right">
                                                    </asp:RegularExpressionValidator>
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblOLeft">
                                                        Overhang
                                                        Left (M)
                                                    </asp:Label>

                                                    <div class="input-group col-sm-12 px-0">
                                                        <asp:TextBox CssClass="form-control" ID="txtOLeft" MaxLength="5"
                                                            runat="server"></asp:TextBox>
                                                        <div class="input-group-append rounded-left-0">
                                                            <span class="input-group-text">M</span>
                                                        </div>
                                                    </div>

                                                    <asp:RequiredFieldValidator runat="server"
                                                        ID="RequiredFieldValidator4" CssClass="red" Display="Dynamic"
                                                        ControlToValidate="txtHand" ErrorMessage="Please enter right">
                                                    </asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator runat="server"
                                                        ID="RegularExpressionValidator14" CssClass="red"
                                                        ValidationExpression="^(?:\d{1,2})?(?:\.\d{1,2})?$"
                                                        ControlToValidate="txtORight" Display="Dynamic"
                                                        ErrorMessage="Please enter valid right">
                                                    </asp:RegularExpressionValidator>
                                                </div>

                                                <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblDraw">
                                                        Overhang
                                                        Front
                                                        (drawbar) (M)</asp:Label>

                                                    <div class="input-group col-sm-12 px-0">
                                                        <asp:TextBox CssClass="form-control" ID="txtFront" MaxLength="5"
                                                            runat="server"></asp:TextBox>
                                                        <div class="input-group-append rounded-left-0">
                                                            <span class="input-group-text">M</span>
                                                        </div>
                                                    </div>

                                                    <asp:RequiredFieldValidator runat="server"
                                                        ID="RequiredFieldValidator31" CssClass="red" Display="Dynamic"
                                                        ControlToValidate="txtFront"
                                                        ErrorMessage="Please enter Lenghth">
                                                    </asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator runat="server"
                                                        ID="RegularExpressionValidator21" CssClass="red"
                                                        ValidationExpression="^(?:\d{1,2})?(?:\.\d{1,2})?$"
                                                        ControlToValidate="txtFront" Display="Dynamic"
                                                        ErrorMessage="Please enter valid length">
                                                    </asp:RegularExpressionValidator>
                                                </div>

                                            </div>
                                        </fieldset>

                                        <fieldset>
                                            <h4 class="mt-3">
                                                <asp:Label runat="server" ID="lblVConfig">
                                                    Vehicle Configuration:
                                                </asp:Label>
                                            </h4>

                                            <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblACF">Axle
                                                    Configuration
                                                    <span class="red">*</span>
                                                </asp:Label>

                                                <asp:DropDownList CssClass="form-control" ID="ddlAC" runat="server"
                                                    AutoPostBack="true"
                                                    OnSelectedIndexChanged="ddlAC_SelectedIndexChanged">
                                                    <asp:ListItem Value="">Select
                                                        Axle Configuration
                                                    </asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvAC" CssClass="red"
                                                    ControlToValidate="ddlAC" Display="Dynamic"
                                                    ErrorMessage="Please select Axle Configuration">
                                                </asp:RequiredFieldValidator>
                                            </div>

                                        </fieldset>

                                        <fieldset id="fsReg">
                                            <h4 class="mt-3">
                                                <asp:Label runat="server" ID="lblVRD">
                                                    Vehicle Registration Details:
                                                </asp:Label>
                                            </h4>

                                            <div class="row">
                                                    <asp:PlaceHolder runat="server" ID="phAxel">
                                                    </asp:PlaceHolder>
                                            </div>
                                        </fieldset>

                                        <fieldset>
                                            <h4>
                                                <asp:Label runat="server" ID="lblAInfo">Axle
                                                    Information:
                                                </asp:Label>
                                            </h4>
                                            <div class="table-responsive mb-4">
                                                <table id="table_input"
                                                    class="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1">
                                                    <thead
                                                        class="HeaderDatagrid fw-bold fs-6 text-gray-800 border-bottom border-gray-200">
                                                        <tr>
                                                            <td>

                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label runat="server" ID="lblANo">Axle No.
                                                                </asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:Label runat="server" ID="lblASpace">Axle
                                                                    Spacing (M)
                                                                </asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:Label runat="server" ID="lblRAL">Required
                                                                    Axle Load
                                                                    (Kg)</asp:Label><span class="red"></span>
                                                            </td>
                                                            <td>
                                                                <asp:Label runat="server" ID="lblAAL">Actual
                                                                    Axle Load
                                                                    (Kg)
                                                                </asp:Label>
                                                            </td>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <asp:PlaceHolder runat="server" ID="phPermit1">
                                                        </asp:PlaceHolder>
                                                        <tr>
                                                            <td>
                                                                <asp:Label runat="server" ID="lblTW">Total
                                                                    Weight
                                                                </asp:Label><span class="red">*</span>
                                                            </td>
                                                            <td>
                                                                <div class="input-group col-sm-12 min-w-200px px-0">
                                                                    <asp:TextBox CssClass="form-control" ID="txtWT"
                                                                        MaxLength="10" Enabled="false" runat="server">
                                                                    </asp:TextBox>
                                                                    <div class="input-group-append rounded-left-0">
                                                                        <span class="input-group-text">Kg</span>
                                                                    </div>
                                                                </div>

                                                                <asp:RequiredFieldValidator runat="server" ID="rfvWT"
                                                                    CssClass="red" Display="Dynamic"
                                                                    ControlToValidate="txtWT"
                                                                    ErrorMessage="Please enter weight">
                                                                </asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator runat="server"
                                                                    ID="revWT" CssClass="red"
                                                                    ValidationExpression="^[0-9]+$"
                                                                    ControlToValidate="txtWT" Display="Dynamic"
                                                                    ErrorMessage="Please enter valid weight">
                                                                </asp:RegularExpressionValidator>
                                                            </td>
                                                            <td></td>
                                                            <td></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                        </fieldset>

                                        <fieldset>
                                            <h4 class="mt-3">
                                                <asp:Label runat="server" ID="lblRoute">
                                                    Route Information:
                                                </asp:Label>
                                            </h4>

                                            <div class="row">

                                                <div class="form-group mx-0 mb-3 col-sm-4 col-md-4">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblF">
                                                        FROM
                                                        <span class="red">*</span>
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtFrom"
                                                        MaxLength="50">
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ID="rfvFrom"
                                                        CssClass="red" Display="Dynamic" ControlToValidate="txtFrom"
                                                        ErrorMessage="Please enter point of loading">
                                                    </asp:RequiredFieldValidator>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-4 col-md-4">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblT">
                                                        TO
                                                        <span class="red">*</span>
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtTo"
                                                        MaxLength="50">
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ID="rfvTo" CssClass="red"
                                                        Display="Dynamic" ControlToValidate="txtTo"
                                                        ErrorMessage="Please enter route / itinerary">
                                                    </asp:RequiredFieldValidator>
                                                </div>
                                                <div class="form-group mx-0 mb-3 col-sm-4 col-md-4">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblV">
                                                        VIA
                                                        <span class="red">*</span>
                                                    </asp:Label>
                                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtVia"
                                                        MaxLength="100">
                                                    </asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ID="rfvVia"
                                                        CssClass="red" Display="Dynamic" ControlToValidate="txtVia"
                                                        ErrorMessage="Please enter Via">
                                                    </asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                        </fieldset>

                                        <fieldset runat="server" id="fsEscort" visible="false">
                                            <h4 class="mt-3">
                                                <asp:Label runat="server" ID="lblEV">Escort
                                                    Vehicle:</asp:Label>
                                            </h4>
                                            <div class="row">
                                                <asp:PlaceHolder runat="server" Visible="false" ID="phEscort">
                                                </asp:PlaceHolder>
                                            </div>
                                        </fieldset>

                                        <fieldset>
                                            <h4 class="mt-3">
                                                <asp:Label runat="server" ID="lblAttach">
                                                    Attachments:</asp:Label>
                                            </h4>

                                            <div class="row">
                                                <asp:PlaceHolder runat="server" ID="phHorse">
                                                </asp:PlaceHolder>
                                            </div>

                                            <div id="attachments" class="row">
                                                <div class="form-group mx-0 mb-3 col-sm-12">
                                                    <tr runat="server" id="trHire" visible="false">
                                                        <td>
                                                            <asp:Label CssClass="col-sm-6 col-xl-4 ps-0" runat="server"
                                                                ID="lblEHire">Existing Hiring Agreement</asp:Label>
                                                            <asp:LinkButton CssClass="col-sm-6 col-xl-4 px-0"
                                                                runat="server" ID="lnkHire" CausesValidation="false"
                                                                OnClientClick="window.document.forms[0].target='_blank';"
                                                                OnClick="lnkHire_Click">
                                                            </asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </div>
                                                <div class="form-group mx-0 row mb-3 col-sm-12">
                                                    <asp:Label CssClass="col-sm-6 col-xl-4 ps-0" runat="server"
                                                        ID="lblHire">
                                                        Upload
                                                        Hiring
                                                        Agreement </asp:Label>
                                                    <asp:FileUpload CssClass="col-sm-6 col-xl-4 px-0" runat="server"
                                                        ID="fuHire"
                                                        ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                                    <asp:Label CssClass="col-sm-12 red" runat="server" ID="Label2"
                                                        Visible="false">Please upload
                                                        document</asp:Label>
                                                    <asp:RegularExpressionValidator runat="server"
                                                        ID="RegularExpressionValidator1" CssClass="red"
                                                        ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                        ControlToValidate="fuImages" Display="Dynamic"
                                                        ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt">
                                                    </asp:RegularExpressionValidator>
                                                    <asp:CustomValidator ID="cvHire" runat="server"
                                                        ControlToValidate="fuHire" CssClass="red"
                                                        ErrorMessage="File size should not be greater than 20 MB."
                                                        Display="Dynamic" OnServerValidate="cvHire_ServerValidate">
                                                    </asp:CustomValidator>
                                                </div>
                                                <tr runat="server" id="treDraw" visible="false">
                                                    <td>
                                                        <div class="form-group mx-0 mb-3 col-sm-12">
                                                            <asp:Label CssClass="col-sm-6 col-xl-4 ps-0" runat="server"
                                                                ID="lblECID">Existing
                                                                Cargo
                                                                Images
                                                                & Drawings</asp:Label>
                                                            <asp:LinkButton CssClass="col-sm-6 col-xl-4 px-0" runat="server"
                                                                ID="lnkImages" CausesValidation="false"
                                                                OnClientClick="window.document.forms[0].target='_blank';"
                                                                OnClick="lnkImages_Click">
                                                            </asp:LinkButton>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <div class="form-group row mx-0 mb-3 col-sm-12">
                                                    <asp:Label CssClass="col-sm-6 col-xl-4 ps-0" runat="server"
                                                        ID="lblCID">Upload Cargo Images & Drawings</asp:Label>
                                                    <div class="col-sm-6 col-xl-4 px-0">
                                                        <asp:FileUpload runat="server" ID="fuImages"
                                                            ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                                        <asp:Label CssClass="col-sm-12 red" runat="server"
                                                            ID="lblfuImages" Visible="false">Please upload
                                                            document</asp:Label>
                                                        <asp:RegularExpressionValidator runat="server" ID="revImages"
                                                            CssClass="red"
                                                            ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                            ControlToValidate="fuImages" Display="Dynamic"
                                                            ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt">
                                                        </asp:RegularExpressionValidator>
                                                        <asp:CustomValidator ID="cvImages" runat="server"
                                                            ControlToValidate="fuImages" CssClass="red"
                                                            ErrorMessage="File size should not be greater than 20 MB."
                                                            Display="Dynamic"
                                                            OnServerValidate="cvImages_ServerValidate">
                                                        </asp:CustomValidator>
                                                    </div>
                                                </div>
                                                <tr runat="server" id="trEWeight" visible="false">
                                                    <td>
                                                        <div class="form-group row mx-0 mb-3 col-sm-12">
                                                            <asp:Label CssClass="col-sm-6 col-xl-4 ps-0" runat="server"
                                                                ID="lblEWTT">Existing
                                                                Weigh Ticket from TANROADS</asp:Label>
                                                            <asp:LinkButton CssClass="col-sm-12" runat="server"
                                                                ID="lnkEWeight" CausesValidation="false"
                                                                OnClientClick="window.document.forms[0].target='_blank';"
                                                                OnClick="lnkEWeight_Click">
                                                            </asp:LinkButton>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="trWeight" visible="true">
                                                    <td>
                                                        <div class="form-group mx-0 row mb-3 col-sm-12">
                                                            <asp:Label CssClass="col-sm-6 col-xl-4 ps-0" runat="server"
                                                                ID="lblWTT">Upload
                                                                Weigh Ticket
                                                                from TANROADS</asp:Label>
                                                            <div class="col-sm-6 col-xl-4 px-0">
                                                                <asp:FileUpload runat="server" ID="fuTan"
                                                                    ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                                                <asp:Label CssClass="col-sm-12 red" runat="server"
                                                                    ID="lblfuTan" Visible="false">Please upload
                                                                    document</asp:Label>
                                                                <asp:RegularExpressionValidator runat="server"
                                                                    ID="revTan" CssClass="red"
                                                                    ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                                    ControlToValidate="fuTan" Display="Dynamic"
                                                                    ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt">
                                                                </asp:RegularExpressionValidator>
                                                                <asp:CustomValidator ID="cvTan" runat="server"
                                                                    ControlToValidate="fuTan" CssClass="red"
                                                                    ErrorMessage="File size should not be greater than 20 MB."
                                                                    Display="Dynamic"
                                                                    OnServerValidate="cvTan_ServerValidate">
                                                                </asp:CustomValidator>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="trgWeight" visible="true">
                                                    <td></td>
                                                </tr>
                                                <tr runat="server" id="trEPolice" visible="false">
                                                    <td>
                                                        <div class="form-group mx-0 row mb-3 col-sm-12">
                                                            <asp:Label CssClass="col-sm-6 col-xl-4 ps-0" runat="server"
                                                                ID="lblECLP">Existing
                                                                Confirmation
                                                                Letter from Police</asp:Label>
                                                            <asp:LinkButton CssClass="col-sm-6 col-xl-4 px-0" runat="server"
                                                                ID="lnkEPolice" CausesValidation="false"
                                                                OnClientClick="window.document.forms[0].target='_blank';"
                                                                OnClick="lnkEPolice_Click">
                                                            </asp:LinkButton>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="trPolice" visible="false">
                                                    <td>
                                                        <div class="form-group mx-0 row mb-3 col-sm-12">
                                                            <asp:Label CssClass="col-sm-6 col-xl-4 ps-0" runat="server"
                                                                ID="lblCLP">Upload
                                                                Confirmation
                                                                Letter from Police</asp:Label>
                                                            <div class="col-sm-6 col-xl-4 px-0">
                                                                <asp:FileUpload runat="server" ID="fuPolice"
                                                                    ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />

                                                                <asp:RegularExpressionValidator runat="server"
                                                                    ID="revPolice" CssClass="red"
                                                                    ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                                    ControlToValidate="fuPolice" Display="Dynamic"
                                                                    ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt">
                                                                </asp:RegularExpressionValidator>
                                                                <asp:CustomValidator ID="cvPolice" runat="server"
                                                                    ControlToValidate="fuPolice" CssClass="red"
                                                                    ErrorMessage="File size should not be greater than 20 MB."
                                                                    Display="Dynamic"
                                                                    OnServerValidate="cvPolice_ServerValidate">
                                                                </asp:CustomValidator>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="trgPolice" visible="false">
                                                    <td></td>
                                                </tr>
                                                <tr runat="server" id="trETanesco" visible="false">
                                                    <td>
                                                        <div class="form-group mx-0 row mb-3 col-sm-12">
                                                            <asp:Label CssClass="col-sm-6 col-xl-4 ps-0" runat="server"
                                                                ID="lblECLT">Existing
                                                                Confirmation
                                                                Letter from TANESCO</asp:Label>
                                                            <asp:LinkButton CssClass="col-sm-6 col-xl-4 px-0" runat="server"
                                                                ID="lnkETanesco" CausesValidation="false"
                                                                OnClientClick="window.document.forms[0].target='_blank';"
                                                                OnClick="lnkETanesco_Click">
                                                            </asp:LinkButton>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="trTanesco" visible="false">
                                                    <td>
                                                        <div class="form-group mx-0 row mb-3 col-sm-12">
                                                            <asp:Label CssClass="col-sm-6 col-xl-4 ps-0" runat="server"
                                                                ID="lblCLT">Upload
                                                                Confirmation
                                                                Letter from TANESCO</asp:Label>
                                                            <div class="col-sm-6 col-xl-4 px-0">

                                                                <asp:FileUpload runat="server" ID="fuTanesco"
                                                                    ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />

                                                                <asp:RegularExpressionValidator runat="server"
                                                                    ID="revTanesco" CssClass="red"
                                                                    ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                                    ControlToValidate="fuTanesco" Display="Dynamic"
                                                                    ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt">
                                                                </asp:RegularExpressionValidator>
                                                                <asp:CustomValidator ID="cvTanesco" runat="server"
                                                                    ControlToValidate="fuTanesco" CssClass="red"
                                                                    ErrorMessage="File size should not be greater than 20 MB."
                                                                    Display="Dynamic"
                                                                    OnServerValidate="cvTanesco_ServerValidate">
                                                                </asp:CustomValidator>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="trgTanesco" visible="false">
                                                    <td></td>
                                                </tr>
                                                <tr runat="server" id="trERoute" visible="false">
                                                    <td>
                                                        <div class="form-group mx-0 mb-3 col-sm-12">
                                                            <asp:Label CssClass="col-auto ps-0" runat="server"
                                                                ID="lblERS">Existing
                                                                Route
                                                                Survey
                                                            </asp:Label>
                                                            <asp:LinkButton CssClass="col-sm-12" runat="server"
                                                                ID="lnkERoute" CausesValidation="false"
                                                                OnClientClick="window.document.forms[0].target='_blank';"
                                                                OnClick="lnkERoute_Click">
                                                            </asp:LinkButton>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="trgRoute" visible="false">
                                                    <td></td>
                                                </tr>
                                                <tr runat="server" id="trEAdvg" visible="false">
                                                    <td>
                                                        <div class="form-group mx-0 mb-3 col-sm-12">
                                                            <asp:Label CssClass="col-auto ps-0" runat="server"
                                                                ID="lblEAdvg">Existing
                                                                Advertisement</asp:Label>
                                                            <asp:LinkButton CssClass="col-sm-12" runat="server"
                                                                ID="lnkEAdvg" CausesValidation="false"
                                                                OnClientClick="window.document.forms[0].target='_blank';"
                                                                OnClick="lnkEAdvg_Click">
                                                            </asp:LinkButton>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="trAdvg" visible="false">
                                                    <td>
                                                        <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                            <asp:Label CssClass="col-auto ps-0" runat="server"
                                                                ID="lblAdvg">Upload
                                                                Advertisement
                                                            </asp:Label>
                                                            <asp:FileUpload runat="server" ID="fuAdvg"
                                                                ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                                            <asp:RegularExpressionValidator runat="server" ID="revAdvg"
                                                                CssClass="red"
                                                                ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                                ControlToValidate="fuAdvg" Display="Dynamic"
                                                                ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt">
                                                            </asp:RegularExpressionValidator>
                                                            <asp:CustomValidator ID="cvAdvg" runat="server"
                                                                ControlToValidate="fuAdvg" CssClass="red"
                                                                ErrorMessage="File size should not be greater than 20 MB."
                                                                Display="Dynamic"
                                                                OnServerValidate="cvAdvg_ServerValidate">
                                                            </asp:CustomValidator>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="trgAdvg" visible="false">
                                                    <td></td>
                                                </tr>
                                                <tr runat="server" id="trEMass" visible="false">
                                                    <td>
                                                        <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                            <asp:Label CssClass="col-auto ps-0" runat="server"
                                                                ID="Label5">Existing
                                                                Mass
                                                                Document
                                                            </asp:Label>
                                                            <asp:LinkButton runat="server" ID="lnkEMass"
                                                                CausesValidation="false"
                                                                OnClientClick="window.document.forms[0].target='_blank';"
                                                                OnClick="lnkEMass_Click">
                                                            </asp:LinkButton>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="trMass" visible="false">
                                                    <td>
                                                        <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                            <asp:Label CssClass="col-auto ps-0" runat="server"
                                                                ID="lblMD">Upload Mass
                                                                Document
                                                            </asp:Label>
                                                            <span class="red">*</span>
                                                            <asp:FileUpload runat="server" ID="fuMass"
                                                                ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                                            <asp:RegularExpressionValidator runat="server"
                                                                ID="RegularExpressionValidator9" CssClass="red"
                                                                ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                                ControlToValidate="fuMass" Display="Dynamic"
                                                                ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt">
                                                            </asp:RegularExpressionValidator>
                                                            <asp:CustomValidator ID="cuMass" runat="server"
                                                                ControlToValidate="fuMass" CssClass="red"
                                                                ErrorMessage="File size should not be greater than 20 MB."
                                                                Display="Dynamic"
                                                                OnServerValidate="cvMass_ServerValidate">
                                                            </asp:CustomValidator>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr runat="server" id="trgMass" visible="false">
                                                    <td></td>
                                                </tr>
                                            </div>


                                            <!-- <div class="row"> -->
                                            <div class="form-group mx-0 mb-3 col-sm-6 col-md-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblEBC">Enter
                                                    Below Code
                                                    <span class="red">*</span>
                                                </asp:Label>
                                                <asp:TextBox CssClass="form-control" runat="server" ID="txtCaptcha"
                                                    MaxLength="200">
                                                </asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvCaptcha"
                                                    CssClass="red" ControlToValidate="txtCaptcha" Display="Dynamic"
                                                    ErrorMessage="Please enter captcha code">
                                                </asp:RequiredFieldValidator>
                                                <asp:CustomValidator ID="cvCaptcha" runat="server"
                                                    ControlToValidate="txtCaptcha"
                                                    ErrorMessage="Please enter valid captcha code, try again."
                                                    Display="Dynamic" CssClass="red"
                                                    OnServerValidate="cvCaptcha_ServerValidate">
                                                </asp:CustomValidator>
                                            </div>
                                            <div class="d-flex justify-content-end col-sm-6 mb-5">
                                                <asp:Image ID="imgCaptcha" runat="server" Height="34" />
                                                <asp:ImageButton runat="server" ImageUrl="~/images/refresh.png"
                                                    CausesValidation="false" ID="imgCaptcha1"
                                                    OnClick="imgCaptcha1_Click" />
                                            </div>

                                            <!-- </div> -->

                                        </fieldset>


                                        <fieldset runat="server" id="fsTrans" visible="false">
                                            <h4 class="mt-3">
                                                <asp:Label runat="server" ID="lblDFM">
                                                    Document from MOWTC (Works)
                                                </asp:Label>
                                            </h4>

                                            <asp:LinkButton runat="server" ID="lnkTrans" CausesValidation="false"
                                                OnClick="lnkTrans_Click" />

                                        </fieldset>

                                        <fieldset>
                                            <h4 class="mt-3">
                                                <asp:Label runat="server" ID="lblCmts">Comments:</asp:Label>
                                            </h4>

                                            <tr runat="server" id="trgrid" visible="true">
                                                <td>
                                                    <div class="table-responsive">

                                                        <asp:GridView ID="gvComments"
                                                            CssClass="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1"
                                                            runat="server" AutoGenerateColumns="false" Width="100%"
                                                            EmptyDataText="No comments exists" GridLines="None"
                                                            HeaderStyle-CssClass="fw-bold fs-6 text-gray-800 border-bottom border-gray-200 table_header"
                                                            PageSize="10" AllowPaging="true" ShowHeader="false">
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="Commentd On"
                                                                    ItemStyle-VerticalAlign="Top"
                                                                    ItemStyle-Width="60px">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblCD" runat="server">
                                                                            <br />Commented
                                                                            By:<br />Commented
                                                                            Date:<br />Comment:<br />
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Commented By"
                                                                    ItemStyle-VerticalAlign="Top"
                                                                    ItemStyle-Width="200px">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblCB" runat="server">
                                                                            <br /><%# Eval("FullName") %><br /><%# Eval("Comments_Date") %><br /><%# Eval("Comments") %><br />
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                            </Columns>
                                                        </asp:GridView>

                                                    </div>
                                                </td>
                                            </tr>
                                            <tr runat="server" id="trgv" visible="false">
                                                <td></td>
                                            </tr>
                                        </fieldset>


                                        <tr runat="server" id="tralc" visible="true">

                                            <td>
                                                <div class="form-group mx-0 mb-3 col-sm-12 col-md-9 mt-3">
                                                    <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblComments">
                                                        Comments
                                                        <span class="red">*</span>
                                                    </asp:Label>
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
                                            <td></td>
                                        </tr>

                                        <div class="form-group mb-3 d-flex justify-content-end">
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnSubmit" runat="server" Text="Submit" OnClientClick="Function2();"
                                                OnClick="btnSubmit_Click" />
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap"
                                                runat="server" ID="btnCancel" Text="Cancel" OnClientClick="Function2();"
                                                OnClick="btnCancel_Click" />
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
            <Triggers>
                <asp:PostBackTrigger ControlID="btnSubmit" />
            </Triggers>
        </asp:UpdatePanel>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
    <script src="/assets/dataTable/js/jquery.dataTables.min.js"></script>

    <script>
        (function () {
            $(function () {
                var applicant_details_ID = $('#applicant_details');
                var load_info_ID = $('#load_info');
                var carOwnership = $('[id*=ddlVeh]');

                // var table_input = $('#table_input');

                AppDet_hideEmptyFormGroups(carOwnership, applicant_details_ID);

                hide_d_none_span_FormGroup(carOwnership, applicant_details_ID);

                hideEmptyFormGroups(load_info_ID);

                // add_Class_To_Table_Input(table_input);

            });
        }());

        /*
         *The function hides the div elements with [form-group] class with zero children.
         */

        function AppDet_hideEmptyFormGroups(carOwnership, rowID) {
            if (isNotHiredVehicle(carOwnership)) {
                hideEmptyFormGroups(rowID);
            } else {
                showEmptyFormGroups(rowID);
            }
        }

        function hideEmptyFormGroups(rowID) {
            $(rowID).find($(".form-group:not(:has(*))")).css('display', 'none');
        }

        function showEmptyFormGroups(rowID) {
            $(rowID).find(
                $(".form-group:has(*)")
            ).css('display', 'block');
        }

        function hide_d_none_span_FormGroup(carOwnership, rowID) {
            var details = $(rowID).find($(".form-group span[data-val-display=Dynamic]"))

            $.each(details, function (indexInArray, valueOfElement) {
                if ($(valueOfElement).css('display') === 'none') {

                    if (isNotHiredVehicle(carOwnership)) {
                        $(valueOfElement).parent().css('display', 'none');
                    } else {
                        $(valueOfElement).parent().css('display', 'block');
                    }
                }
            });
        }

        function add_Class_To_Table_Input(table_input) {
            var table_input = $('#table_input').find($('input'));

            $(table_input).addClass('form-control');
        }

        function isNotHiredVehicle(carOwnership) {
            return $(carOwnership).val() != 2;
        }
    </script>

</asp:Content>