<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplyPermit_Old.aspx.cs" MasterPageFile="~/Default.Master" Inherits="PresentationLayer.Permit.ApplyPermit_Old" %>

<%@ MasterType VirtualPath="~/Default.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                                <asp:Label runat="server" ID="lblAP">Apply Permit</asp:Label>
                            </h1>
                            <!--end::Title-->
                            <!--begin::Breadcrumb-->
                            <ul class="breadcrumb fw-bold fs-base my-1">
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                                </li>
                                <li class="breadcrumb-item text-dark">Apply Permit</li>
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



                                        <fieldset>
                                            <td style="width: 48%; text-align:right">
                                                <asp:LinkButton runat="server" CssClass="navigationbar" Visible="true"
                                                    ID="lnkEnglish" CausesValidation="false" OnClick="lnkEnglish_Click">
                                                    English
                                                </asp:LinkButton>
                                                <asp:LinkButton runat="server" Visible="true"
                                                    CausesValidation="false" CssClass="navigationbar" ID="lnkSwahili"
                                                    OnClick="lnkSwahili_Click">Swahili</asp:LinkButton>
                                            </td>
                                            <table style="width: 100%;">
                                                <tr>
                                                    <td>
                                                        <fieldset>
                                                            <legend>
                                                                <asp:Label runat="server" ID="lblVC">Vehicle & Cargo Details:</asp:Label>
                                                            </legend>

                                                            <table style="width: 100%;">
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblCargo">Type of
                                                                            Vehicle
                                                                            <span class="red">*</span>
                                                                        </asp:Label>
                                                                        <asp:DropDownList runat="server" ID="ddlCargo"
                                                                            Width="190" AutoPostBack="true"
                                                                            OnSelectedIndexChanged="ddlCargo_SelectedIndexChanged">
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator runat="server"
                                                                            ID="rfvCargo" CssClass="red"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="ddlCargo"
                                                                            ErrorMessage="Please select vehicle type">
                                                                        </asp:RequiredFieldValidator>

                                                                    </td>
                                                                </tr>
                                                                <tr runat="server" id="tr2">
                                                                    <td></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblTCN">Type of
                                                                            Cargo Name
                                                                        </asp:Label>
                                                                        <span class="red">*</span>
                                                                        <asp:DropDownList runat="server" Width="190"
                                                                            ID="ddlCName">
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator runat="server"
                                                                            ID="rfvCName" CssClass="red"
                                                                            ControlToValidate="ddlCName"
                                                                            Display="Dynamic"
                                                                            ErrorMessage="Please select cargo type">
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblCD">Cargo
                                                                            Details
                                                                        </asp:Label>
                                                                        <asp:TextBox runat="server" ID="txtCDetails"
                                                                            Width="190" MaxLength="200"></asp:TextBox>
                                                                        <br />
                                                                        <asp:Label runat="server" ID="lblCDetails"
                                                                            CssClass="red" Visible="false">Please enter
                                                                            cargo details</asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblTP">Phone No.
                                                                        </asp:Label>
                                                                        <b>(Ex:XXXXXXXXX)</b>
                                                                        <span class="red">*</span>
                                                                        <asp:TextBox runat="server" ID="txtCD"
                                                                            Width="40" Enabled="false" MaxLength="3"
                                                                            Text="255"></asp:TextBox>
                                                                        <asp:TextBox runat="server" ID="txtTP"
                                                                            Width="140" MaxLength="9"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator runat="server"
                                                                            ID="rfvTP" CssClass="red"
                                                                            ControlToValidate="txtTP" Display="Dynamic"
                                                                            ErrorMessage="Please enter phone no.">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:RegularExpressionValidator runat="server"
                                                                            ID="revPhone" CssClass="red"
                                                                            ValidationExpression="^[0-9]{9}$"
                                                                            ControlToValidate="txtTP" Display="Dynamic"
                                                                            ErrorMessage="Please enter valid number">
                                                                        </asp:RegularExpressionValidator>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <asp:PlaceHolder runat="server" ID="phAxel">
                                                                </asp:PlaceHolder>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblACF">Axle
                                                                            Configuration
                                                                        </asp:Label>
                                                                        <span class="red">*</span>
                                                                        <asp:DropDownList ID="ddlAC" runat="server"
                                                                            AutoPostBack="true" Width="190"
                                                                            OnSelectedIndexChanged="ddlAC_SelectedIndexChanged">
                                                                            <asp:ListItem Value="">Select Axle
                                                                                Configuration
                                                                            </asp:ListItem>
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator runat="server"
                                                                            ID="rfvAC" CssClass="red"
                                                                            ControlToValidate="ddlAC" Display="Dynamic"
                                                                            ErrorMessage="Please select Axle Configuration">
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                               
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblWOA">Weight of
                                                                            Axles
                                                                        </asp:Label>
                                                                        <span class="red">*</span>
                                                                        <asp:PlaceHolder runat="server" ID="phPermit">
                                                                        </asp:PlaceHolder>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblTW">Total
                                                                            Weight
                                                                        </asp:Label>
                                                                        <span class="red">*</span>
                                                                        <asp:TextBox runat="server" ID="txtWT"
                                                                            Width="190" MaxLength="10" Enabled="false">
                                                                        </asp:TextBox>&nbsp;Kg
                                                                        <asp:RequiredFieldValidator runat="server"
                                                                            ID="rfvWT" CssClass="red" Display="Dynamic"
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
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblJD">Journey
                                                                            Date
                                                                        </asp:Label>
                                                                   
                                                                        <asp:TextBox ID="txtJDate" runat="server"
                                                                            Width="190" CssClass="Displaytext">
                                                                        </asp:TextBox>
                                                                        <asp:ImageButton runat="server"
                                                                            CausesValidation="false" ID="iPopup"
                                                                            ImageUrl="/images/calendar.png" />
                                                                        <ajaxToolkit:CalendarExtender ID="Calendar1"
                                                                            runat="server" PopupButtonID="iPopup"
                                                                            TargetControlID="txtJDate"
                                                                            Format="dd/MM/yyyy">
                                                                        </ajaxToolkit:CalendarExtender>
                                                                        <asp:comparevalidator ID="cmpJDate"
                                                                            runat="server" Display="Dynamic"
                                                                            errormessage="The date must be greater than equal to today"
                                                                            CssClass="red" controltovalidate="txtJDate"
                                                                            type="date" Operator="GreaterThanEqual"
                                                                            valuetocompare="<%# DateTime.Today.ToShortDateString() %>" />
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblDH">
                                                                            Dimension:Height
                                                                            (Ex:4.55)</asp:Label>
                                                                        <span class="red">*</span>
                                                                        <asp:TextBox runat="server" ID="txtHeight"
                                                                            MaxLength="4" Width="190"
                                                                            AutoPostBack="true"
                                                                            OnTextChanged="txtHeight_TextChanged">
                                                                        </asp:TextBox>
                                                                        &nbsp;M
                                                                        <asp:RequiredFieldValidator runat="server"
                                                                            ID="rfvHeight" CssClass="red"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="txtHeight"
                                                                            ErrorMessage="Please enter Height">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:RegularExpressionValidator runat="server"
                                                                            ID="revHeight" CssClass="red"
                                                                            ValidationExpression="^(?:\d{1})?(?:\.\d{1,2})?$"
                                                                            ControlToValidate="txtHeight"
                                                                            Display="Dynamic"
                                                                            ErrorMessage="Please enter valid height">
                                                                        </asp:RegularExpressionValidator>
                                                                    </td>
                                                                    <td style="width: 10%;"></td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblDW">
                                                                            Dimension:Width
                                                                            (Ex:2.85)</asp:Label>
                                                                        <span class="red">*</span>
                                                                        <asp:TextBox runat="server" ID="txtWidth"
                                                                            AutoPostBack="true" MaxLength="4"
                                                                            Width="190"
                                                                            OnTextChanged="txtWidth_TextChanged">
                                                                        </asp:TextBox>
                                                                        &nbsp;M
                                                                        <asp:RequiredFieldValidator runat="server"
                                                                            ID="rfvWidth" CssClass="red"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="txtWidth"
                                                                            ErrorMessage="Please enter Width">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:RegularExpressionValidator runat="server"
                                                                            ID="revWidth" CssClass="red"
                                                                            ValidationExpression="^(?:\d{1})?(?:\.\d{1,2})?$"
                                                                            ControlToValidate="txtWidth"
                                                                            Display="Dynamic"
                                                                            ErrorMessage="Please enter valid Width">
                                                                        </asp:RegularExpressionValidator>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblDL">
                                                                            Dimension:Length
                                                                            (Ex:11.85)</asp:Label>
                                                                        <span class="red">*</span>
                                                                        <asp:TextBox runat="server" ID="txtLength"
                                                                            MaxLength="5" Width="190"></asp:TextBox>
                                                                        &nbsp;M
                                                                        <asp:RequiredFieldValidator runat="server"
                                                                            ID="rfvLength" CssClass="red"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="txtLength"
                                                                            ErrorMessage="Please enter Lenghth">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:RegularExpressionValidator runat="server"
                                                                            ID="revLength" CssClass="red"
                                                                            ValidationExpression="^(?:\d{1,2})?(?:\.\d{1,2})?$"
                                                                            ControlToValidate="txtLength"
                                                                            Display="Dynamic"
                                                                            ErrorMessage="Please enter valid length">
                                                                        </asp:RegularExpressionValidator>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr runat="server" id="trnop" visible="false">
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblNumP">Number of
                                                                            Police
                                                                        </asp:Label>
                                                                        <span class="red">*</span>
                                                                        <asp:TextBox runat="server" ID="txtNOP"
                                                                            MaxLength="5" Width="190"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator runat="server"
                                                                            ID="rfvNOP" CssClass="red"
                                                                            ControlToValidate="txtNOP" Display="Dynamic"
                                                                            ErrorMessage="Please enter number of police">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:RegularExpressionValidator runat="server"
                                                                            ID="revNOP" CssClass="red"
                                                                            ValidationExpression="^[0-9]{1,2}$"
                                                                            ControlToValidate="txtNOP" Display="Dynamic"
                                                                            ErrorMessage="Please enter valid police number">
                                                                        </asp:RegularExpressionValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr runat="server" id="trgnop" visible="false">
                                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                                    </td>
                                                                </tr>
                                                                <tr runat="server" id="trnov" visible="false">
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblNumV">Number of
                                                                            Vehicles
                                                                        </asp:Label>
                                                                        <span class="red">*</span>
                                                                        <asp:TextBox runat="server" ID="txtNOV"
                                                                            MaxLength="5" Width="190"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator runat="server"
                                                                            ID="rfvNOV" CssClass="red"
                                                                            ControlToValidate="txtNOV" Display="Dynamic"
                                                                            ErrorMessage="Please enter number of vehicles">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:RegularExpressionValidator runat="server"
                                                                            ID="revNOV" CssClass="red"
                                                                            ValidationExpression="^[0-9]{1,2}$"
                                                                            ControlToValidate="txtNOV" Display="Dynamic"
                                                                            ErrorMessage="Please enter valid vehicle number">
                                                                        </asp:RegularExpressionValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr runat="server" id="trgnov" visible="false">
                                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblEBC">Enter
                                                                            Below Code
                                                                        </asp:Label>
                                                                        <span class="red">*</span>
                                                                        <asp:TextBox runat="server" ID="txtCaptcha"
                                                                            Width="190" MaxLength="200"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator runat="server"
                                                                            ID="rfvCaptcha" CssClass="red"
                                                                            ControlToValidate="txtCaptcha"
                                                                            Display="Dynamic"
                                                                            ErrorMessage="Please enter captcha code">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:CustomValidator ID="cvCaptcha"
                                                                            runat="server"
                                                                            ControlToValidate="txtCaptcha"
                                                                            ErrorMessage="Please enter valid captcha code, try again."
                                                                            Display="Dynamic" CssClass="red"
                                                                            OnServerValidate="cvCaptcha_ServerValidate">
                                                                        </asp:CustomValidator>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                        <asp:Image ID="imgCaptcha" runat="server"
                                                                            Height="50" Width="100" />
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <asp:ImageButton runat="server"
                                                                            ImageUrl="~/images/refresh.png"
                                                                            CausesValidation="false" ID="imgCaptcha1"
                                                                            OnClick="imgCaptcha1_Click" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </fieldset>
                                                    </td>
                                                    <td>
                                                        <fieldset>
                                                            <legend>
                                                                <asp:Label runat="server" ID="lblRoute">Route:</asp:Label>
                                                            </legend>
                                                            <table style="width: 100%;">
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblF">From
                                                                        </asp:Label><span class="red">*</span><br />
                                                                        <asp:TextBox runat="server" ID="txtFrom"
                                                                            Width="100" MaxLength="50"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator runat="server"
                                                                            ID="rfvFrom" CssClass="red"
                                                                            Display="Dynamic"
                                                                            ControlToValidate="txtFrom"
                                                                            ErrorMessage="Please enter from">
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblT">To
                                                                        </asp:Label><span class="red">*</span><br />
                                                                        <asp:TextBox runat="server" ID="txtTo"
                                                                            Width="100" MaxLength="50"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator runat="server"
                                                                            ID="rfvTo" CssClass="red" Display="Dynamic"
                                                                            ControlToValidate="txtTo"
                                                                            ErrorMessage="Please enter to">
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                    <td style="width: 34%;">
                                                                        <asp:Label runat="server" ID="lblV">Via
                                                                        </asp:Label><span class="red">*</span><br />
                                                                        <asp:TextBox runat="server" ID="txtVia"
                                                                            MaxLength="100" Width="100"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator runat="server"
                                                                            ID="rfvVia" CssClass="red" Display="Dynamic"
                                                                            ControlToValidate="txtVia"
                                                                            ErrorMessage="Please enter via">
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </fieldset>
                                                        <fieldset runat="server" id="fsEscort" visible="false">
                                                            <legend>
                                                                <asp:Label runat="server" ID="lblEV">Escort Vehicle:
                                                                </asp:Label>
                                                            </legend>
                                                            <table style="width: 100%;">
                                                                <asp:PlaceHolder runat="server" Visible="false" ID="phEscort">
                                                                </asp:PlaceHolder>
                                                            </table>
                                                        </fieldset>
                                                        <fieldset>
                                                            <legend>
                                                                <asp:Label runat="server" ID="lblAttach">Attachments:
                                                                </asp:Label>
                                                            </legend>
                                                            <table style="width: 100%;">
                                                                <asp:PlaceHolder runat="server" ID="phHorse"></asp:PlaceHolder>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblHire">Upload
                                                                            Hiring
                                                                            Agreement </asp:Label>
                                                                        <asp:FileUpload runat="server" Width="190"
                                                                            ID="fuHire"
                                                                            ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                                                        <asp:Label runat="server" ID="Label2"
                                                                            CssClass="red" Visible="false">Please upload
                                                                            document</asp:Label>
                                                                        <asp:RegularExpressionValidator runat="server"
                                                                            ID="RegularExpressionValidator1"
                                                                            CssClass="red"
                                                                            ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                                            ControlToValidate="fuImages"
                                                                            Display="Dynamic"
                                                                            ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt">
                                                                        </asp:RegularExpressionValidator>
                                                                        <asp:CustomValidator ID="cvHire" runat="server"
                                                                            ControlToValidate="fuHire" CssClass="red"
                                                                            ErrorMessage="File size should not be greater than 20 MB."
                                                                            Display="Dynamic"
                                                                            OnServerValidate="cvHire_ServerValidate">
                                                                        </asp:CustomValidator>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblCID">Upload
                                                                            Cargo Images &
                                                                            Drawings</asp:Label>
                                                                        <asp:FileUpload runat="server" Width="190"
                                                                            ID="fuImages"
                                                                            ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                                                        <asp:Label runat="server" ID="lblfuImages"
                                                                            CssClass="red" Visible="false">Please upload
                                                                            document</asp:Label>
                                                                        <asp:RegularExpressionValidator runat="server"
                                                                            ID="revImages" CssClass="red"
                                                                            ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                                            ControlToValidate="fuImages"
                                                                            Display="Dynamic"
                                                                            ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt">
                                                                        </asp:RegularExpressionValidator>
                                                                        <asp:CustomValidator ID="cvImages"
                                                                            runat="server" ControlToValidate="fuImages"
                                                                            CssClass="red"
                                                                            ErrorMessage="File size should not be greater than 20 MB."
                                                                            Display="Dynamic"
                                                                            OnServerValidate="cvImages_ServerValidate">
                                                                        </asp:CustomValidator>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr runat="server" id="trWeight" visible="true">
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblWTT">Upload
                                                                            Weigh Ticket
                                                                            from TANROADS</asp:Label>
                                                                        <asp:FileUpload runat="server" Width="190"
                                                                            ID="fuTan"
                                                                            ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                                                        <asp:Label runat="server" ID="lblfuTan"
                                                                            Visible="false" CssClass="red">Please upload
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
                                                                    </td>
                                                                </tr>
                                                                <tr runat="server" id="trgWeight" visible="true">
                                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                                    </td>
                                                                </tr>
                                                                <tr runat="server" id="trPolice" visible="false">
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblCLP">Upload
                                                                            Confirmation
                                                                            Letter from Police</asp:Label>
                                                                        <span class="red">*</span>
                                                                        <asp:FileUpload runat="server" ID="fuPolice"
                                                                            Width="190"
                                                                            ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                                                        <br />
                                                                        <asp:RequiredFieldValidator runat="server"
                                                                            ID="rfvPolice" CssClass="red"
                                                                            ControlToValidate="fuPolice"
                                                                            Display="Dynamic"
                                                                            ErrorMessage="Please upload document">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:RegularExpressionValidator runat="server"
                                                                            ID="revPolice" CssClass="red"
                                                                            ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                                            ControlToValidate="fuPolice"
                                                                            Display="Dynamic"
                                                                            ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt">
                                                                        </asp:RegularExpressionValidator>
                                                                        <asp:CustomValidator ID="cvPolice"
                                                                            runat="server" ControlToValidate="fuPolice"
                                                                            CssClass="red"
                                                                            ErrorMessage="File size should not be greater than 20 MB."
                                                                            Display="Dynamic"
                                                                            OnServerValidate="cvPolice_ServerValidate">
                                                                        </asp:CustomValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr runat="server" id="trgPolice" visible="false">
                                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                                    </td>
                                                                </tr>
                                                                <tr runat="server" id="trTanesco" visible="false">
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblCLT">Upload
                                                                            Confirmation
                                                                            Letter from TANESCO</asp:Label>
                                                                        <span class="red">*</span>
                                                                        <asp:FileUpload runat="server" ID="fuTanesco"
                                                                            Width="190"
                                                                            ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                                                        <br />
                                                                        <asp:RequiredFieldValidator runat="server"
                                                                            ID="rfvTanesco" CssClass="red"
                                                                            ControlToValidate="fuTanesco"
                                                                            Display="Dynamic"
                                                                            ErrorMessage="Please upload document">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:RegularExpressionValidator runat="server"
                                                                            ID="revTanesco" CssClass="red"
                                                                            ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                                            ControlToValidate="fuTanesco"
                                                                            Display="Dynamic"
                                                                            ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt">
                                                                        </asp:RegularExpressionValidator>
                                                                        <asp:CustomValidator ID="cvTanesco"
                                                                            runat="server" ControlToValidate="fuTanesco"
                                                                            CssClass="red"
                                                                            ErrorMessage="File size should not be greater than 20 MB."
                                                                            Display="Dynamic"
                                                                            OnServerValidate="cvTanesco_ServerValidate">
                                                                        </asp:CustomValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr runat="server" id="trgTanesco" visible="false">
                                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                                    </td>
                                                                </tr>

                                                                <tr runat="server" id="trAdvg" visible="false">
                                                                    <td>
                                                                        <asp:Label runat="server" ID="lblAdvg">Upload
                                                                            Advertisement
                                                                        </asp:Label>
                                                                        <span class="red">*</span>
                                                                        <asp:FileUpload runat="server" ID="fuAdvg"
                                                                            Width="190"
                                                                            ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                                                        <asp:RequiredFieldValidator runat="server"
                                                                            ID="rfvAdvg" CssClass="red"
                                                                            ControlToValidate="fuAdvg" Display="Dynamic"
                                                                            ErrorMessage="Please upload document">
                                                                        </asp:RequiredFieldValidator>
                                                                        <asp:RegularExpressionValidator runat="server"
                                                                            ID="revAdvg" CssClass="red"
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
                                                                    </td>
                                                                </tr>
                                                                <tr runat="server" id="trgAdvg" visible="false">
                                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                                    </td>
                                                                </tr>
                                                            </table </fieldset> </td> </tr> </table> <table
                                                                style="width: 100%;">
                                                <tr>
                                                    <td style="width: 100%; height: 20px;"></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100%; text-align: center;">
                                                        <asp:Button ID="btnSubmit" runat="server" Text="Submit"
                                                            OnClick="btnSubmit_Click" />&nbsp;&nbsp;
                                                        <asp:Button runat="server" ID="btnCancel" Text="Cancel"
                                                            OnClick="btnCancel_Click" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100%; height: 20px;"></td>
                                                </tr>
                                            </table>
                                        </fieldset>



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