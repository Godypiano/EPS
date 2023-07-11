<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="UpdatePermit_Old.aspx.cs" MasterPageFile="~/Default.Master" Inherits="PresentationLayer.Permit.UpdatePermit_Old" %>

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
                <table style="width: 100%;">
                    <tr>
                    <td style="width: 2%;"></td>
                    <td style="width: 96%;">
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 2%;"></td>
                        <td style="width: 48%;">
                            <a class="navigationbar" href="Dashboard.aspx">Home</a>&nbsp; &gt;&gt; &nbsp;<a class="navigationbar" href="EditApplications.aspx">Update Applications</a>&nbsp; &gt;&gt; &nbsp;<asp:LinkButton ID="lnkecat" runat="server" CssClass="navigationbar" CausesValidation="false" OnClick="lnkeapp_Click">Edit/Update Application</asp:LinkButton>
                            </td>
                        <td style="width: 48%; text-align:right">
                        <asp:LinkButton runat="server" CssClass="navigationbar" Visible="true" ID="lnkEnglish" CausesValidation="false" OnClick="lnkEnglish_Click">English</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton runat="server" Visible="true" CausesValidation="false" CssClass="navigationbar" ID="lnkSwahili" OnClick="lnkSwahili_Click">Swahili</asp:LinkButton>
                        </td>
                        <td style="width: 2%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                     </table>
                  <fieldset>
                    <legend>
                        <asp:Label runat="server" CssClass="hd1" ID="lblAP">Edit/Update Application: </asp:Label> <asp:Label runat="server" CssClass="hd1" ID="lbluapp"></asp:Label>
                        </legend>
                <table style="width: 100%;">
                <tr>
                    <td style="width: 5%;"></td>
                    <td style="width: 90%;">
                        </td>
                    <td style="width: 5%;"></td>
                    </tr>
                <tr>
                    <td colspan="3" style="width: 100%; height: 20px;"></td>
                </tr>
                </table> 
            <table style="width: 100%;">
        <tr>
            <td style="width: 2%;"></td>
            <td style="width: 98%;">
                <fieldset>
                <legend>
                    <asp:Label runat="server" ID="lblVC">Vehicle & Cargo Details:</asp:Label>
                    </legend>
                    
        <table style="width: 100%;">
            <tr>
                    <td colspan="2" style="width: 100%; height:10px;">

                    </td>
                </tr>
            <tr>
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblCargo">Type of Vehicle</asp:Label>
                    <span class="red">*</span>
                </td>
                <td style="width: 75%;">
                    
                    <asp:DropDownList runat="server" ID="ddlCargo" Width="190" AutoPostBack="true" OnSelectedIndexChanged="ddlCargo_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="rfvCargo" CssClass="red" Display="Dynamic" ControlToValidate="ddlCargo" ErrorMessage="Please select vehicle type"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr runat="server" id="tr2">
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
            <tr>
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblLease">Vehicle Lease Type</asp:Label>
                    <span class="red">*</span>
                </td>
                <td style="width: 75%;">
                    <asp:DropDownList runat="server" Width="190" ID="ddlVeh" AutoPostBack="true" OnSelectedIndexChanged="ddlVeh_SelectedIndexChanged">
                        <asp:ListItem Value="">Vehicle Type</asp:ListItem>
                        <asp:ListItem Value="1">Own</asp:ListItem>
                        <asp:ListItem Value="2">Hire</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" CssClass="red" ControlToValidate="ddlVeh" Display="Dynamic" ErrorMessage="Please select cargo type"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
            
            
            
        </table>
                    </fieldset>
                </td>
            </tr>
            </table>
            <table style="width: 100%;">
          <tr>
            <td style="width: 2%;"></td>
            <td style="width: 98%;">
                <fieldset>
                <legend>
                    <asp:Label runat="server" ID="lblAPD">Applicant Details:</asp:Label>
                    </legend>
            <table style="width: 100%;">
                <tr>
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
        <tr>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblNApp">Name of Applicant</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtOApp" Width="190" MaxLength="200" Enabled="false"></asp:TextBox><br />
                </td>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblHApp" Visible="false">Name of Haulier</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtHApp" Visible="false" Width="190" MaxLength="200"></asp:TextBox><br />
                <asp:RequiredFieldValidator runat="server" Visible="false" ID="rfvHApp" CssClass="red" ControlToValidate="txtHApp" Display="Dynamic" ErrorMessage="Please enter name."></asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr>
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
                <tr>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblSt">Street Number</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtOSt" Width="190" MaxLength="200" Enabled="false"></asp:TextBox><br />
                </td>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblHSt" Visible="false">Street Number</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtHSt" Width="190" Visible="false" MaxLength="200"></asp:TextBox><br />
                <asp:RequiredFieldValidator runat="server" Visible="false" ID="rfvHSt" CssClass="red" ControlToValidate="txtHSt" Display="Dynamic" ErrorMessage="Please enter street."></asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr>
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
                <tr>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblCity">City</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtOCity" Width="190" MaxLength="200" Enabled="false"></asp:TextBox><br />
                </td>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblHCity" Visible="false">City</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtHCity" Width="190" Visible="false" MaxLength="200"></asp:TextBox><br />
                <asp:RequiredFieldValidator runat="server" ID="rfvHCity" Visible="false" CssClass="red" ControlToValidate="txtHCity" Display="Dynamic" ErrorMessage="Please enter city."></asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr>
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
                <tr>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblZip">Zip / Postal Code</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtOZip" Width="190" MaxLength="200" Enabled="false"></asp:TextBox><br />
                </td>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblHZip" Visible="false">Zip / Postal Code</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtHZip" Visible="false" Width="190" MaxLength="200"></asp:TextBox><br />
                <asp:RequiredFieldValidator runat="server" ID="rfvHZip" CssClass="red" ControlToValidate="txtHZip" Display="Dynamic" ErrorMessage="Please enter zip."></asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr>
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
                <tr>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblCou">Country</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtOCou" Width="190" MaxLength="200" Enabled="false"></asp:TextBox><br />
                </td>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblHCou" Visible="false">Country</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtHCou" Visible="false" Width="190" MaxLength="200"></asp:TextBox><br />
                <asp:RequiredFieldValidator runat="server" Visible="false" ID="rfvHCou" CssClass="red" ControlToValidate="txtHCou" Display="Dynamic" ErrorMessage="Please select country."></asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr>
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
                <tr>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblTel">Telephone</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtOTel" Width="190" MaxLength="200" Enabled="false"></asp:TextBox><br />
                </td>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblHTel" Visible="false">Telephone</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtHTel" Visible="false" Width="190" MaxLength="200"></asp:TextBox><br />
                <asp:RequiredFieldValidator runat="server" Visible="false" ID="rfvHTel" CssClass="red" ControlToValidate="txtHTel" Display="Dynamic" ErrorMessage="Please enter telephone."></asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr>
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
                <tr>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblFax">Fax</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtOFax" Width="190" MaxLength="200" Enabled="false"></asp:TextBox><br />
                </td>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblHFax" Visible="false">Fax</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtHFax" Width="190" Visible="false" MaxLength="200"></asp:TextBox><br />
                <asp:RequiredFieldValidator runat="server" ID="rfvHFax" Visible="false" CssClass="red" ControlToValidate="txtHFax" Display="Dynamic" ErrorMessage="Please enter fax."></asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr>
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
                <tr>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblEmail">Email</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtOEmail" Width="190" MaxLength="200" Enabled="false"></asp:TextBox><br />
                </td>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblHEmail" Visible="false">Email</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtHEmail" Visible="false" Width="190" MaxLength="200"></asp:TextBox><br />
                <asp:RequiredFieldValidator runat="server" Visible="false" ID="rfvHEmail" CssClass="red" ControlToValidate="txtHEmail" Display="Dynamic" ErrorMessage="Please enter email."></asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr>
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
            
                </table>
                    </fieldset>
                <fieldset>
                <legend>
                    <asp:Label runat="server" ID="lblJou">Journey:</asp:Label>
                    </legend>
                <table style="width: 100%;">
                <tr>
                    <td colspan="2" style="width: 100%; height:10px;">

                    </td>
                </tr>
                <tr>
                <td style="width: 50%;">
                    <asp:Label runat="server" ID="lblJD">Date of the Transport</asp:Label><span class="red">*</span><br />
                    <asp:TextBox ID="txtJDate" runat="server" Width="190" AutoPostBack="true" CssClass="Displaytext" OnTextChanged="txtDate_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvJDate" CssClass="red" Display="Dynamic" ControlToValidate="txtJDate" ErrorMessage="Please enter journey to"></asp:RequiredFieldValidator>
                    <asp:ImageButton runat="server" CausesValidation="false" ID="iPopup" ImageUrl="/images/calendar.png" />
                    <ajaxToolkit:CalendarExtender ID="Calendar1" runat="server" PopupButtonID="iPopup" TargetControlID="txtJDate" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>
                    <asp:comparevalidator ID="cmpJDate" runat="server" Display="Dynamic" errormessage="The date must be greater than equal to today" CssClass="red"
                      controltovalidate="txtJDate" type="date"  Operator="GreaterThanEqual" valuetocompare="<%# DateTime.Today.ToShortDateString() %>" />
                </td>
                <td style="width: 50%;">
                    <asp:Label runat="server" ID="lblED">Permit Expired Date</asp:Label><span class="red">*</span><br />
                    <asp:TextBox runat="server" ID="txtTo1" MaxLength="100" Width="190" Enabled="false"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator12" CssClass="red" Display="Dynamic" ControlToValidate="txtTo1" ErrorMessage="Please enter to date"></asp:RequiredFieldValidator>
                </td>    
            </tr>
            <tr>
                <td colspan="3" style="width: 100%; height:10px;">

                </td>
            </tr>
            </table>
                    </fieldset>
                
                <fieldset>
                <legend>
                    <asp:Label runat="server" ID="lblTInfo">Transport Information:</asp:Label>
                    </legend>
                <table style="width: 100%;">
                <tr>
                    <td colspan="4" style="width: 100%; height:10px;">

                    </td>
                </tr>
                <tr>
                <td style="width: 25%;">
                </td>
                <td style="width: 25%;text-align:left;">
                    <asp:Label runat="server" ID="lblULaden">Unladen Vehicle</asp:Label><span class="red">*</span><br />
                </td>
                <td style="width: 25%;text-align:left;">
                    <asp:Label runat="server" ID="lblLoad">Load</asp:Label><span class="red">*</span><br />
                </td>
                <td style="width: 25%;text-align:left;"> 
                    <asp:Label runat="server" ID="lblLaden">Laden Vehicle</asp:Label><span class="red">*</span><br />
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height:10px;">

                </td>
            </tr>
            <tr>
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblDL">Length (M)</asp:Label>
                </td>
                <td style="width: 25%;text-align:left;">
                    <asp:TextBox runat="server" ID="txtLength2" MaxLength="5" Width="190"></asp:TextBox>&nbsp;M<br />
                    <asp:RequiredFieldValidator runat="server" ID="rfvLength" CssClass="red" Display="Dynamic" ControlToValidate="txtLength2" ErrorMessage="Please enter Lenghth"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="revLength2" CssClass="red" ValidationExpression="^(?:\d{1,2})?(?:\.\d{1,2})?$"
                         ControlToValidate="txtLength" Display="Dynamic" ErrorMessage="Please enter valid length"> </asp:RegularExpressionValidator>
                </td>
                <td style="width: 25%;text-align:left;">
                    <asp:TextBox runat="server" ID="txtLength1" MaxLength="5" Width="190"></asp:TextBox>&nbsp;M<br />
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator10" CssClass="red" Display="Dynamic" ControlToValidate="txtLength1" ErrorMessage="Please enter Lenghth"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator2" CssClass="red" ValidationExpression="^(?:\d{1,2})?(?:\.\d{1,2})?$"
                         ControlToValidate="txtLength1" Display="Dynamic" ErrorMessage="Please enter valid length"> </asp:RegularExpressionValidator>
                </td>
                <td style="width: 25%;text-align:left;"> 
                    <asp:TextBox runat="server" ID="txtLength" MaxLength="5" Width="190"></asp:TextBox>&nbsp;M<br />
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator13" CssClass="red" Display="Dynamic" ControlToValidate="txtLength" ErrorMessage="Please enter Lenghth"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator3" CssClass="red" ValidationExpression="^(?:\d{1,2})?(?:\.\d{1,2})?$"
                         ControlToValidate="txtLength" Display="Dynamic" ErrorMessage="Please enter valid length"> </asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height:10px;">

                </td>
            </tr>
                     <tr>
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblDH">Height (M)</asp:Label>
                </td>
                <td style="width: 25%;text-align:left;">
                    <asp:TextBox runat="server" ID="txtHeight2" MaxLength="4" Width="190"></asp:TextBox>&nbsp;M<br />
                    <asp:RequiredFieldValidator runat="server" ID="rfvHeight" CssClass="red" Display="Dynamic" ControlToValidate="txtHeight2" ErrorMessage="Please enter Height"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="revHeight" CssClass="red" ValidationExpression="^(?:\d{1})?(?:\.\d{1,2})?$"
                         ControlToValidate="txtHeight2" Display="Dynamic" ErrorMessage="Please enter valid height"> </asp:RegularExpressionValidator>
                </td>
                <td style="width: 25%;text-align:left;">
                    <asp:TextBox runat="server" ID="txtHeight1" MaxLength="4" Width="190"></asp:TextBox>&nbsp;M<br />
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator16" CssClass="red" Display="Dynamic" ControlToValidate="txtHeight1" ErrorMessage="Please enter Height"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator6" CssClass="red" ValidationExpression="^(?:\d{1})?(?:\.\d{1,2})?$"
                         ControlToValidate="txtHeight1" Display="Dynamic" ErrorMessage="Please enter valid height"> </asp:RegularExpressionValidator>
                </td>
                <td style="width: 25%;text-align:left;"> 
                    <asp:TextBox runat="server" ID="txtHeight" MaxLength="4" Width="190" AutoPostBack="true" OnTextChanged="txtHeight_TextChanged"></asp:TextBox>&nbsp;M<br />
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator17" CssClass="red" Display="Dynamic" ControlToValidate="txtHeight" ErrorMessage="Please enter Height"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator7" CssClass="red" ValidationExpression="^(?:\d{1})?(?:\.\d{1,2})?$"
                         ControlToValidate="txtHeight" Display="Dynamic" ErrorMessage="Please enter valid height"> </asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height:10px;">

                </td>
            </tr>
                    <tr>
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblDW">Width (M)</asp:Label>
                </td>
                <td style="width: 25%;text-align:left;">
                    <asp:TextBox runat="server" ID="txtWidth2" MaxLength="4" Width="190"></asp:TextBox>&nbsp;M<br />
                    <asp:RequiredFieldValidator runat="server" ID="rfvWidth" CssClass="red" Display="Dynamic" ControlToValidate="txtWidth2" ErrorMessage="Please enter Width"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="revWidth" CssClass="red" ValidationExpression="^(?:\d{1})?(?:\.\d{1,2})?$"
                         ControlToValidate="txtWidth2" Display="Dynamic" ErrorMessage="Please enter valid Width"> </asp:RegularExpressionValidator>
                </td>
                <td style="width: 25%;text-align:left;">
                    <asp:TextBox runat="server" ID="txtWidth1" MaxLength="4" Width="190"></asp:TextBox>&nbsp;M<br />
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator14" CssClass="red" Display="Dynamic" ControlToValidate="txtWidth1" ErrorMessage="Please enter Width"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator4" CssClass="red" ValidationExpression="^(?:\d{1})?(?:\.\d{1,2})?$"
                         ControlToValidate="txtWidth1" Display="Dynamic" ErrorMessage="Please enter valid Width"> </asp:RegularExpressionValidator>
                </td>
                <td style="width: 25%;text-align:left;"> 
                    <asp:TextBox runat="server" ID="txtWidth" AutoPostBack="true" MaxLength="4" Width="190" OnTextChanged="txtWidth_TextChanged"></asp:TextBox>&nbsp;M<br />
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator15" CssClass="red" Display="Dynamic" ControlToValidate="txtWidth" ErrorMessage="Please enter Width"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator5" CssClass="red" ValidationExpression="^(?:\d{1})?(?:\.\d{1,2})?$"
                         ControlToValidate="txtWidth" Display="Dynamic" ErrorMessage="Please enter valid Width"> </asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height:10px;">

                </td>
            </tr>
                   
                    <tr>
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblMass">Mass (Tonne)</asp:Label>
                </td>
                <td style="width: 25%;text-align:left;">
                    <asp:TextBox runat="server" ID="txtMass2" MaxLength="5" Width="190"></asp:TextBox>&nbsp;T<br />
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator20" CssClass="red" Display="Dynamic" ControlToValidate="txtMass2" ErrorMessage="Please enter Mass"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator8" CssClass="red" ValidationExpression="^[0-9]+$"
                         ControlToValidate="txtMass2" Display="Dynamic" ErrorMessage="Please enter valid mass"> </asp:RegularExpressionValidator>
                </td>
                <td style="width: 25%;text-align:left;">
                    <asp:TextBox runat="server" ID="txtMass1" MaxLength="5" Width="190"></asp:TextBox>&nbsp;T<br />
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator21" CssClass="red" Display="Dynamic" ControlToValidate="txtMass1" ErrorMessage="Please enter Mass"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator11" CssClass="red" ValidationExpression="^[0-9]+$"
                         ControlToValidate="txtMass1" Display="Dynamic" ErrorMessage="Please enter valid mass"> </asp:RegularExpressionValidator>
                </td>
                <td style="width: 25%;text-align:left;"> 
                    <asp:TextBox runat="server" ID="txtMass" MaxLength="5" Width="190" AutoPostBack="true" OnTextChanged="txtMass_TextChanged"></asp:TextBox>&nbsp;T<br />
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator22" CssClass="red" Display="Dynamic" ControlToValidate="txtMass" ErrorMessage="Please enter Mass"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator12" CssClass="red" ValidationExpression="^[0-9]+$"
                         ControlToValidate="txtMass" Display="Dynamic" ErrorMessage="Please enter valid mass"> </asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height:10px;">

                </td>
            </tr>
                    <tr>
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblORear">Overhang Rear (M)</asp:Label>
                </td>
                <td style="width: 25%;text-align:left;">
                </td>
                <td style="width: 25%;text-align:left;">
                </td>
                <td style="width: 25%;text-align:left;"> 
                    <asp:TextBox runat="server" ID="txtHang" MaxLength="5" Width="190"></asp:TextBox>&nbsp;M<br />
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator25" CssClass="red" Display="Dynamic" ControlToValidate="txtHang" ErrorMessage="Please enter Lenghth"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator15" CssClass="red" ValidationExpression="^(?:\d{1,2})?(?:\.\d{1,2})?$"
                         ControlToValidate="txtHang" Display="Dynamic" ErrorMessage="Please enter valid length"> </asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height:10px;">

                </td>
            </tr>
                    <tr>
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblOFront">Overhang Front (motor vehicle) (M)</asp:Label>
                </td>
                <td style="width: 25%;text-align:left;">
                </td>
                <td style="width: 25%;text-align:left;">
                </td>
                <td style="width: 25%;text-align:left;"> 
                    <asp:TextBox runat="server" ID="txtHand" MaxLength="5" Width="190"></asp:TextBox>&nbsp;M<br />
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator28" CssClass="red" Display="Dynamic" ControlToValidate="txtHand" ErrorMessage="Please enter Lenghth"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator18" CssClass="red" ValidationExpression="^(?:\d{1,2})?(?:\.\d{1,2})?$"
                         ControlToValidate="txtHand" Display="Dynamic" ErrorMessage="Please enter valid length"> </asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height:10px;">

                </td>
            </tr>
                    <tr>
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblORight">Overhang Right (M)</asp:Label>
                </td>
                <td style="width: 25%;text-align:center;">
                </td>
                <td style="width: 25%;text-align:center;">
                </td>
                <td style="width: 25%;text-align:left;"> 
                    <asp:TextBox runat="server" ID="txtORight" MaxLength="5" Width="190"></asp:TextBox>&nbsp;M<br />
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" CssClass="red" Display="Dynamic" ControlToValidate="txtORight" ErrorMessage="Please enter right"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator13" CssClass="red" ValidationExpression="^(?:\d{1,2})?(?:\.\d{1,2})?$"
                         ControlToValidate="txtORight" Display="Dynamic" ErrorMessage="Please enter valid right"> </asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height:10px;">

                </td>
            </tr>
                     <tr>
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblOLeft">Overhang Left (M)</asp:Label>
                </td>
                <td style="width: 25%;text-align:center;">
                </td>
                <td style="width: 25%;text-align:center;">
                </td>
                <td style="width: 25%;text-align:left;"> 
                    <asp:TextBox runat="server" ID="txtOLeft" MaxLength="5" Width="190"></asp:TextBox>&nbsp;M<br />
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" CssClass="red" Display="Dynamic" ControlToValidate="txtHand" ErrorMessage="Please enter right"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator14" CssClass="red" ValidationExpression="^(?:\d{1,2})?(?:\.\d{1,2})?$"
                         ControlToValidate="txtORight" Display="Dynamic" ErrorMessage="Please enter valid right"> </asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height:10px;">

                </td>
            </tr>
                    <tr>
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblDraw">Overhang Front (drawbar) (M)</asp:Label>
                </td>
                <td style="width: 25%;text-align:left;">
                </td>
                <td style="width: 25%;text-align:left;">
                </td>
                <td style="width: 25%;text-align:left;"> 
                    <asp:TextBox runat="server" ID="txtFront" MaxLength="5" Width="190"></asp:TextBox>&nbsp;M<br />
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator31" CssClass="red" Display="Dynamic" ControlToValidate="txtFront" ErrorMessage="Please enter Lenghth"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator21" CssClass="red" ValidationExpression="^(?:\d{1,2})?(?:\.\d{1,2})?$"
                         ControlToValidate="txtFront" Display="Dynamic" ErrorMessage="Please enter valid length"> </asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height:10px;">

                </td>
            </tr>
            </table>
                    </fieldset>
                <fieldset>
                <legend>
                    <asp:Label runat="server" ID="lblVConfig">Vehicle Configuration:</asp:Label>
                    </legend>
                <table style="width: 100%;">
                <tr>
                    <td colspan="4" style="width: 100%; height:10px;">

                    </td>
                </tr>
                <tr>
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblACF">Axle Configuration</asp:Label><span class="red">*</span><br />
                    
                </td>
                <td style="width: 25%;">
                    <asp:DropDownList ID="ddlAC" runat="server" AutoPostBack="true" Width="190"  OnSelectedIndexChanged="ddlAC_SelectedIndexChanged">
                        <asp:ListItem Value="">Select Axle Configuration</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="rfvAC" CssClass="red" ControlToValidate="ddlAC" Display="Dynamic" ErrorMessage="Please select Axle Configuration"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 25%;">
                </td>
                <td style="width: 25%;"> 
                </td>  
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height:10px;">

                </td>
            </tr>
            </table>
                    </fieldset>
                <fieldset id="fsReg">
                <legend>
                    <asp:Label runat="server" ID="lblVRD">Vehicle Registration Details:</asp:Label>
                    </legend>
            <table style="width: 100%;">
                <tr>
                <td colspan="4" style="width: 100%; height: 10px;"></td>
            </tr>
                <asp:PlaceHolder runat="server" ID="phAxel">
                    </asp:PlaceHolder>
                </table>
                    </fieldset>
                <fieldset>
                <legend>
                    <asp:Label runat="server" ID="lblAInfo">Axle Information:</asp:Label>
                    </legend>
                <table style="width: 100%;">
                <tr>
                    <td colspan="4" style="width: 100%; height:10px;">

                    </td>
                </tr>
                <tr>
                <td style="width: 25%;text-align:center;">
                    <asp:Label runat="server" ID="lblANo">Axle No.</asp:Label>
                </td>
                <td style="width: 25%;text-align:center;">
                    <asp:Label runat="server" ID="lblASpace">Axle Spacing (M)</asp:Label><br />
                </td>
                <td style="width: 25%;text-align:center;">
                    <asp:Label runat="server" ID="lblRAL">Required Axle Load (Kg)</asp:Label><span class="red"></span><br />
                </td>
                <td style="width: 25%;text-align:center;"> 
                    <asp:Label runat="server" ID="lblAAL">Actual Axle Load (Kg)</asp:Label>
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height:10px;">

                </td>
            </tr>
            <asp:PlaceHolder runat="server" ID="phPermit1">
                    </asp:PlaceHolder>
            <tr>
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblTW">Total Weight</asp:Label><span class="red">*</span>
                </td>
                <td style="width: 25%;">
                    <asp:TextBox runat="server" ID="txtWT" Width="190" MaxLength="10" Enabled="false"></asp:TextBox>&nbsp;Kg<br />
                    <asp:RequiredFieldValidator runat="server" ID="rfvWT" CssClass="red" Display="Dynamic" ControlToValidate="txtWT" ErrorMessage="Please enter weight"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="revWT" CssClass="red" ValidationExpression="^[0-9]+$"
                         ControlToValidate="txtWT" Display="Dynamic" ErrorMessage="Please enter valid weight"> </asp:RegularExpressionValidator>
                </td>
                <td style="width: 25%;text-align:left;">
                </td>
                <td style="width: 25%;text-align:left;"> 
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height:10px;">

                </td>
            </tr>
            </table>
                    </fieldset>
                
                <fieldset>
                <legend>
                    <asp:Label runat="server" ID="lblLInfo">Load Information:</asp:Label>
                    </legend>
                    
        <table style="width: 100%;">
            <tr>
                    <td colspan="4" style="width: 100%; height:10px;">

                    </td>
                </tr>
                <tr>
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblLType">Load Type:</asp:Label>
                </td>
                <td style="width: 25%;">
                    <asp:DropDownList runat="server" ID="ddlDCargo" Width="190" AutoPostBack="true" OnSelectedIndexChanged="ddlDCargo_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="rfvDCargo" CssClass="red" Visible="true" ControlToValidate="ddlDCargo" Display="Dynamic" ErrorMessage="Please select load"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 25%;"></td>
                <td style="width: 25%;"></td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height: 10px;"></td>
            </tr>
                <tr>
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblLCat">Load Category:</asp:Label>
                </td>
                <td style="width: 25%;">
                    <asp:DropDownList runat="server" ID="ddlLoad" Width="190" AutoPostBack="true" OnSelectedIndexChanged="ddlLoad_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="rfvLoad" CssClass="red" Visible="true" ControlToValidate="ddlLoad" Display="Dynamic" ErrorMessage="Please select load category"></asp:RequiredFieldValidator>
                </td>
                <td id="tdin" visible="false" runat="server" style="width: 25%;">
                    <asp:Label runat="server" ID="lblUD">Upload Document </asp:Label>
                </td>
                <td id="tddin" runat="server" visible="false" style="width: 25%;">
                    <asp:LinkButton runat="server" ID="lnkEIND" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkEIND_Click"></asp:LinkButton>
                    <asp:FileUpload runat="server" Width="190" ID="fuIND" ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator10" CssClass="red" 
                            ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                            ControlToValidate="fuIND" Display="Dynamic" 
                            ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt"> 
                    </asp:RegularExpressionValidator>
                    <asp:CustomValidator ID="cvIND" runat="server" ControlToValidate="fuIND" CssClass="red"
                        ErrorMessage="File size should not be greater than 20 MB." Display="Dynamic" 
                        OnServerValidate="cvIND_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height: 10px;"></td>
            </tr>
            <tr>
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblTCN">Load Name</asp:Label>
                    <span class="red">*</span>
                </td>
                <td style="width: 25%;">
                    <asp:DropDownList runat="server" Width="190" ID="ddlCName" AutoPostBack="true" OnSelectedIndexChanged="ddlCName_SelectedIndexChanged"></asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="rfvCName" CssClass="red" ControlToValidate="ddlCName" Display="Dynamic" ErrorMessage="Please select cargo type"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblCReg" Visible="false">Registration No.</asp:Label>
                </td>
                <td style="width: 25%;">
                    <asp:TextBox runat="server" ID="txtCReg" Width="190" MaxLength="50" Visible="false"></asp:TextBox><br />
                    <asp:RequiredFieldValidator runat="server" ID="rfvCReg" CssClass="red" Visible="false" ControlToValidate="txtCReg" Display="Dynamic" ErrorMessage="Please enter registration no."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height: 10px;"></td>
            </tr>
            
            <tr>
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblCD">Load Description</asp:Label>
                    
                </td>
                <td style="width: 25%;">
                    <asp:TextBox runat="server" ID="txtCDetails" Width="190" MaxLength="200"></asp:TextBox><br />
                    <asp:Label runat="server" ID="lblCDetails" CssClass="red" Visible="false">Please enter cargo details</asp:Label>
                </td>
                <td style="width: 25%;"></td>
                <td style="width: 25%;"></td>
            </tr>
            <tr>
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
            <tr>
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblTP">Phone No. </asp:Label><b>(Ex:XXXXXXXXX)</b>
                    <span class="red">*</span>
                </td>
                <td style="width: 25%;">
                    <asp:TextBox runat="server" ID="txtCD" Width="40" Enabled="false" MaxLength="3" Text="255"></asp:TextBox>
                    <asp:TextBox runat="server" ID="txtTP" Width="140" MaxLength="9"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvTP" CssClass="red" ControlToValidate="txtTP" Display="Dynamic" ErrorMessage="Please enter phone no."></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="revPhone" CssClass="red" ValidationExpression="^[0-9]{9}$"
                                ControlToValidate="txtTP" Display="Dynamic" ErrorMessage="Please enter valid number"> </asp:RegularExpressionValidator>
                </td>
                <td style="width: 25%;"></td>
                <td style="width: 25%;"></td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height: 10px;"></td>
            </tr>
            
                    <asp:PlaceHolder runat="server" ID="phPermit">
                    </asp:PlaceHolder>
            
            
            <tr runat="server" id="trnop" visible="false">
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblNumP">Number of Police</asp:Label>
                    <span class="red">*</span>
                </td>
                <td style="width: 25%;">
                    <asp:TextBox runat="server" ID="txtNOP" MaxLength="5" Width="190"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvNOP" CssClass="red" ControlToValidate="txtNOP" Display="Dynamic" ErrorMessage="Please enter number of police"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="revNOP" CssClass="red" ValidationExpression="^[0-9]{1,2}$"
                        ControlToValidate="txtNOP" Display="Dynamic" ErrorMessage="Please enter valid police number"> </asp:RegularExpressionValidator>
                </td>
                <td style="width: 25%;"></td>
                <td style="width: 25%;"></td>
            </tr>
            <tr runat="server" id="trgnop" visible="false">
                <td colspan="4" style="width: 100%; height: 10px;"></td>
            </tr>
            <tr runat="server" id="trnov" visible="false">
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblNumV">Number of Vehicles</asp:Label>
                    <span class="red">*</span>
                </td>
                <td style="width: 25%;">
                    <asp:TextBox runat="server" ID="txtNOV" MaxLength="5" Width="190"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvNOV" CssClass="red" ControlToValidate="txtNOV" Display="Dynamic" ErrorMessage="Please enter number of vehicles"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="revNOV" CssClass="red" ValidationExpression="^[0-9]{1,2}$"
                        ControlToValidate="txtNOV" Display="Dynamic" ErrorMessage="Please enter valid vehicle number"> </asp:RegularExpressionValidator>
                </td>
                <td style="width: 25%;"></td>
                <td style="width: 25%;"></td>
            </tr>
            <tr runat="server" id="trgnov" visible="false">
                <td colspan="4" style="width: 100%; height: 10px;"></td>
            </tr>
            
        </table>
                    </fieldset>
                <fieldset>
                <legend>
                    <asp:Label runat="server" ID="lblRoute">Route Information:</asp:Label>
                    </legend>
                <table style="width: 100%;">
                <tr>
                    <td colspan="3" style="width: 100%; height:10px;">

                    </td>
                </tr>
                <tr>
                <td style="width: 33%;">
                    <asp:Label runat="server" ID="lblF">FROM</asp:Label><span class="red">*</span><br />
                    <asp:TextBox runat="server" ID="txtFrom" Width="190" MaxLength="50"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvFrom" CssClass="red" Display="Dynamic" ControlToValidate="txtFrom" ErrorMessage="Please enter point of loading"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 33%;">
                    <asp:Label runat="server" ID="lblT">TO</asp:Label><span class="red">*</span><br />
                    <asp:TextBox runat="server" ID="txtTo" Width="190" MaxLength="50"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvTo" CssClass="red" Display="Dynamic" ControlToValidate="txtTo" ErrorMessage="Please enter route / itinerary"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 34%;">
                    <asp:Label runat="server" ID="lblV">VIA</asp:Label><span class="red">*</span><br />
                    <asp:TextBox runat="server" ID="txtVia" MaxLength="100" Width="190"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvVia" CssClass="red" Display="Dynamic" ControlToValidate="txtVia" ErrorMessage="Please enter point of unloading"></asp:RequiredFieldValidator>
                </td>    
            </tr>
            <tr>
                <td colspan="3" style="width: 100%; height:10px;">

                </td>
            </tr>
            </table>
                    </fieldset>
                <table style="width: 100%;">
                <tr>
                        <td colspan="2" style="width: 100%; height:10px;">

                        </td>
                    </tr>
                </table>
                <fieldset runat="server" id="fsEscort" visible="false">
                <legend>
                    <asp:Label runat="server" ID="lblEV">Escort Vehicle:</asp:Label>
                    </legend>
                <table style="width: 100%;">
                    <tr>
                        <td colspan="2" style="width: 100%; height:10px;">

                        </td>
                    </tr>
                    <asp:PlaceHolder runat="server" Visible="false" ID="phEscort">
                    </asp:PlaceHolder>      
                    </table>
                </fieldset>
                <table style="width: 100%;">
                <tr>
                        <td colspan="2" style="width: 100%; height:10px;">

                        </td>
                    </tr>
                </table>
                <fieldset>
                            <legend>
                                <asp:Label runat="server" ID="lblAttach">Attachments:</asp:Label>
                                </legend>
                                <table style="width: 100%;">
                                <tr>
                                        <td colspan="2" style="width: 100%; height:10px;">

                                        </td>
                                 </tr>
                                    <asp:PlaceHolder runat="server" ID="phHorse"></asp:PlaceHolder>
                                    <tr runat="server" id="trHire" visible="false">
                                        <td style="width: 40%;">
                                            <asp:Label runat="server" ID="lblEHire">Existing Hiring Agreement</asp:Label>
                                        </td>
                                        <td style="width: 60%;">
                                            <asp:LinkButton runat="server" ID="lnkHire" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkHire_Click"></asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 40%;">
                                            <asp:Label runat="server" ID="lblHire">Upload Hiring Agreement </asp:Label>
                                        </td>
                                        <td style="width: 60%;">
                                            <asp:FileUpload runat="server" Width="190" ID="fuHire" ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                            <asp:Label runat="server" ID="Label2" CssClass="red" Visible="false">Please upload document</asp:Label>
                                            <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" CssClass="red" 
                                                 ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                 ControlToValidate="fuImages" Display="Dynamic" 
                                                 ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt"> 
                                            </asp:RegularExpressionValidator>
                                            <asp:CustomValidator ID="cvHire" runat="server" ControlToValidate="fuHire" CssClass="red"
                                                ErrorMessage="File size should not be greater than 20 MB." Display="Dynamic" 
                                                OnServerValidate="cvHire_ServerValidate"></asp:CustomValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                 <tr runat="server" id="treDraw" visible="false">
                                        <td style="width: 40%;">
                                            <asp:Label runat="server" ID="lblECID">Existing Cargo Images & Drawings</asp:Label>
                                        </td>
                                        <td style="width: 60%;">
                                            <asp:LinkButton runat="server" ID="lnkImages" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkImages_Click"></asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 40%;">
                                            <asp:Label runat="server" ID="lblCID">Upload Cargo Images & Drawings</asp:Label>
                                        </td>
                                        <td style="width: 60%;">
                                            <asp:FileUpload runat="server" ID="fuImages" Width="190" ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                            <asp:Label runat="server" ID="lblfuImages" CssClass="red" Visible="false">Please upload document</asp:Label>
                                            <asp:RegularExpressionValidator runat="server" ID="revImages" CssClass="red" 
                                                 ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                 ControlToValidate="fuImages" Display="Dynamic" 
                                                 ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt"> 
                                            </asp:RegularExpressionValidator>
                                            <asp:CustomValidator ID="cvImages" runat="server" ControlToValidate="fuImages" CssClass="red"
                                                ErrorMessage="File size should not be greater than 20 MB." Display="Dynamic" 
                                                OnServerValidate="cvImages_ServerValidate"></asp:CustomValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="width: 100%; height: 10px;"></td>
                                    </tr> 
                                    <tr runat="server" id="trEWeight" visible="false">
                                        <td style="width: 40%;">
                                            <asp:Label runat="server" ID="lblEWTT">Existing Weigh Ticket from TANROADS</asp:Label>
                                        </td>
                                        <td style="width: 60%;">
                                            <asp:LinkButton runat="server" ID="lnkEWeight" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkEWeight_Click"></asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr runat="server" id="trWeight" visible="true">
                                        <td style="width: 40%;">
                                            <asp:Label runat="server" ID="lblWTT">Upload Weigh Ticket from TANROADS</asp:Label>
                                        </td>
                                        <td style="width: 60%;">
                                            <asp:FileUpload runat="server" ID="fuTan" Width="190" ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                            <asp:Label runat="server" ID="lblfuTan" Visible="false" CssClass="red">Please upload document</asp:Label>
                                            <asp:RegularExpressionValidator runat="server" ID="revTan" CssClass="red" 
                                                 ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                 ControlToValidate="fuTan" Display="Dynamic" 
                                                 ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt"> 
                                            </asp:RegularExpressionValidator>
                                            <asp:CustomValidator ID="cvTan" runat="server" ControlToValidate="fuTan" CssClass="red"
                                                ErrorMessage="File size should not be greater than 20 MB." Display="Dynamic" 
                                                OnServerValidate="cvTan_ServerValidate"></asp:CustomValidator>
                                        </td>
                                    </tr>
                                    <tr runat="server" id="trgWeight" visible="true">
                                        <td colspan="2" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr runat="server" id="trEPolice" visible="false">
                                        <td style="width: 40%;">
                                            <asp:Label runat="server" ID="lblECLP">Existing Confirmation Letter from Police</asp:Label>
                                        </td>
                                        <td style="width: 60%;">
                                            <asp:LinkButton runat="server" ID="lnkEPolice" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkEPolice_Click"></asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr runat="server" id="trPolice" visible="false">
                                        <td style="width: 40%;">
                                            <asp:Label runat="server" ID="lblCLP">Upload Confirmation Letter from Police</asp:Label>
                                        </td>
                                        <td style="width: 60%;">
                                            <asp:FileUpload runat="server" ID="fuPolice" Width="190" ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" /><br />
                                            <asp:RegularExpressionValidator runat="server" ID="revPolice" CssClass="red" 
                                                 ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                 ControlToValidate="fuPolice" Display="Dynamic" 
                                                 ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt"> 
                                            </asp:RegularExpressionValidator>
                                            <asp:CustomValidator ID="cvPolice" runat="server" ControlToValidate="fuPolice" CssClass="red"
                                                ErrorMessage="File size should not be greater than 20 MB." Display="Dynamic" 
                                                OnServerValidate="cvPolice_ServerValidate"></asp:CustomValidator>
                                        </td>
                                    </tr>
                                    <tr runat="server" id="trgPolice" visible="false">
                                        <td colspan="2" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr runat="server" id="trETanesco" visible="false">
                                        <td style="width: 40%;">
                                            <asp:Label runat="server" ID="lblECLT">Existing Confirmation Letter from TANESCO</asp:Label>
                                        </td>
                                        <td style="width: 60%;">
                                            <asp:LinkButton runat="server" ID="lnkETanesco" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkETanesco_Click"></asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr runat="server" id="trTanesco" visible="false">
                                        <td style="width: 40%;">
                                            <asp:Label runat="server" ID="lblCLT">Upload Confirmation Letter from TANESCO</asp:Label>
                                        </td>
                                        <td style="width: 60%;">
                                            <asp:FileUpload runat="server" ID="fuTanesco" Width="190" ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" /><br />
                                            <asp:RegularExpressionValidator runat="server" ID="revTanesco" CssClass="red" 
                                                 ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                 ControlToValidate="fuTanesco" Display="Dynamic" 
                                                 ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt"> 
                                            </asp:RegularExpressionValidator>
                                            <asp:CustomValidator ID="cvTanesco" runat="server" ControlToValidate="fuTanesco" CssClass="red"
                                                ErrorMessage="File size should not be greater than 20 MB." Display="Dynamic" 
                                                OnServerValidate="cvTanesco_ServerValidate"></asp:CustomValidator>
                                        </td>
                                    </tr>
                                    <tr runat="server" id="trgTanesco" visible="false">
                                        <td colspan="2" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr runat="server" id="trERoute" visible="false">
                                        <td style="width: 40%;">
                                            <asp:Label runat="server" ID="lblERS">Existing Route Survey</asp:Label>
                                        </td>
                                        <td style="width: 60%;">
                                            <asp:LinkButton runat="server" ID="lnkERoute" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkERoute_Click"></asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr runat="server" id="trgRoute" visible="false">
                                        <td colspan="2" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr runat="server" id="trEAdvg" visible="false">
                                        <td style="width: 40%;">
                                            <asp:Label runat="server" ID="lblEAdvg">Existing Advertisement</asp:Label>
                                        </td>
                                        <td style="width: 60%;">
                                            <asp:LinkButton runat="server" ID="lnkEAdvg" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkEAdvg_Click"></asp:LinkButton>
                                        </td>
                                    </tr> 
                                    <tr runat="server" id="trAdvg" visible="false">
                                        <td style="width: 40%;">
                                            <asp:Label runat="server" ID="lblAdvg">Upload Advertisement</asp:Label>
                                        </td>
                                        <td style="width: 60%;">
                                            <asp:FileUpload runat="server" ID="fuAdvg" Width="190" ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                            <asp:RegularExpressionValidator runat="server" ID="revAdvg" CssClass="red" 
                                                 ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                 ControlToValidate="fuAdvg" Display="Dynamic" 
                                                 ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt"> 
                                            </asp:RegularExpressionValidator>
                                            <asp:CustomValidator ID="cvAdvg" runat="server" ControlToValidate="fuAdvg" CssClass="red"
                                                ErrorMessage="File size should not be greater than 20 MB." Display="Dynamic" 
                                                OnServerValidate="cvAdvg_ServerValidate"></asp:CustomValidator>
                                        </td>
                                    </tr>
                                    <tr runat="server" id="trgAdvg" visible="false">
                                        <td colspan="2" style="width: 100%; height: 10px;"></td>
                                    </tr>
                                    <tr runat="server" id="trEMass" visible="false">
                                        <td style="width: 40%;">
                                            <asp:Label runat="server" ID="Label5">Existing Mass Document</asp:Label>
                                        </td>
                                        <td style="width: 60%;">
                                            <asp:LinkButton runat="server" ID="lnkEMass" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkEMass_Click"></asp:LinkButton>
                                        </td>
                                    </tr> 
                                    <tr runat="server" id="trMass" visible="false">
                            <td style="width: 40%;">
                                <asp:Label runat="server" ID="lblMD">Upload Mass Document</asp:Label>
                                <span class="red">*</span>
                            </td>
                            <td style="width: 60%;">
                                <asp:FileUpload runat="server" ID="fuMass" Width="190" ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator9" CssClass="red" 
                                     ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                     ControlToValidate="fuMass" Display="Dynamic" 
                                     ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt"> 
                                </asp:RegularExpressionValidator>
                                <asp:CustomValidator ID="cuMass" runat="server" ControlToValidate="fuMass" CssClass="red"
                                    ErrorMessage="File size should not be greater than 20 MB." Display="Dynamic" 
                                    OnServerValidate="cvMass_ServerValidate"></asp:CustomValidator>
                            </td>
                        </tr>
                        <tr runat="server" id="trgMass" visible="false">
                            <td colspan="2" style="width: 100%; height: 10px;"></td>
                        </tr>
                                    <tr>
                <td style="width: 40%;">
                    <asp:Label runat="server" ID="lblEBC">Enter Below Code</asp:Label>
                    <span class="red">*</span>
                </td>
                <td style="width: 60%;">
                    <asp:TextBox runat="server" ID="txtCaptcha" Width="190" MaxLength="200"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvCaptcha" CssClass="red" ControlToValidate="txtCaptcha" Display="Dynamic" ErrorMessage="Please enter captcha code"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="cvCaptcha" runat="server" ControlToValidate="txtCaptcha"
                      ErrorMessage="Please enter valid captcha code, try again." Display="Dynamic" CssClass="red" 
                      OnServerValidate="cvCaptcha_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
            <tr>
                <td style="width: 40%;">
                </td>
                <td style="width: 60%;">
                    <asp:Image ID="imgCaptcha" runat="server" Height="50" Width="100"  />&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton runat="server" ImageUrl="~/images/refresh.png" CausesValidation="false" ID="imgCaptcha1" OnClick="imgCaptcha1_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width: 100%; height: 20px;"></td>
            </tr>
                                 </table>
                               
                        </fieldset>
                        <table style="width: 100%;">
                        <tr>
                                <td colspan="2" style="width: 100%; height:10px;">

                                </td>
                            </tr>
                        </table>
                        <fieldset runat="server" id="fsTrans" visible="false">
                            <legend>
                                <asp:Label runat="server" ID="lblDFM">Document from MOWTC (Works)</asp:Label>
                                </legend>
                                    <table style="width: 100%;">
                                        <tr>
                                                <td colspan="2" style="width: 100%; height:10px;">
                                                </td>
                                         </tr>
                                         <tr >
                                                <td colspan="2" style="width: 100%;">
                                                    <asp:LinkButton runat="server" ID="lnkTrans" CausesValidation="false" OnClick="lnkTrans_Click" />
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td colspan="2" style="width: 100%; height: 10px;"></td>
                                            </tr>
                                        </table>
                            </fieldset>
                    </fieldset>
                    <table style="width: 100%;">
                    <tr>
                            <td colspan="2" style="width: 100%; height:10px;">

                            </td>
                        </tr>
                    </table>
            <fieldset>
            <legend>
            <asp:Label runat="server" ID="lblCmts">Comments:</asp:Label>
            </legend>
            <table style="width: 100%;">
            <tr runat="server" id="trgrid" visible="true">
                        <td style="width: 100%;">
                            <asp:GridView ID="gvComments" Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                runat="server" AutoGenerateColumns="false" Width="100%" EmptyDataText="No comments exists"  GridLines="None"
                                PageSize="10" AllowPaging="true" ShowHeader="false">
                                <Columns>
                                    <asp:TemplateField HeaderText="Commentd On" ItemStyle-VerticalAlign="Top" ItemStyle-Width="60px">
				                        <ItemTemplate>
					                        <asp:Label ID="lblCD" runat="server"><br />Commented By:<br />Commented Date:<br />Comment:<br /></asp:Label>
				                        </ItemTemplate>
			                        </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Commented By" ItemStyle-VerticalAlign="Top" ItemStyle-Width="200px">
				                        <ItemTemplate>
					                        <asp:Label ID="lblCB" runat="server"><br /><%# Eval("FullName") %><br /><%# Eval("Comments_Date") %><br /><%# Eval("Comments") %><br /></asp:Label>
				                        </ItemTemplate>
			                        </asp:TemplateField>    
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr runat="server" id="trgv" visible="false">
                        <td style="width: 100%; height: 10px;"></td>
                    </tr>
            </table>
                </fieldset>
                               <table style="width: 100%;">
                         <tr>
                          <td style="width: 100%; height: 20px;"></td>
                             </tr>
                         </table>
            <table style="width: 100%;">
            <tr runat="server" id="tralc" visible="true">
                        <td style="width: 10%;"></td>
                        <td colspan="2" style="width: 30%; vertical-align:top">
                            <asp:Label runat="server" ID="lblComments">Comments</asp:Label>&nbsp;<span class="red">*</span><br />
                            <asp:TextBox runat="server" TextMode="MultiLine" Rows="5" Width="750px" Columns="30" ID="txtComments"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="rfvComments" CssClass="red" ControlToValidate="txtComments" Display="Dynamic" ErrorMessage="Please enter comments"></asp:RequiredFieldValidator>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr runat="server" id="trgalc" visible="true">
                        <td colspan="4" style="width: 100%; height: 30px;"></td>
                    </tr>
            </table>
                
            <table style="width: 100%;">
            <tr>
                <td colspan="4" style="width: 100%; text-align: center;">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClientClick="Function2();" OnClick="btnSubmit_Click"  />&nbsp;&nbsp;
                                        <asp:Button runat="server" ID="btnCancel" Text="Cancel" OnClientClick="Function2();" OnClick="btnCancel_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height: 20px;"></td>
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
            <Triggers>
            <asp:PostBackTrigger ControlID = "btnSubmit" />
    </Triggers>
            </asp:UpdatePanel>
    </div>
</asp:Content>
