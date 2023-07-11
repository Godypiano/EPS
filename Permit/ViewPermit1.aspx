<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewPermit1.aspx.cs" MasterPageFile="~/Default.Master" Inherits="PresentationLayer.Permit.ViewPermit1" %>

<%@ MasterType VirtualPath="~/Default.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upRegister" runat="server">
            <ContentTemplate>
                <table style="width: 100%;">
                    <tr>
                    <td style="width: 2%;"></td>
                    <td style="width: 96%;">
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 2%;"></td>
                        <td style="width: 48%;">
                            <a class="navigationbar" href="Dashboard.aspx">Home</a>
                            &nbsp; &gt;&gt; &nbsp;<a class="navigationbar" href="SetupNotify.aspx">Notice</a>
                            <asp:Label runat="server" ID="lblview"></asp:Label>
                            
                            </td>
                        <td style="width: 48%; text-align:right">
                        <asp:LinkButton runat="server" CssClass="navigationbar" Visible="true" ID="lnkEnglish" CausesValidation="false" OnClick="lnkEnglish_Click">English</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton runat="server" Visible="true" CausesValidation="false" CssClass="navigationbar" ID="lnkSwahili" OnClick="lnkSwahili_Click">Swahili</asp:LinkButton>
                        </td>
                        <td style="width: 2%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 10px;"></td>
                    </tr>
                    </table>
                     <table style="width: 100%;">
                         <tr>
                            <td style="width: 2%;"></td>
                             <td style="width: 96%; text-align:right;">
                                <asp:Label runat="server" ID="lblfee"></asp:Label>
                                <asp:Label runat="server" ID="lblinv"></asp:Label>
                                <asp:Label runat="server" ID="lblrec"></asp:Label>
                                <asp:Label runat="server" ID="lblper"></asp:Label>
                             </td>
                             <td style="width: 2%;"></td>
                         </tr>
                         <tr>
                            <td colspan="2" style="width: 100%; height: 10px;"></td>
                        </tr>
                         </table>
                        <fieldset>
                        <legend>
                            <asp:Label runat="server" CssClass="hd1" ID="lblVAP">View Application: </asp:Label><asp:Label runat="server" CssClass="hd1" ID="lblapp"></asp:Label>
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
                    
                    <asp:Label runat="server" ID="lblCtype" Visible="false"></asp:Label>
                            <asp:TextBox runat="server" Enabled="false" Width="250" ID="lblVN"></asp:TextBox>
                    
                </td>
            </tr>
            <tr runat="server" id="tr2">
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
            <tr>
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="Label1">Vehicle Lease Type</asp:Label>
                    <span class="red">*</span>
                </td>
                <td style="width: 75%;">
                    <asp:TextBox runat="server" Enabled="false" Width="250" ID="lblVeh"></asp:TextBox>
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
                    <asp:Label runat="server" ID="Label3">Applicant Details:</asp:Label>
                    </legend>
            <table style="width: 100%;">
                <tr>
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
        <tr>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="Label4">Name of Applicant</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtOApp" Width="190" MaxLength="200" Enabled="false"></asp:TextBox><br />
                </td>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblHApp" Visible="false">Name of Haulier</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtHApp" Visible="false" Width="190" Enabled="false" MaxLength="200"></asp:TextBox><br />
                </td>
            </tr>
                <tr>
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
                <tr>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="Label6">Street Number</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtOSt" Width="190" MaxLength="200" Enabled="false"></asp:TextBox><br />
                </td>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblHSt" Visible="false">Street Number</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtHSt" Width="190" Visible="false" Enabled="false" MaxLength="200"></asp:TextBox><br />
                </td>
            </tr>
                <tr>
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
                <tr>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="Label8">City</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtOCity" Width="190" MaxLength="200" Enabled="false"></asp:TextBox><br />
                </td>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblHCity" Visible="false">City</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtHCity" Width="190" Visible="false" Enabled="false" MaxLength="200"></asp:TextBox><br />
                </td>
            </tr>
                <tr>
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
                <tr>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="Label10">Zip / Postal Code</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtOZip" Width="190" MaxLength="200" Enabled="false"></asp:TextBox><br />
                </td>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblHZip" Visible="false">Zip / Postal Code</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtHZip" Visible="false" Enabled="false" Width="190" MaxLength="200"></asp:TextBox><br />
                </td>
            </tr>
                <tr>
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
                <tr>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="Label12">Country</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtOCou" Width="190" MaxLength="200" Enabled="false"></asp:TextBox><br />
                </td>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblHCou" Visible="false">Country</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtHCou" Visible="false" Width="190" Enabled="false" MaxLength="200"></asp:TextBox><br />
                </td>
            </tr>
                <tr>
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
                <tr>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="Label14">Telephone</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtOTel" Width="190" MaxLength="200" Enabled="false"></asp:TextBox><br />
                </td>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblHTel" Visible="false">Telephone</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtHTel" Visible="false" Width="190" Enabled="false" MaxLength="200"></asp:TextBox><br />
                </td>
            </tr>
                <tr>
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
                <tr>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="Label16">Fax</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtOFax" Width="190" MaxLength="200" Enabled="false"></asp:TextBox><br />
                </td>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblHFax" Visible="false">Fax</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtHFax" Width="190" Visible="false" Enabled="false" MaxLength="200"></asp:TextBox><br />
                </td>
            </tr>
                <tr>
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
                <tr>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="Label18">Email</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtOEmail" Width="190" MaxLength="200" Enabled="false"></asp:TextBox><br />
                </td>
            <td style="width: 25%;">
                <asp:Label runat="server" ID="lblHEmail" Visible="false">Email</asp:Label>
            </td>
            <td style="width: 25%;">
                <asp:TextBox runat="server" ID="txtHEmail" Visible="false" Width="190" Enabled="false" MaxLength="200"></asp:TextBox><br />
                </td>
            </tr>
                <tr>
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
            
                </table>
                    </fieldset>
                <fieldset>
                <legend>
                    <asp:Label runat="server" ID="Label20">Journey:</asp:Label>
                    </legend>
                <table style="width: 100%;">
                <tr>
                    <td colspan="3" style="width: 100%; height:10px;">

                    </td>
                </tr>
                <tr>
                <td style="width: 33%;">
                    <label>Application Date and Time</label><br />
                    <asp:TextBox runat="server" Enabled="false" Width="190" ID="lblADate"></asp:TextBox>
                </td>
                <td style="width: 33%;">
                    <label>Journey Date</label><br />
                    <asp:TextBox runat="server" Enabled="false" Width="190" ID="lblJDate"></asp:TextBox>
                </td>
                <td style="width: 33%;">
                    <asp:Label runat="server" ID="Label23">Permit Expired Date</asp:Label><br />
                    <asp:TextBox runat="server" ID="txtTo1" MaxLength="100" Width="190" Enabled="false"></asp:TextBox>
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
                    <asp:Label runat="server" ID="Label24">Transport Information:</asp:Label>
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
                    <asp:Label runat="server" ID="Label26">Unladen Vehicle</asp:Label><span class="red">*</span><br />
                </td>
                <td style="width: 25%;text-align:left;">
                    <asp:Label runat="server" ID="Label27">Load</asp:Label><span class="red">*</span><br />
                </td>
                <td style="width: 25%;text-align:left;"> 
                    <asp:Label runat="server" ID="Label25">Laden Vehicle</asp:Label><span class="red">*</span><br />
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height:10px;">

                </td>
            </tr>
            <tr>
                <td style="width: 25%;">
                    <label>Length (M)</label>
                </td>
                <td style="width: 25%;text-align:left;">
                    <asp:TextBox runat="server" ID="txtLength2" MaxLength="5" Width="190" Enabled="false"></asp:TextBox>&nbsp;M<br />
                </td>
                <td style="width: 25%;text-align:left;">
                    <asp:TextBox runat="server" ID="txtLength1" MaxLength="5" Width="190" Enabled="false"></asp:TextBox>&nbsp;M<br />
                </td>
                <td style="width: 25%;text-align:left;"> 
                    <asp:TextBox runat="server" ID="lblLength" MaxLength="5" Width="190" Enabled="false"></asp:TextBox>&nbsp;M<br />
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height:10px;">

                </td>
            </tr>
                     <tr>
                <td style="width: 25%;">
                    <label>Height (M)</label>
                </td>
                <td style="width: 25%;text-align:left;">
                    <asp:TextBox runat="server" ID="txtHeight2" MaxLength="4" Width="190" Enabled="false"></asp:TextBox>&nbsp;M<br />
                </td>
                <td style="width: 25%;text-align:left;">
                    <asp:TextBox runat="server" ID="txtHeight1" MaxLength="4" Width="190" Enabled="false"></asp:TextBox>&nbsp;M<br />
                </td>
                <td style="width: 25%;text-align:left;"> 
                    <asp:TextBox runat="server" ID="lblHeight" MaxLength="4" Width="190" Enabled="false"></asp:TextBox>&nbsp;M<br />
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height:10px;">

                </td>
            </tr>
                    <tr>
                <td style="width: 25%;">
                    <label>Width (M)</label>
                </td>
                <td style="width: 25%;text-align:left;">
                    <asp:TextBox runat="server" ID="txtWidth2" MaxLength="4" Width="190" Enabled="false"></asp:TextBox>&nbsp;M<br />
                </td>
                <td style="width: 25%;text-align:left;">
                    <asp:TextBox runat="server" ID="txtWidth1" MaxLength="4" Width="190" Enabled="false"></asp:TextBox>&nbsp;M<br />
                </td>
                <td style="width: 25%;text-align:left;"> 
                    <asp:TextBox runat="server" ID="lblWidth" MaxLength="4" Width="190" Enabled="false"></asp:TextBox>&nbsp;M<br />
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height:10px;">

                </td>
            </tr>
                   
                    <tr>
                <td style="width: 25%;">
                    <label>Mass (Tonne)</label>
                </td>
                <td style="width: 25%;text-align:left;">
                    <asp:TextBox runat="server" ID="txtMass2" MaxLength="5" Width="190" Enabled="false"></asp:TextBox>&nbsp;T<br />
                </td>
                <td style="width: 25%;text-align:left;">
                    <asp:TextBox runat="server" ID="txtMass1" MaxLength="5" Width="190" Enabled="false"></asp:TextBox>&nbsp;T<br />
                </td>
                <td style="width: 25%;text-align:left;"> 
                    <asp:TextBox runat="server" ID="txtMass" MaxLength="5" Width="190" Enabled="false"></asp:TextBox>&nbsp;T<br />
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height:10px;">

                </td>
            </tr>
                    <tr>
                <td style="width: 25%;">
                    <label>Overhang rear (M)</label>
                </td>
                <td style="width: 25%;text-align:left;">
                </td>
                <td style="width: 25%;text-align:left;">
                </td>
                <td style="width: 25%;text-align:left;"> 
                    <asp:TextBox runat="server" ID="txtHang" MaxLength="5" Width="190" Enabled="false"></asp:TextBox>&nbsp;M<br />
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height:10px;">

                </td>
            </tr>
                    <tr>
                <td style="width: 25%;">
                    <label>Overhang Front (motor vehicle) (M)</label>
                </td>
                <td style="width: 25%;text-align:left;">
                </td>
                <td style="width: 25%;text-align:left;">
                </td>
                <td style="width: 25%;text-align:left;"> 
                    <asp:TextBox runat="server" ID="txtHand" MaxLength="5" Width="190" Enabled="false"></asp:TextBox>&nbsp;M<br />
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height:10px;">

                </td>
            </tr>
                    <tr>
                <td style="width: 25%;">
                    <label>Overhang Right (M)</label>
                </td>
                <td style="width: 25%;text-align:left;">
                </td>
                <td style="width: 25%;text-align:left;">
                </td>
                <td style="width: 25%;text-align:left;"> 
                    <asp:TextBox runat="server" ID="txtORight" MaxLength="5" Width="190" Enabled="false"></asp:TextBox>&nbsp;M<br />
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height:10px;">

                </td>
            </tr>
                     <tr>
                <td style="width: 25%;">
                    <label>Overhang Left (M)</label>
                </td>
                <td style="width: 25%;text-align:center;">
                </td>
                <td style="width: 25%;text-align:center;">
                </td>
                <td style="width: 25%;text-align:center;"> 
                    <asp:TextBox runat="server" ID="txtOLeft" MaxLength="5" Width="190" Enabled="false"></asp:TextBox>&nbsp;M<br />
                    </td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height:10px;">

                </td>
            </tr>
                    <tr>
                <td style="width: 25%;">
                    <label>Overhang front (drawbar) (M)</label>
                </td>
                <td style="width: 25%;text-align:center;">
                </td>
                <td style="width: 25%;text-align:center;">
                </td>
                <td style="width: 25%;text-align:center;"> 
                    <asp:TextBox runat="server" ID="txtFront" MaxLength="5" Width="190" Enabled="false"></asp:TextBox>&nbsp;M<br />
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
                    <asp:Label runat="server" ID="Label32">Vehicle Configuration:</asp:Label>
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
                    <asp:TextBox runat="server" Enabled="false" Width="190" ID="lblAC"></asp:TextBox>
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
                    <asp:Label runat="server" ID="Label29">Vehicle Registration Details:</asp:Label>
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
                    <asp:Label runat="server" ID="Label28">Axle Information:</asp:Label>
                    </legend>
                <table style="width: 100%;">
                <tr>
                    <td colspan="4" style="width: 100%; height:10px;">

                    </td>
                </tr>
                <tr>
                <td style="width: 25%;text-align:center;">
                    <label>Axle No.</label>
                </td>
                <td style="width: 25%;text-align:center;">
                    <label>Axle Spacing (M)</label><br />
                </td>
                <td style="width: 25%;text-align:center;">
                    <label>Required Axle Load (Kg)</label><span class="red"></span><br />
                </td>
                <td style="width: 25%;text-align:center;"> 
                    <label>Actual Axle Load (Kg)</label>
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
                    <label>Total Weight</label><span class="red">*</span>
                </td>
                <td style="width: 25%;">
                    <asp:TextBox runat="server" Enabled="false" Width="190" ID="lblWT"></asp:TextBox>&nbsp;Kg
                </td>
                <td style="width: 25%;text-align:center;">
                </td>
                <td style="width: 25%;text-align:center;"> 
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
                    <asp:Label runat="server" ID="Label33">Load Information:</asp:Label>
                    </legend>
                    
        <table style="width: 100%;">
            <tr>
                    <td colspan="4" style="width: 100%; height:10px;">

                    </td>
                </tr>
                <tr>
                <td style="width: 25%;">
                    <label>Load Type:</label>
                </td>
                <td style="width: 25%;">
                    <asp:TextBox runat="server" Enabled="false" Width="190" ID="lblDCargo"></asp:TextBox>
                </td>
                <td style="width: 25%;"></td>
                <td style="width: 25%;"></td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height: 10px;"></td>
            </tr>
                <tr>
                <td style="width: 25%;">
                    <label>Load Category:</label>
                </td>
                <td style="width: 25%;">
                    <asp:TextBox runat="server" Enabled="false" Width="190" ID="lblLoad"></asp:TextBox>
                </td>
                <td id="tdin" visible="false" runat="server" style="width: 25%;">
                    <asp:Label runat="server" ID="Label7">Upload Document </asp:Label>
                </td>
                <td id="tddin" runat="server" visible="false" style="width: 25%;">
                    <asp:LinkButton runat="server" ID="lnkEIND" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkEIND_Click"></asp:LinkButton>
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
                    <asp:TextBox runat="server" Enabled="false" Width="190" ID="lblCName"></asp:TextBox>
                </td>
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblCReg" Visible="false">Registration No.</asp:Label>
                </td>
                <td style="width: 25%;">
                    <asp:TextBox runat="server" ID="txtCReg" Width="190" MaxLength="50" Visible="false" Enabled="false"></asp:TextBox><br />
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
                    
                    <asp:TextBox runat="server" Enabled="false" Width="190" ID="lblCDetails">
                            </asp:TextBox>
                </td>
                <td style="width: 25%;"></td>
                <td style="width: 25%;"></td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height: 10px;"></td>
            </tr>
            <tr>
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblTP">Phone No. </asp:Label><b>(Ex:XXXXXXXXX)</b>
                    <span class="red">*</span>
                </td>
                <td style="width: 25%;">
                    <asp:TextBox runat="server" ID="txtCD" Width="40" Enabled="false" Visible="false" MaxLength="3" Text="255"></asp:TextBox>
                    <asp:TextBox runat="server" ID="txtTP" Width="190" MaxLength="12" Enabled="false"></asp:TextBox>
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
                    <asp:TextBox runat="server" ID="lblNOP" MaxLength="5" Width="190" Enabled="false"></asp:TextBox>
                </td>
                <td style="width: 25%;"></td>
                <td style="width: 25%;"></td>
            </tr>
            <tr runat="server" id="trgnop" visible="false">
                <td colspan="2" style="width: 100%; height: 10px;"></td>
            </tr>
            <tr runat="server" id="trnov" visible="false">
                <td style="width: 25%;">
                    <asp:Label runat="server" ID="lblNumV">Number of Vehicles</asp:Label>
                    <span class="red">*</span>
                </td>
                <td style="width: 25%;">
                    <asp:TextBox runat="server" ID="lblNOV" MaxLength="5" Width="190" Enabled="false"></asp:TextBox>
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
                    <asp:TextBox runat="server" ID="lblFrom" Width="190" MaxLength="50" Enabled="false"></asp:TextBox>
                </td>
                <td style="width: 33%;">
                    <asp:Label runat="server" ID="lblT">TO</asp:Label><span class="red">*</span><br />
                    <asp:TextBox runat="server" ID="lblTo" Width="190" MaxLength="50" Enabled="false"></asp:TextBox>
                </td>
                <td style="width: 34%;">
                    <asp:Label runat="server" ID="lblV">VIA</asp:Label><span class="red">*</span><br />
                    <asp:TextBox runat="server" ID="lblVia" MaxLength="100" Width="190" Enabled="false"></asp:TextBox>
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
                <fieldset runat="server" id="fsAttach" visible="false">
                                    <legend>
                                        <label>Attachments:</label>
                                     </legend>
                                    <table style="width: 100%;">
                                        <tr>
                                            <td colspan="2" style="width: 100%; height:10px;">

                                            </td>
                                        </tr>
                                        <asp:PlaceHolder runat="server" ID="phHorse"></asp:PlaceHolder>
                                        <tr runat="server" id="trHire" visible="false">
                                            <td style="width: 25%;">
                                                <asp:Label runat="server" ID="lblEHire">Hiring Agreement</asp:Label>
                                            </td>
                                            <td style="width: 75%;">
                                                <asp:LinkButton runat="server" ID="lnkHire" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkHire_Click"></asp:LinkButton>
                                            </td>
                                        </tr>
                                        <tr runat="server" id="trgHire" visible="false">
                                            <td colspan="2" style="width: 100%; height: 10px;"></td>
                                        </tr>
                                        <tr runat="server" id="trDraw" visible="false">
                                            <td style="width: 25%;">
                                                <label>Cargo Images & Drawings</label>
                                            </td>
                                            <td style="width: 75%;">
                                                <asp:LinkButton runat="server" ID="lnkImages" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkImages_Click"></asp:LinkButton>
                                                
                                            </td>
                                        </tr>
                                        <tr runat="server" id="trgDraw" visible="false">
                                            <td colspan="2" style="width: 100%; height: 10px;"></td>
                                        </tr>
                                        <tr runat="server" id="trWeight" visible="false">
                                            <td style="width: 25%;">
                                                <label>Weigh Ticket from TANROADS</label>
                                            </td>
                                            <td style="width: 75%;">
                                                <asp:LinkButton runat="server" ID="lnkTan" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkTan_Click"></asp:LinkButton>
                                            </td>
                                        </tr>
                                        <tr runat="server" id="trgWeight" visible="false">
                                            <td colspan="2" style="width: 100%; height: 10px;"></td>
                                        </tr>
                                        <tr runat="server" id="trPolice" visible="false">
                                            <td style="width: 25%;">
                                                <label>Confirmation Letter from Police</label>
                                            </td>
                                            <td style="width: 75%;">
                                                <asp:LinkButton runat="server" ID="lnkPolice" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkPolice_Click" />
                                            </td>
                                        </tr>
                                        <tr runat="server" id="trgPolice" visible="false">
                                            <td colspan="2" style="width: 100%; height: 10px;"></td>
                                        </tr>
                                        <tr runat="server" id="trTanesco" visible="false">
                                            <td style="width: 25%;">
                                                <label>Confirmation Letter from TANESCO</label>
                                            </td>
                                            <td style="width: 75%;">
                                                <asp:LinkButton runat="server" ID="lnkTanesco" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkTanesco_Click" />
                                            </td>
                                        </tr>
                                        <tr runat="server" id="trgTanesco" visible="false">
                                            <td colspan="2" style="width: 100%; height: 10px;"></td>
                                        </tr>
                                        <tr runat="server" id="trRoute" visible="false">
                                            <td style="width: 25%;">
                                                <label>Route Survey</label>
                                            </td>
                                            <td style="width: 75%;">
                                                <asp:LinkButton runat="server" CausesValidation="false" ID="lnkRoute" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkRoute_Click" />
                                            </td>
                                        </tr>
                                        <tr runat="server" id="trERoute" visible="false">
                                            <td style="width: 25%;">
                                                <label>Upload Route Survey</label>
                                                
                                            </td>
                                            <td style="width: 75%;">
                                                <asp:FileUpload runat="server" ID="fuRoute" ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                            </td>
                                        </tr>
                                        <tr runat="server" id="trgRoute" visible="false">
                                            <td colspan="2" style="width: 100%; height: 10px;"></td>
                                        </tr>
                                        <tr runat="server" id="trAdvg" visible="false">
                                            <td style="width: 25%;">
                                                <label>Advertisement</label>
                                            </td>
                                            <td style="width: 75%;">
                                                <asp:LinkButton runat="server" ID="lnkAdvg" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkAdvg_Click" />
                                            </td>
                                        </tr>
                                        <tr runat="server" id="trgAdvg" visible="false">
                                            <td colspan="2" style="width: 100%; height: 10px;"></td>
                                        </tr>
                                        <tr runat="server" id="trMass" visible="false">
                                            <td style="width: 25%;">
                                                <label>Mass Document</label>
                                            </td>
                                            <td style="width: 75%;">
                                                <asp:LinkButton runat="server" ID="lnkEMass" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkEMass_Click" />
                                            </td>
                                        </tr>
                                        <tr runat="server" id="trgMass" visible="false">
                                            <td colspan="2" style="width: 100%; height: 10px;"></td>
                                        </tr>
                                        </table>
                                    </fieldset>
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
                                <table style="width: 100%;">
                                        <tr>
                                            <td style="width: 100%; height: 10px;"></td>
                                        </tr>
                                    </table>
                                  
                     <table style="width: 100%;">
                         <tr>
                          <td style="width: 100%; height: 20px;"></td>
                             </tr>
                         </table>
                         
                     <fieldset runat="server" id="fsFee" visible="false">
                    <legend>
                        <asp:Label runat="server" ID="lblPS">Permit Fee & Surcharge Details:</asp:Label>
                        </legend>
                    <table style="width: 100%;">
                     <tr>
                        <td style="width: 100%; height: 20px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 100%;">
                            <asp:GridView ID="gvSurcharge" Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                runat="server" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                HeaderStyle-CssClass="HeaderDatagrid" OnRowDataBound="schRowDataBound" PageSize="10" AllowPaging="true">
                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <PagerStyle CssClass="gridViewPager" />
                                <Columns>
                                    <asp:BoundField DataField="Axel_No" HeaderText="Axle" />
                                    <asp:BoundField DataField="Axel_Actual_Weight" HeaderText="Actual Weight KG" />
                                    <asp:BoundField DataField="Axel_Allowed_Weight" HeaderText="Allowed Weight KG" />
                                    <asp:BoundField DataField="Overload_Weight" HeaderText="Over Weight KG" />
                                    <asp:BoundField DataField="Fees" HeaderText="Fees" />
                                    <asp:BoundField DataField="Axel_Surcharge_Amount" HeaderText="Axle Surcharge" />

                                </Columns>
                            </asp:GridView>                                       
                        </td>
                        <td style="width:10%;"></td>
                    </tr>
                    <tr>
                        <td style="width: 100%; height: 20px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 100%;">
                            <asp:GridView ID="gvGVM" Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                runat="server" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                HeaderStyle-CssClass="HeaderDatagrid" OnRowDataBound="gvmRowDataBound" PageSize="10" AllowPaging="true">
                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <PagerStyle CssClass="gridViewPager" />
                                <Columns>
                                    <asp:BoundField DataField="Axel_Configuration" HeaderText="Axle Configuration" />
                                    <asp:BoundField DataField="GVM_Actual_Weight" HeaderText="Actual GVM KG" />
                                    <asp:BoundField DataField="GVM_Allowed_Weight" HeaderText="Allowed GVM KG" />
                                    <asp:BoundField DataField="Overload_GVM_Weight" HeaderText="Over Weight KG" />
                                    <asp:BoundField DataField="Overload_GVM_Fee" HeaderText="Fees" />
                                    <asp:BoundField DataField="GVM_Surcharge_Amount" HeaderText="GVM Surcharge" />
                                </Columns>
                            </asp:GridView>                                       
                        </td>
                        <td style="width:10%;"></td>
                    </tr>
                    
                    <tr>
                        <td style="width: 100%; height: 10px;"></td>
                    </tr>
                    
                    <tr>
                        <td style="width: 100%; height: 20px;"></td>
                    </tr>
                    <tr>
                        <td style="width:100%;">
                            <asp:Label runat="server" ID="lblPermit_Fee">Permit Fee</asp:Label> ( <asp:Label runat="server" ID="lblPermit_Fee1">Permit Fee</asp:Label> + <asp:Label runat="server" ID="lblSurcharge_Fee">Surcharge Fee</asp:Label>: 
                            &nbsp;&nbsp;&nbsp;=> <asp:Label runat="server" ID="lblPermit_Fee2">Permit Fee</asp:Label>: <asp:Label runat="server" ID="lblPFee"></asp:Label>
                            &nbsp;&nbsp;&nbsp;=> <asp:Label runat="server" ID="lblSurcharge_Fee1">Surcharge Fee</asp:Label>: <asp:Label runat="server" ID="lblSF"></asp:Label>
                        </td>
                        <td style="width:10%;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100%; height: 20px;"></td>
                    </tr>
                    <tr>
                        <td style="width:100%;">
                            <asp:Label runat="server" ID="lblTotal_Permit_Fee">Total Permit Fee</asp:Label>: <asp:Label runat="server" ID="lblTF"></asp:Label>
                        </td>
                        <td style="width:10%;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100%; height: 20px;"></td>
                    </tr>
                    </table>
                              </fieldset>
                        <table style="width: 100%;">
                    <tr>
                    <td style="width: 100%; height: 20px;"></td>
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
                                AllowPaging="true" PageSize="10" OnRowDataBound="gvComments_RowDatabound" OnPageIndexChanging="gvComments_PageIndexChanging" ShowHeader="false">
                                <PagerStyle CssClass="gridViewPager" />
                                <Columns>
                                    <asp:TemplateField HeaderText="Commentd On" ItemStyle-VerticalAlign="Top" ItemStyle-Width="60px">
				                        <ItemTemplate>
					                        <asp:Label ID="lblCD" runat="server"></asp:Label><br /><asp:Label ID="lblCBy" runat="server">Commented By</asp:Label>:<br /><asp:Label ID="lblCDate" runat="server">Commented Date</asp:Label>:<br /><asp:Label ID="lblCMT" runat="server">Comment</asp:Label>:<br />
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
                       
                    <tr>
                        <td style="width: 100%; height: 20px;"></td>
                    </tr>
                </table>
                            </fieldset>
                               <table style="width: 100%;">
                         <tr>
                          <td style="width: 100%; height: 20px;"></td>
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
