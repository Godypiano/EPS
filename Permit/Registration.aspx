<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" MasterPageFile="~/Default_Plain.Master" Inherits="PresentationLayer.Permit.Registration" %>
<%@ MasterType VirtualPath="~/Default_Plain.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        @media (min-width: 992px) {
            .aside-default-enabled.aside-fixed[data-kt-sticky-header="on"] .header {
                left: 0px;
                transition: left 0.3s ease;
            }

            .aside-default-enabled.aside-fixed[data-kt-sticky-header="on"] .header .mh-lg-75px {
                max-height: 55px !important;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upRegistration" runat="server">
            <ContentTemplate>

                <!--begin::Toolbar-->
                <div class="toolbar" id="kt_toolbar">
                    <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
                        <!--begin::Info-->
                        <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                            <!--begin::Title-->
                            <h1 class="text-dark fw-bolder my-1 fs-2">
                                <asp:Label runat="server" ID="lblTrans" CssClass="hd1">Transporter</asp:Label> -
                                <asp:Label runat="server" ID="lblReg" CssClass="hd1"> Registration</asp:Label>
                            </h1>
                            <!--end::Title-->
                            <!--begin::Breadcrumb-->
                            <ul class="breadcrumb fw-bold fs-base my-1">
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                                </li>
                                <li class="breadcrumb-item text-dark">Registration</li>
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
                                            <div class="mb-3 text-end">
                                                <asp:LinkButton runat="server" CssClass="navigationbar me-1"
                                                    Visible="true" ID="lnkEnglish" OnClick="lnkEnglish_Click">English
                                                </asp:LinkButton>
                                                <asp:LinkButton runat="server" Visible="true" CssClass="navigationbar"
                                                    ID="lnkSwahili" OnClick="lnkSwahili_Click">Swahili</asp:LinkButton>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                  <asp:Label CssClass="col-auto ps-0"  runat="server" ID="lblTT">Transporter Type</asp:Label><span class="red">*</span>
                                                  <asp:DropDownList CssClass="form-control col-sm-12" runat="server" ID="ddlTT" AutoPostBack="true" OnSelectedIndexChanged="ddlTT_SelectedIndexChanged">
                                                    <asp:ListItem Value="">Select Transporter Type</asp:ListItem>
                                                    <asp:ListItem Value="1">Company</asp:ListItem>
                                                    <asp:ListItem Value="0">Individual</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvTT" CssClass="red" Display="Dynamic" ControlToValidate="ddlTT" ErrorMessage="Please select Transporter Type"></asp:RequiredFieldValidator>
                                            </div>

                                            <div id="tr1" runat="server" class="form-group mx-0 mb-3 col-sm-6" visible="false">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblCompany">Company Name</asp:Label>
                                                <span class="red">*</span>
                                                <asp:TextBox  CssClass="form-control col-sm-12"  runat="server" ID="txtCompany" MaxLength="200"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvCompany" CssClass="red" ControlToValidate="txtCompany" Display="Dynamic" ErrorMessage="Please enter Company Name"></asp:RequiredFieldValidator>

                                            </div>


                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblTIN">
                                                    TIN Number<span class="red">*</span></asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server"
                                                    ID="txtTIN" MaxLength="100"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvTIN" CssClass="red"
                                                    ControlToValidate="txtTIN" Display="Dynamic"
                                                    ErrorMessage="Please enter TIN Number"></asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblCPN">
                                                    Name of Contact Person<span class="red">*</span></asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server"
                                                    ID="txtCPN" MaxLength="200"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvCPN" CssClass="red"
                                                    ControlToValidate="txtCPN" Display="Dynamic"
                                                    ErrorMessage="Please enter contact person name">
                                                </asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblDesig">
                                                </asp:Label>
                                                Title/Designation<span class="red">*</span></asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server"
                                                    ID="txtDesig" MaxLength="200"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvDesig" CssClass="red"
                                                    ControlToValidate="txtDesig" Display="Dynamic"
                                                    ErrorMessage="Please enter designation">
                                                </asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblPB">
                                                    P.O.Box<span class="red">*</span></asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server"
                                                    ID="txtADD1" MaxLength="50"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvADD1" CssClass="red"
                                                    ControlToValidate="txtADD1" Display="Dynamic"
                                                    ErrorMessage="Please enter P.O.Box"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="revADD1"
                                                    ValidationExpression="^[0-9]{1,50}$" ControlToValidate="txtADD1"
                                                    Display="Dynamic" CssClass="red"
                                                    ErrorMessage="P.O.Box accepts nubers only.">
                                                </asp:RegularExpressionValidator>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblCity">
                                                    City<span class="red">*</span></asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server"
                                                    ID="txtCity" MaxLength="200"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvCity" CssClass="red"
                                                    ControlToValidate="txtCity" Display="Dynamic"
                                                    ErrorMessage="Please enter city name"></asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblCountry">
                                                    Country<span class="red">*</span></asp:Label>
                                                <asp:DropDownList CssClass="form-control col-sm-12" ID="ddlCountry"
                                                    runat="server">
                                                    <asp:ListItem Value="">Select Country</asp:ListItem>
                                                    <asp:ListItem Value="Afganistan">Afghanistan</asp:ListItem>
                                                    <asp:ListItem Value="Albania">Albania</asp:ListItem>
                                                    <asp:ListItem Value="Algeria">Algeria</asp:ListItem>
                                                    <asp:ListItem Value="American Samoa">American Samoa</asp:ListItem>
                                                    <asp:ListItem Value="Andorra">Andorra</asp:ListItem>
                                                    <asp:ListItem Value="Angola">Angola</asp:ListItem>
                                                    <asp:ListItem Value="Anguilla">Anguilla</asp:ListItem>
                                                    <asp:ListItem Value="Antigua &amp; Barbuda">Antigua &amp; Barbuda
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="Argentina">Argentina</asp:ListItem>
                                                    <asp:ListItem Value="Armenia">Armenia</asp:ListItem>
                                                    <asp:ListItem Value="Aruba">Aruba</asp:ListItem>
                                                    <asp:ListItem Value="Australia">Australia</asp:ListItem>
                                                    <asp:ListItem Value="Austria">Austria</asp:ListItem>
                                                    <asp:ListItem Value="Azerbaijan">Azerbaijan</asp:ListItem>
                                                    <asp:ListItem Value="Bahamas">Bahamas</asp:ListItem>
                                                    <asp:ListItem Value="Bahrain">Bahrain</asp:ListItem>
                                                    <asp:ListItem Value="Bangladesh">Bangladesh</asp:ListItem>
                                                    <asp:ListItem Value="Barbados">Barbados</asp:ListItem>
                                                    <asp:ListItem Value="Belarus">Belarus</asp:ListItem>
                                                    <asp:ListItem Value="Belgium">Belgium</asp:ListItem>
                                                    <asp:ListItem Value="Belize">Belize</asp:ListItem>
                                                    <asp:ListItem Value="Benin">Benin</asp:ListItem>
                                                    <asp:ListItem Value="Bermuda">Bermuda</asp:ListItem>
                                                    <asp:ListItem Value="Bhutan">Bhutan</asp:ListItem>
                                                    <asp:ListItem Value="Bolivia">Bolivia</asp:ListItem>
                                                    <asp:ListItem Value="Bonaire">Bonaire</asp:ListItem>
                                                    <asp:ListItem Value="Bosnia &amp; Herzegovina">Bosnia &amp;
                                                        Herzegovina
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="Botswana">Botswana</asp:ListItem>
                                                    <asp:ListItem Value="Brazil">Brazil</asp:ListItem>
                                                    <asp:ListItem Value="British Indian Ocean Ter">British Indian Ocean
                                                        Ter
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="Brunei">Brunei</asp:ListItem>
                                                    <asp:ListItem Value="Bulgaria">Bulgaria</asp:ListItem>
                                                    <asp:ListItem Value="Burkina Faso">Burkina Faso</asp:ListItem>
                                                    <asp:ListItem Value="Burundi">Burundi</asp:ListItem>
                                                    <asp:ListItem Value="Cambodia">Cambodia</asp:ListItem>
                                                    <asp:ListItem Value="Cameroon">Cameroon</asp:ListItem>
                                                    <asp:ListItem Value="Canada">Canada</asp:ListItem>
                                                    <asp:ListItem Value="Canary Islands">Canary Islands</asp:ListItem>
                                                    <asp:ListItem Value="Cape Verde">Cape Verde</asp:ListItem>
                                                    <asp:ListItem Value="Cayman Islands">Cayman Islands</asp:ListItem>
                                                    <asp:ListItem Value="Central African Republic">Central African
                                                        Republic
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="Chad">Chad</asp:ListItem>
                                                    <asp:ListItem Value="Channel Islands">Channel Islands</asp:ListItem>
                                                    <asp:ListItem Value="Chile">Chile</asp:ListItem>
                                                    <asp:ListItem Value="China">China</asp:ListItem>
                                                    <asp:ListItem Value="Christmas Island">Christmas Island
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="Cocos Island">Cocos Island</asp:ListItem>
                                                    <asp:ListItem Value="Colombia">Colombia</asp:ListItem>
                                                    <asp:ListItem Value="Comoros">Comoros</asp:ListItem>
                                                    <asp:ListItem Value="Congo">Congo</asp:ListItem>
                                                    <asp:ListItem Value="Cook Islands">Cook Islands</asp:ListItem>
                                                    <asp:ListItem Value="Costa Rica">Costa Rica</asp:ListItem>
                                                    <asp:ListItem Value="Cote DIvoire">Cote D'Ivoire</asp:ListItem>
                                                    <asp:ListItem Value="Croatia">Croatia</asp:ListItem>
                                                    <asp:ListItem Value="Cuba">Cuba</asp:ListItem>
                                                    <asp:ListItem Value="Curaco">Curacao</asp:ListItem>
                                                    <asp:ListItem Value="Cyprus">Cyprus</asp:ListItem>
                                                    <asp:ListItem Value="Czech Republic">Czech Republic</asp:ListItem>
                                                    <asp:ListItem Value="Denmark">Denmark</asp:ListItem>
                                                    <asp:ListItem Value="Djibouti">Djibouti</asp:ListItem>
                                                    <asp:ListItem Value="Dominica">Dominica</asp:ListItem>
                                                    <asp:ListItem Value="Dominican Republic">Dominican Republic
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="East Timor">East Timor</asp:ListItem>
                                                    <asp:ListItem Value="Ecuador">Ecuador</asp:ListItem>
                                                    <asp:ListItem Value="Egypt">Egypt</asp:ListItem>
                                                    <asp:ListItem Value="El Salvador">El Salvador</asp:ListItem>
                                                    <asp:ListItem Value="Equatorial Guinea">Equatorial Guinea
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="Eritrea">Eritrea</asp:ListItem>
                                                    <asp:ListItem Value="Estonia">Estonia</asp:ListItem>
                                                    <asp:ListItem Value="Ethiopia">Ethiopia</asp:ListItem>
                                                    <asp:ListItem Value="Falkland Islands">Falkland Islands
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="Faroe Islands">Faroe Islands</asp:ListItem>
                                                    <asp:ListItem Value="Fiji">Fiji</asp:ListItem>
                                                    <asp:ListItem Value="Finland">Finland</asp:ListItem>
                                                    <asp:ListItem Value="France">France</asp:ListItem>
                                                    <asp:ListItem Value="French Guiana">French Guiana</asp:ListItem>
                                                    <asp:ListItem Value="French Polynesia">French Polynesia
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="French Southern Ter">French Southern Ter
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="Gabon">Gabon</asp:ListItem>
                                                    <asp:ListItem Value="Gambia">Gambia</asp:ListItem>
                                                    <asp:ListItem Value="Georgia">Georgia</asp:ListItem>
                                                    <asp:ListItem Value="Germany">Germany</asp:ListItem>
                                                    <asp:ListItem Value="Ghana">Ghana</asp:ListItem>
                                                    <asp:ListItem Value="Gibraltar">Gibraltar</asp:ListItem>
                                                    <asp:ListItem Value="Great Britain">Great Britain</asp:ListItem>
                                                    <asp:ListItem Value="Greece">Greece</asp:ListItem>
                                                    <asp:ListItem Value="Greenland">Greenland</asp:ListItem>
                                                    <asp:ListItem Value="Grenada">Grenada</asp:ListItem>
                                                    <asp:ListItem Value="Guadeloupe">Guadeloupe</asp:ListItem>
                                                    <asp:ListItem Value="Guam">Guam</asp:ListItem>
                                                    <asp:ListItem Value="Guatemala">Guatemala</asp:ListItem>
                                                    <asp:ListItem Value="Guinea">Guinea</asp:ListItem>
                                                    <asp:ListItem Value="Guyana">Guyana</asp:ListItem>
                                                    <asp:ListItem Value="Haiti">Haiti</asp:ListItem>
                                                    <asp:ListItem Value="Hawaii">Hawaii</asp:ListItem>
                                                    <asp:ListItem Value="Honduras">Honduras</asp:ListItem>
                                                    <asp:ListItem Value="Hong Kong">Hong Kong</asp:ListItem>
                                                    <asp:ListItem Value="Hungary">Hungary</asp:ListItem>
                                                    <asp:ListItem Value="Iceland">Iceland</asp:ListItem>
                                                    <asp:ListItem Value="India">India</asp:ListItem>
                                                    <asp:ListItem Value="Indonesia">Indonesia</asp:ListItem>
                                                    <asp:ListItem Value="Iran">Iran</asp:ListItem>
                                                    <asp:ListItem Value="Iraq">Iraq</asp:ListItem>
                                                    <asp:ListItem Value="Ireland">Ireland</asp:ListItem>
                                                    <asp:ListItem Value="Isle of Man">Isle of Man</asp:ListItem>
                                                    <asp:ListItem Value="Israel">Israel</asp:ListItem>
                                                    <asp:ListItem Value="Italy">Italy</asp:ListItem>
                                                    <asp:ListItem Value="Jamaica">Jamaica</asp:ListItem>
                                                    <asp:ListItem Value="Japan">Japan</asp:ListItem>
                                                    <asp:ListItem Value="Jordan">Jordan</asp:ListItem>
                                                    <asp:ListItem Value="Kazakhstan">Kazakhstan</asp:ListItem>
                                                    <asp:ListItem Value="Kenya">Kenya</asp:ListItem>
                                                    <asp:ListItem Value="Kiribati">Kiribati</asp:ListItem>
                                                    <asp:ListItem Value="Korea North">Korea North</asp:ListItem>
                                                    <asp:ListItem Value="Korea Sout">Korea South</asp:ListItem>
                                                    <asp:ListItem Value="Kuwait">Kuwait</asp:ListItem>
                                                    <asp:ListItem Value="Kyrgyzstan">Kyrgyzstan</asp:ListItem>
                                                    <asp:ListItem Value="Laos">Laos</asp:ListItem>
                                                    <asp:ListItem Value="Latvia">Latvia</asp:ListItem>
                                                    <asp:ListItem Value="Lebanon">Lebanon</asp:ListItem>
                                                    <asp:ListItem Value="Lesotho">Lesotho</asp:ListItem>
                                                    <asp:ListItem Value="Liberia">Liberia</asp:ListItem>
                                                    <asp:ListItem Value="Libya">Libya</asp:ListItem>
                                                    <asp:ListItem Value="Liechtenstein">Liechtenstein</asp:ListItem>
                                                    <asp:ListItem Value="Lithuania">Lithuania</asp:ListItem>
                                                    <asp:ListItem Value="Luxembourg">Luxembourg</asp:ListItem>
                                                    <asp:ListItem Value="Macau">Macau</asp:ListItem>
                                                    <asp:ListItem Value="Macedonia">Macedonia</asp:ListItem>
                                                    <asp:ListItem Value="Madagascar">Madagascar</asp:ListItem>
                                                    <asp:ListItem Value="Malaysia">Malaysia</asp:ListItem>
                                                    <asp:ListItem Value="Malawi">Malawi</asp:ListItem>
                                                    <asp:ListItem Value="Maldives">Maldives</asp:ListItem>
                                                    <asp:ListItem Value="Mali">Mali</asp:ListItem>
                                                    <asp:ListItem Value="Malta">Malta</asp:ListItem>
                                                    <asp:ListItem Value="Marshall Islands">Marshall Islands
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="Martinique">Martinique</asp:ListItem>
                                                    <asp:ListItem Value="Mauritania">Mauritania</asp:ListItem>
                                                    <asp:ListItem Value="Mauritius">Mauritius</asp:ListItem>
                                                    <asp:ListItem Value="Mayotte">Mayotte</asp:ListItem>
                                                    <asp:ListItem Value="Mexico">Mexico</asp:ListItem>
                                                    <asp:ListItem Value="Midway Islands">Midway Islands</asp:ListItem>
                                                    <asp:ListItem Value="Moldova">Moldova</asp:ListItem>
                                                    <asp:ListItem Value="Monaco">Monaco</asp:ListItem>
                                                    <asp:ListItem Value="Mongolia">Mongolia</asp:ListItem>
                                                    <asp:ListItem Value="Montserrat">Montserrat</asp:ListItem>
                                                    <asp:ListItem Value="Morocco">Morocco</asp:ListItem>
                                                    <asp:ListItem Value="Mozambique">Mozambique</asp:ListItem>
                                                    <asp:ListItem Value="Myanmar">Myanmar</asp:ListItem>
                                                    <asp:ListItem Value="Nambia">Nambia</asp:ListItem>
                                                    <asp:ListItem Value="Nauru">Nauru</asp:ListItem>
                                                    <asp:ListItem Value="Nepal">Nepal</asp:ListItem>
                                                    <asp:ListItem Value="Netherland Antilles">Netherland Antilles
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="Netherlands">Netherlands (Holland, Europe)
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="Nevis">Nevis</asp:ListItem>
                                                    <asp:ListItem Value="New Caledonia">New Caledonia</asp:ListItem>
                                                    <asp:ListItem Value="New Zealand">New Zealand</asp:ListItem>
                                                    <asp:ListItem Value="Nicaragua">Nicaragua</asp:ListItem>
                                                    <asp:ListItem Value="Niger">Niger</asp:ListItem>
                                                    <asp:ListItem Value="Nigeria">Nigeria</asp:ListItem>
                                                    <asp:ListItem Value="Niue">Niue</asp:ListItem>
                                                    <asp:ListItem Value="Norfolk Island">Norfolk Island</asp:ListItem>
                                                    <asp:ListItem Value="Norway">Norway</asp:ListItem>
                                                    <asp:ListItem Value="Oman">Oman</asp:ListItem>
                                                    <asp:ListItem Value="Pakistan">Pakistan</asp:ListItem>
                                                    <asp:ListItem Value="Palau Island">Palau Island</asp:ListItem>
                                                    <asp:ListItem Value="Palestine">Palestine</asp:ListItem>
                                                    <asp:ListItem Value="Panama">Panama</asp:ListItem>
                                                    <asp:ListItem Value="Papua New Guinea">Papua New Guinea
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="Paraguay">Paraguay</asp:ListItem>
                                                    <asp:ListItem Value="Peru">Peru</asp:ListItem>
                                                    <asp:ListItem Value="Phillipines">Philippines</asp:ListItem>
                                                    <asp:ListItem Value="Pitcairn Island">Pitcairn Island</asp:ListItem>
                                                    <asp:ListItem Value="Poland">Poland</asp:ListItem>
                                                    <asp:ListItem Value="Portugal">Portugal</asp:ListItem>
                                                    <asp:ListItem Value="Puerto Rico">Puerto Rico</asp:ListItem>
                                                    <asp:ListItem Value="Qatar">Qatar</asp:ListItem>
                                                    <asp:ListItem Value="Republic of Montenegro">Republic of Montenegro
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="Republic of Serbia">Republic of Serbia
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="Reunion">Reunion</asp:ListItem>
                                                    <asp:ListItem Value="Romania">Romania</asp:ListItem>
                                                    <asp:ListItem Value="Russia">Russia</asp:ListItem>
                                                    <asp:ListItem Value="Rwanda">Rwanda</asp:ListItem>
                                                    <asp:ListItem Value="St Barthelemy">St Barthelemy</asp:ListItem>
                                                    <asp:ListItem Value="St Eustatius">St Eustatius</asp:ListItem>
                                                    <asp:ListItem Value="St Helena">St Helena</asp:ListItem>
                                                    <asp:ListItem Value="St Kitts-Nevis">St Kitts-Nevis</asp:ListItem>
                                                    <asp:ListItem Value="St Lucia">St Lucia</asp:ListItem>
                                                    <asp:ListItem Value="St Maarten">St Maarten</asp:ListItem>
                                                    <asp:ListItem Value="St Pierre &amp; Miquelon">St Pierre &amp;
                                                        Miquelon
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="St Vincent &amp; Grenadines">St Vincent &amp;
                                                        Grenadines</asp:ListItem>
                                                    <asp:ListItem Value="Saipan">Saipan</asp:ListItem>
                                                    <asp:ListItem Value="Samoa">Samoa</asp:ListItem>
                                                    <asp:ListItem Value="Samoa American">Samoa American</asp:ListItem>
                                                    <asp:ListItem Value="San Marino">San Marino</asp:ListItem>
                                                    <asp:ListItem Value="Sao Tome &amp; Principe">Sao Tome &amp;
                                                        Principe
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="Saudi Arabia">Saudi Arabia</asp:ListItem>
                                                    <asp:ListItem Value="Senegal">Senegal</asp:ListItem>
                                                    <asp:ListItem Value="Serbia">Serbia</asp:ListItem>
                                                    <asp:ListItem Value="Seychelles">Seychelles</asp:ListItem>
                                                    <asp:ListItem Value="Sierra Leone">Sierra Leone</asp:ListItem>
                                                    <asp:ListItem Value="Singapore">Singapore</asp:ListItem>
                                                    <asp:ListItem Value="Slovakia">Slovakia</asp:ListItem>
                                                    <asp:ListItem Value="Slovenia">Slovenia</asp:ListItem>
                                                    <asp:ListItem Value="Solomon Islands">Solomon Islands</asp:ListItem>
                                                    <asp:ListItem Value="Somalia">Somalia</asp:ListItem>
                                                    <asp:ListItem Value="South Africa">South Africa</asp:ListItem>
                                                    <asp:ListItem Value="Spain">Spain</asp:ListItem>
                                                    <asp:ListItem Value="Sri Lanka">Sri Lanka</asp:ListItem>
                                                    <asp:ListItem Value="Sudan">Sudan</asp:ListItem>
                                                    <asp:ListItem Value="Suriname">Suriname</asp:ListItem>
                                                    <asp:ListItem Value="Swaziland">Swaziland</asp:ListItem>
                                                    <asp:ListItem Value="Sweden">Sweden</asp:ListItem>
                                                    <asp:ListItem Value="Switzerland">Switzerland</asp:ListItem>
                                                    <asp:ListItem Value="Syria">Syria</asp:ListItem>
                                                    <asp:ListItem Value="Tahiti">Tahiti</asp:ListItem>
                                                    <asp:ListItem Value="Taiwan">Taiwan</asp:ListItem>
                                                    <asp:ListItem Value="Tajikistan">Tajikistan</asp:ListItem>
                                                    <asp:ListItem Value="Tanzania">Tanzania</asp:ListItem>
                                                    <asp:ListItem Value="Thailand">Thailand</asp:ListItem>
                                                    <asp:ListItem Value="Togo">Togo</asp:ListItem>
                                                    <asp:ListItem Value="Tokelau">Tokelau</asp:ListItem>
                                                    <asp:ListItem Value="Tonga">Tonga</asp:ListItem>
                                                    <asp:ListItem Value="Trinidad &amp; Tobago">Trinidad &amp; Tobago
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="Tunisia">Tunisia</asp:ListItem>
                                                    <asp:ListItem Value="Turkey">Turkey</asp:ListItem>
                                                    <asp:ListItem Value="Turkmenistan">Turkmenistan</asp:ListItem>
                                                    <asp:ListItem Value="Turks &amp; Caicos Is">Turks &amp; Caicos Is
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="Tuvalu">Tuvalu</asp:ListItem>
                                                    <asp:ListItem Value="Uganda">Uganda</asp:ListItem>
                                                    <asp:ListItem Value="Ukraine">Ukraine</asp:ListItem>
                                                    <asp:ListItem Value="United Arab Erimates">United Arab Emirates
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="United Kingdom">United Kingdom</asp:ListItem>
                                                    <asp:ListItem Value="United States of America">United States of
                                                        America
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="Uraguay">Uruguay</asp:ListItem>
                                                    <asp:ListItem Value="Uzbekistan">Uzbekistan</asp:ListItem>
                                                    <asp:ListItem Value="Vanuatu">Vanuatu</asp:ListItem>
                                                    <asp:ListItem Value="Vatican City State">Vatican City State
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="Venezuela">Venezuela</asp:ListItem>
                                                    <asp:ListItem Value="Vietnam">Vietnam</asp:ListItem>
                                                    <asp:ListItem Value="Virgin Islands (Brit)">Virgin Islands (Brit)
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="Virgin Islands (USA)">Virgin Islands (USA)
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="Wake Island">Wake Island</asp:ListItem>
                                                    <asp:ListItem Value="Wallis &amp; Futana Is">Wallis &amp; Futana Is
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="Yemen">Yemen</asp:ListItem>
                                                    <asp:ListItem Value="Zaire">Zaire</asp:ListItem>
                                                    <asp:ListItem Value="Zambia">Zambia</asp:ListItem>
                                                    <asp:ListItem Value="Zimbabwe">Zimbabwe</asp:ListItem>
                                                </asp:DropDownList>

                                                <asp:RequiredFieldValidator runat="server" ID="rfvCountry"
                                                    CssClass="red" ControlToValidate="ddlCountry" Display="Dynamic"
                                                    ErrorMessage="Please select country name">
                                                </asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblPostal">
                                                    Zip/Postal
                                                    Code</asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server"
                                                    ID="txtPostal" MaxLength="10"></asp:TextBox>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblADD2">
                                                    Address 2</asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server"
                                                    ID="txtADD2" MaxLength="200"></asp:TextBox>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblMobile">Mobile
                                                    #<span class="red">*</span></asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server"
                                                    ID="txtWork" MaxLength="20"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvWork" CssClass="red"
                                                    ControlToValidate="txtWork" Display="Dynamic"
                                                    ErrorMessage="Please enter phone number">
                                                </asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="revWork"
                                                    CssClass="red" ValidationExpression="^[0-9]{1,12}$"
                                                    ControlToValidate="txtWork" Display="Dynamic"
                                                    ErrorMessage="Please enter valid number">
                                                </asp:RegularExpressionValidator>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblLand">
                                                    Land Phone #</asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server"
                                                    ID="txtHome" MaxLength="20"></asp:TextBox>
                                                <asp:RegularExpressionValidator runat="server" ID="revHome"
                                                    CssClass="red" ValidationExpression="^[0-9]{1,12}$"
                                                    ControlToValidate="txtHome" Display="Dynamic"
                                                    ErrorMessage="Please enter valid number">
                                                </asp:RegularExpressionValidator>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblEmail">
                                                    Email<span class="red">*</span></asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server"
                                                    ID="txtEmail" MaxLength="200"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvEmail" CssClass="red"
                                                    ControlToValidate="txtEmail" Display="Dynamic"
                                                    ErrorMessage="Please enter email address">
                                                </asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="revEmail" CssClass="red"
                                                    runat="server" ControlToValidate="txtEmail"
                                                    ErrorMessage="Please enter the valid Email ID"
                                                    ValidationExpression="^[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"
                                                    Display="Dynamic"></asp:RegularExpressionValidator>
                                            </div>

                                            <div class="form-group mx-0 mb-3 col-sm-6">
                                                <asp:Label CssClass="col-auto ps-0" runat="server" ID="lblCaptcha">Enter
                                                    Below Code<span class="red">*</span></asp:Label>
                                                <asp:TextBox CssClass="form-control col-sm-12" runat="server"
                                                    ID="txtCaptcha" MaxLength="200"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvCaptcha"
                                                    CssClass="red" ControlToValidate="txtCaptcha" Display="Dynamic"
                                                    ErrorMessage="Please enter captcha code">
                                                </asp:RequiredFieldValidator>
                                                <asp:CustomValidator ID="cvCaptcha" runat="server" CssClass="red"
                                                    ControlToValidate="txtCaptcha"
                                                    ErrorMessage="Please enter valid captcha code, try again."
                                                    Display="Dynamic" OnServerValidate="cvCaptcha_ServerValidate">
                                                </asp:CustomValidator>
                                            </div>

                                            <div class="d-flex justify-content-end col-sm-12 mb-5">
                                                <asp:Image ID="imgCaptcha" runat="server" Height="34" />
                                                <asp:ImageButton runat="server" ImageUrl="~/images/refresh.png"
                                                    CausesValidation="false" ID="imgCaptcha1"
                                                    OnClick="imgCaptcha1_Click" />
                                            </div>
                                        </div>

                                        <div class="form-group mb-3 d-flex justify-content-end">
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                                ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click" />
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap"
                                                runat="server" ID="btnCancel" CausesValidation="false" OnClick="btnCan_Click" Text="Cancel" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </ContentTemplate>
            <Triggers>
                <asp:PostBackTrigger ControlID="btnReg" />
            </Triggers>
        </asp:UpdatePanel>
    </div>
</asp:Content>