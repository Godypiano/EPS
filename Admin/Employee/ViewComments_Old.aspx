<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="ViewComments_Old.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.ViewComments_Old" %>

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
        <table style="width: 100%;">
                    <tr>
                    <td style="width: 2%;"></td>
                    <td style="width: 96%;">
                    <table style="width: 100%;">
                    <tr>
                        <td style="width: 2%;"></td>
                        <td style="width: 96%;">
                            <a class="navigationbar" href="Dashboard.aspx">Home</a>
                            &nbsp; &gt;&gt; &nbsp;<a class="navigationbar" href="Inbox.aspx">Inbox</a>
                            <asp:Label runat="server" ID="lblview"></asp:Label>
                            
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
                                <asp:Label runat="server" ID="lbltpd"></asp:Label>
                                <asp:Label runat="server" ID="lblter"></asp:Label>
                                 <asp:LinkButton runat="server" ID="lnkTRA" CssClass="navigationbar" CausesValidation="false" OnClick="lnkTRA_Click"></asp:LinkButton>    
                             </td>
                             <td style="width: 2%;"></td>
                         </tr>
                         <tr>
                            <td colspan="2" style="width: 100%; height: 10px;"></td>
                        </tr>
                         </table> 
                    <fieldset>
                        <legend>
                            <asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label>
                            <label class="hd1">View Application Details & Comments: <asp:Label runat="server" ID="lblapp"></asp:Label></label>
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
                            <td style="width: 2%;"></td>
                            <td style="width: 48%;">
                                <fieldset>
                                <legend>
                                    <label>Vehicle & Cargo Details:</label>
                                 </legend>
                            
                    <table style="width: 100%;">
                    <tr>
                        <td colspan="2" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 40%;">

                            <asp:Label runat="server" ID="lblCargo">Type of Vehicle(Truck)</asp:Label>
                        </td>
                        <td style="width: 60%;">
                            <asp:Label runat="server" ID="lblCtype" Visible="false"></asp:Label>
                            <asp:TextBox runat="server" Enabled="false" Width="190" ID="lblVN"></asp:TextBox>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr runat="server" id="tr2">
                        <td colspan="2" style="width: 100%; height: 10px;"></td>
                    </tr>
                    </table>
                    <table style="width: 100%;">    
                    <tr>
                        <td style="width: 40%;">

                            <asp:Label runat="server" ID="Label1">Cargo Name</asp:Label>
                        </td>
                        <td style="width: 60%;">
                            <asp:TextBox runat="server" Enabled="false" Width="190" ID="lblCName">
                            </asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 40%;">
                            <label>Cargo Details</label>
                        </td>
                        <td style="width: 50%;">
                            <asp:TextBox runat="server" Enabled="false" Width="190" ID="lblCDetails">
                            </asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 100%; height: 10px;"></td>
                    </tr>
                        <tr>
                        <td style="width: 40%;">
                            <asp:Label runat="server" ID="lblTP">Phone No. </asp:Label><b>(Ex:XXXXXXXXX)</b>
                    
                        </td>
                        <td style="width: 60%;">
                            <asp:TextBox runat="server" ID="txtTP" Width="190" Enabled="false" MaxLength="15"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <asp:PlaceHolder runat="server" ID="phAxel">
                    </asp:PlaceHolder>
                    <tr>
                        <td style="width: 40%;">
                            <label>Axle Configuration</label>
                        </td>
                        <td style="width: 60%;">
                            <asp:TextBox runat="server" Enabled="false" Width="190" ID="lblAC"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 40%;">
                            <label>Weight of Axles</label>
                        </td>
                        <td style="width: 60%;">
                            <asp:PlaceHolder runat="server" ID="phPermit">
                            </asp:PlaceHolder>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 40%;">
                            <label>Total Weight</label>
                        </td>
                        <td style="width: 60%;">
                            <asp:TextBox runat="server" Enabled="false" Width="190" ID="lblWT"></asp:TextBox>&nbsp;Kg
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 100%; height: 10px;"></td>
                    </tr>
                                <tr>
                        <td style="width: 40%;">
                            <label>Application Date and Time</label>
                        </td>
                        <td style="width: 650%;">
                            <asp:TextBox runat="server" Enabled="false" Width="190" ID="lblADate"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 100%; height: 10px;"></td>
                    </tr>
                        <tr>
                        <td style="width: 40%;">
                            <label>Journey Date</label>
                        </td>
                        <td style="width: 60%;">
                            <asp:TextBox runat="server" Enabled="false" Width="190" ID="lblJDate"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 40%;">
                            <label>Dimension:Height (Ex:4.55)</label>
                        </td>
                        <td style="width: 60%;">
                            <asp:TextBox runat="server" Enabled="false" Width="190" ID="lblHeight"></asp:TextBox>&nbsp;M
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 40%;">
                            <label>Dimension:Width (Ex:2.85)</label>
                        </td>
                        <td style="width: 60%;">
                            <asp:TextBox runat="server" Enabled="false" Width="190" ID="lblWidth"></asp:TextBox>&nbsp;M
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 40%;">
                            <label>Dimension:Length (Ex:11.85)</label>
                        </td>
                        <td style="width: 60%;">
                            <asp:TextBox runat="server" Enabled="false" Width="190" ID="lblLength"></asp:TextBox>&nbsp;M
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr runat="server" id="trnop" visible="false">
                    <td style="width: 40%;">
                        <label>Number of Police</label>
                    </td>
                    <td style="width: 60%;">
                        <asp:TextBox runat="server" ID="lblNOP" Enabled="false" Width="190" MaxLength="5"></asp:TextBox>
                    </td>
                    </tr>
                    <tr runat="server" id="trgnop" visible="false">
                        <td colspan="2" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr runat="server" id="trnov" visible="false">
                        <td style="width: 40%;">
                            <label>Number of Vehicles</label>
                        </td>
                        <td style="width: 60%;">
                            <asp:TextBox runat="server" ID="lblNOV" Enabled="false" Width="190" MaxLength="5"></asp:TextBox>
                        </td>
                    </tr>
                    <tr runat="server" id="trgnov" visible="false">
                        <td colspan="2" style="width: 100%; height: 10px;"></td>
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
                    <fieldset runat="server" id="fsTRA" visible="false">
                        <legend>
                            <label>Vehicle Registration Status:</label>
                            </legend>
                    <table style="width: 100%;">
                    <tr>
                        <td colspan="3" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>

                        <td style="width: 90%;">
                            <asp:GridView ID="gvRegStatus" Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                runat="server" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                HeaderStyle-CssClass="HeaderDatagrid" OnPageIndexChanging="gvRegStatus_PageIndexChanging" PageSize="10" AllowPaging="true">
                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <PagerStyle CssClass="gridViewPager" />
                                <Columns>
                                    <asp:BoundField DataField="Reg_No" HeaderText="Vehicle Registration Number" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                </Columns>
                            </asp:GridView>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 10px;"></td>
                    </tr>
                    </table>
                    </fieldset>
                                    </td>
                            <td style="width: 2%;"></td>
                            <td style="width: 48%;">
                         
                    
                                <fieldset>
                                <legend>
                                    <label>Route:</label>
                                 </legend>
                                    <table style="width: 100%;">
                                        <tr>
                                            <td colspan="3" style="width: 100%; height:10px;">

                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 33%;">
                                                From<br />
                                                <asp:TextBox runat="server" Enabled="false" Width="110" ID="lblFrom">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 33%;">
                                                To<br />
                                                <asp:TextBox runat="server" Enabled="false" Width="110" ID="lblTo">
                                                </asp:TextBox>
                                            </td>
                                            <td style="width: 34%;">
                                                Via<br />
                                                <asp:TextBox runat="server" Enabled="false" Width="110" ID="lblVia">
                                                </asp:TextBox>
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
                                        <label>Escort Vehicle:</label>
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
                                            <td style="width: 40%;">
                                                <asp:Label runat="server" ID="lblEHire">Hiring Agreement</asp:Label>
                                            </td>
                                            <td style="width: 60%;">
                                                <asp:LinkButton runat="server" ID="lnkHire" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkHire_Click"></asp:LinkButton>
                                            </td>
                                        </tr>
                                        <tr runat="server" id="trgHire" visible="false">
                                            <td colspan="2" style="width: 100%; height: 10px;"></td>
                                        </tr>
                                        <tr runat="server" id="trDraw" visible="false">
                                            <td style="width: 40%;">
                                                <label>Cargo Images & Drawings</label>
                                            </td>
                                            <td style="width: 60%;">
                                                <asp:LinkButton runat="server" ID="lnkImages" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkImages_Click"></asp:LinkButton>
                                                
                                            </td>
                                        </tr>
                                        <tr runat="server" id="trgDraw" visible="false">
                                            <td colspan="2" style="width: 100%; height: 10px;"></td>
                                        </tr>
                                        <tr runat="server" id="trWeight" visible="false">
                                            <td style="width: 40%;">
                                                <label>Weigh Ticket from TANROADS</label>
                                            </td>
                                            <td style="width: 60%;">
                                                <asp:LinkButton runat="server" ID="lnkTan" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkTan_Click"></asp:LinkButton>
                                            </td>
                                        </tr>
                                        <tr runat="server" id="trgWeight" visible="false">
                                            <td colspan="2" style="width: 100%; height: 10px;"></td>
                                        </tr>
                                        <tr runat="server" id="trPolice" visible="false">
                                            <td style="width: 40%;">
                                                <label>Confirmation Letter from Police</label>
                                            </td>
                                            <td style="width: 60%;">
                                                <asp:LinkButton runat="server" ID="lnkPolice" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkPolice_Click" />
                                            </td>
                                        </tr>
                                        <tr runat="server" id="trgPolice" visible="false">
                                            <td colspan="2" style="width: 100%; height: 10px;"></td>
                                        </tr>
                                        <tr runat="server" id="trTanesco" visible="false">
                                            <td style="width: 40%;">
                                                <label>Confirmation Letter from TANESCO</label>
                                            </td>
                                            <td style="width: 60%;">
                                                <asp:LinkButton runat="server" ID="lnkTanesco" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkTanesco_Click" />
                                            </td>
                                        </tr>
                                        <tr runat="server" id="trgTanesco" visible="false">
                                            <td colspan="2" style="width: 100%; height: 10px;"></td>
                                        </tr>
                                        <tr runat="server" id="trRoute" visible="false">
                                            <td style="width: 40%;">
                                                <label>Route Survey</label>
                                            </td>
                                            <td style="width: 60%;">
                                                <asp:LinkButton runat="server" CausesValidation="false" ID="lnkRoute" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkRoute_Click" />
                                            </td>
                                        </tr>
                                        <tr runat="server" id="trERoute" visible="false">
                                            <td style="width: 40%;">
                                                <label>Upload Route Survey</label>
                                                
                                            </td>
                                            <td style="width: 60%;">
                                                <asp:FileUpload runat="server" ID="fuRoute" ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                                <asp:RegularExpressionValidator runat="server" ID="revRoute" CssClass="red"  
                                                 ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                 ControlToValidate="fuRoute" Display="Dynamic" 
                                                 ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt"> 
                                                </asp:RegularExpressionValidator>
                                                <asp:CustomValidator ID="cvRoute" runat="server" ControlToValidate="fuRoute"
                                                    ErrorMessage="File size should not be greater than 20 MB." Display="Dynamic" 
                                                    OnServerValidate="cvRoute_ServerValidate"></asp:CustomValidator>
                                            </td>
                                        </tr>
                                        <tr runat="server" id="trgRoute" visible="false">
                                            <td colspan="2" style="width: 100%; height: 10px;"></td>
                                        </tr>
                                        <tr runat="server" id="trAdvg" visible="false">
                                            <td style="width: 40%;">
                                                <label>Advertisement</label>
                                            </td>
                                            <td style="width: 60%;">
                                                <asp:LinkButton runat="server" ID="lnkAdvg" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkAdvg_Click" />
                                            </td>
                                        </tr>
                                        <tr runat="server" id="trgAdvg" visible="false">
                                            <td colspan="2" style="width: 100%; height: 10px;"></td>
                                        </tr>
                                        </table>
                                    </fieldset>
                                    
                                <table style="width: 100%;">
                                        <tr>
                                            <td style="width: 100%; height: 10px;"></td>
                                        </tr>
                                    </table>
                                    <fieldset>
                                    <legend>
                                        <label>Travel Schedule:</label>
                                     </legend>
                                    <table style="width: 100%;">
                                        <tr>
                                            <td style="width: 100%; height: 10px;"></td>
                                        </tr>
                                        <tr runat="server" id="trsch" visible="false">
                                            <td style="width:100%;">
                                                <asp:LinkButton runat="server" ID="lnkAddSch" CausesValidation="false" OnClick="lnkAddSch_Click">Add/View/Edit Travel Schedule</asp:LinkButton>
                                            </td>
                                        </tr>
                                        <tr runat="server" id="trschemp" visible="false">
                                            <td style="width:100%;">
                                                <asp:LinkButton runat="server" ID="lnkEmpSch" CausesValidation="false" OnClick="lnkEmpSch_Click">Add/View/Edit Travel Schedule</asp:LinkButton>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100%; height: 10px;"></td>
                                        </tr>
                                        </table>
                                        </fieldset>
                            </td>
                            
                        </tr>
                        <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                     </table>
                    
                     <table style="width: 100%;">
                         <tr>
                          <td style="width: 100%; height: 20px;"></td>
                             </tr>
                         </table>
                         
                     <fieldset>
                    <legend>
                        <label>Permit Fee & Surcharge Details:</label>
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
                    </tr>
                    
                    <tr>
                        <td style="width: 100%; height: 10px;"></td>
                    </tr>
                    
                    <tr>
                        <td style="width: 100%; height: 20px;"></td>
                    </tr>
                    <tr>
                        <td style="width:100%;">
                            Permit Fee (Permit Fee + Surcharge Fee: 
                            &nbsp;&nbsp;&nbsp;=> Permit Fee: <asp:Label runat="server" ID="lblPFee"></asp:Label>
                            &nbsp;&nbsp;&nbsp;=> Surcharge Fee: <asp:Label runat="server" ID="lblSF"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100%; height: 20px;"></td>
                    </tr>
                    <tr>
                        <td style="width:100%;">
                            Total Permit Fee: <asp:Label runat="server" ID="lblTF"></asp:Label>
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
                    <label>Comments:</label>
                    </legend>
                    <table style="width: 100%;">
                    <tr runat="server" id="trgrid" visible="true">
                        <td style="width: 100%;">
                            <asp:GridView ID="gvComments" Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                runat="server" AutoGenerateColumns="false" Width="100%" EmptyDataText="No comments exists"  GridLines="None"
                                AllowPaging="true" PageSize="10" OnPageIndexChanging="gvComments_PageIndexChanging" ShowHeader="false">
                                <PagerStyle CssClass="gridViewPager" />
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
                    <tr runat="server" id="trgv" visible="true">
                        <td style="width: 100%; height: 10px;"></td>
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
                                <asp:Label runat="server" ID="lblTrans"></asp:Label>
                                </legend>
                                    <table style="width: 100%;">
                                        <tr>
                                                <td style="width: 100%; height:10px;">
                                                </td>
                                            </tr>
                                        <tr runat="server" id="trTrans" visible="false">
                                            <td style="width: 100%;">
                                                <!--<label>Upload Dcoument to Transporter</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-->
                                                <asp:FileUpload runat="server" ID="fuTrans" Width="300" ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" /><br />
                                                <asp:RegularExpressionValidator runat="server" ID="revTrans" CssClass="red" 
                                                        ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                                        ControlToValidate="fuTrans" Display="Dynamic" 
                                                        ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" > 
                                                </asp:RegularExpressionValidator>
                                                <asp:CustomValidator ID="cvTrans" runat="server" ControlToValidate="fuTrans" CssClass="red"
                                                    ErrorMessage="File size should not be greater than 20 MB." Display="Dynamic" 
                                                    OnServerValidate="cvTrans_ServerValidate"></asp:CustomValidator>
                                            </td> 
                                        </tr>
                                        <tr runat="server" id="truTrans" visible="false">
                                            <td style="width: 100%;">
                                                <!--<label>Uploaded Document to Transporter</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-->
                                                <asp:LinkButton runat="server" ID="lnkTrans" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkTrans_Click"></asp:LinkButton>
                                            </td>
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
                    <tr runat="server" id="tralc" visible="true">
                        <td style="width: 100%; vertical-align:top">
                            <label>Add Comments</label>&nbsp;<span class="red">*</span><br />
                            <asp:TextBox runat="server" TextMode="MultiLine" Rows="5" Width="750px" Columns="30" ID="txtComments"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="rfvComments" CssClass="red" ControlToValidate="txtComments" Display="Dynamic" ErrorMessage="Please enter comments"></asp:RequiredFieldValidator>
                            
                        </td>
                    </tr>
                    <tr runat="server" id="trgalc" visible="true">
                        <td style="width: 100%; height: 30px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 100%; text-align: right;">
                            <asp:Button ID="btnFALE" runat="server" Visible="false" OnClientClick="return Function1('Are you sure want to Forward to ALE?') && Function2();" Text="Forward to ALE" OnClick="btnSubmit_Click" />&nbsp;&nbsp; &nbsp;&nbsp;

                            <asp:Button ID="btnFADS" runat="server" Visible="false" Text="Forward to ADS" OnClick="btnFADS_Click" OnClientClick="return Function1('Are you sure want to Forward to ADS?') && Function2();" />&nbsp;&nbsp;
                            <asp:Button ID="btnFSE" runat="server" Visible="false" Text="Forward to Senior Engineer" OnClick="btnFSE_Click" OnClientClick="return Function1('Are you sure want to Forward to Senior Engineer?') && Function2();" />&nbsp;&nbsp;
                            <asp:Button runat="server" ID="btnRALC" Visible="false" Text="Return to ALC" OnClick="btnRALC_Click" OnClientClick="return Function1('Are you sure want to Return to ALC?') && Function2();" />&nbsp;&nbsp; &nbsp;&nbsp;

                            <asp:Button ID="btnFDSE" runat="server" Visible="false" Text="Forward to DSE" OnClick="btnFDSE_Click" OnClientClick="return Function1('Are you sure want to Forward to DSE?') && Function2();" />&nbsp;&nbsp;
                            <asp:Button runat="server" ID="btnRALE" Visible="false" Text="Return to ALE" OnClick="btnRALE_Click" OnClientClick="return Function1('Are you sure want to Return to ALE?') && Function2();"  />&nbsp;&nbsp; &nbsp;&nbsp;

                            <asp:Button ID="btnApprove" runat="server" Visible="false" Text="Aprove for Payment" OnClick="btnApprove_Click" OnClientClick="return Function1('Are you sure want to Aprove for Payment?') && Function2();" />&nbsp;&nbsp;
                            <asp:Button ID="btnVReceipt" runat="server" Visible="false" CausesValidation="false" Text="View Receipt" OnClick="btnVReceipt_Click" OnClientClick="return Function1('Are you sure want to View Receipt?') && Function2();" />&nbsp;&nbsp;
                            <asp:Button ID="btnVPermit" runat="server" Visible="false" CausesValidation="false" Text="View Permit" OnClick="btnVPermit_Click" OnClientClick="return Function1('Are you sure want to View Permit?') && Function2();" />&nbsp;&nbsp;
                            <asp:Button ID="btnAPermit" runat="server" Visible="false" CausesValidation="false" Text="Aprove Permit" OnClick="btnAPermit_Click" OnClientClick="return Function1('Are you sure want to Aprove Permit?') && Function2();" />&nbsp;&nbsp;
                            <asp:Button runat="server" ID="btnFDPS" Visible="false" Text="Forward to DPS" OnClick="btnFDPS_Click" OnClientClick="return Function1('Are you sure want to Forward to DPS?') && Function2();"  />&nbsp;&nbsp;
                            <asp:Button runat="server" ID="btnFPS" Visible="false" Text="Foward to PS" OnClick="btnFPS_Click" OnClientClick="return Function1('Are you sure want to Foward to PS?') && Function2();"  />&nbsp;&nbsp;
                            <asp:Button runat="server" ID="btnRADS" Visible="false" Text="Return to ADS" OnClick="btnRADS_Click" OnClientClick="return Function1('Are you sure want to Return to ADS?') && Function2();"  />&nbsp;&nbsp;
                            <asp:Button runat="server" ID="btnRSE" Visible="false" Text="Return to Senior Engineer" OnClick="btnRSE_Click" OnClientClick="return Function1('Are you sure want to Return to Senior Engineer?') && Function2();"  />&nbsp;&nbsp;
                            <asp:Button runat="server" ID="btnDSERT" Visible="false" Text="Return to Transporter" OnClick="btnDSERT_Click" OnClientClick="return Function1('Are you sure want to Return to Transporter?') && Function2();"  />&nbsp;&nbsp;

                            <asp:Button ID="btnDPSFPS" runat="server" Visible="false" Text="Foward to PS" OnClick="btnDPSFPS_Click" OnClientClick="return Function1('Are you sure want to Foward to PS?') && Function2();" />&nbsp;&nbsp;
                            <asp:Button runat="server" ID="btnRDSE" Visible="false" Text="Return to DSE" OnClick="btnRDSE_Click" OnClientClick="return confirm('Are you sure want to Return to DSE?') && Function2();"  />&nbsp;&nbsp;
                            
                            <asp:Button ID="btFDM" runat="server" Visible="false" Text="Forward to Deputy Minister" OnClick="btFDM_Click" OnClientClick="return confirm('Are you sure want to Forward to Deputy Minister?') && Function2();" />&nbsp;&nbsp;
                            <asp:Button runat="server" ID="btnFM" Visible="false" Text="Forward to Minister" OnClick="btnFM_Click" OnClientClick="return Function1('Are you sure want to Forward to Minister?') && Function2();"  />&nbsp;&nbsp;
                            <asp:Button runat="server" ID="btnDRDSE" Visible="false" Text="Return to DSE" OnClick="btnDRDSE_Click" OnClientClick="return Function1('Are you sure want to Return to DSE?') && Function2();"  />&nbsp;&nbsp;

                            <asp:Button ID="btnDFM" runat="server" Visible="false" Text="Forward to Minister" OnClick="btnDFM_Click" OnClientClick="return Function1('Are you sure want to Forward to Minister?') && Function2();" />&nbsp;&nbsp;
                            <asp:Button runat="server" ID="btnRPS" Visible="false" Text="Return to PS" OnClick="btnRPS_Click" OnClientClick="return Function1('Are you sure want to Return to PS?') && Function2();"  />&nbsp;&nbsp;

                            <asp:Button runat="server" ID="btnMRPS" Visible="false" Text="Return to PS" OnClick="btnMRPS_Click" OnClientClick="return Function1('Are you sure want to Return to PS?') && Function2();"  />&nbsp;&nbsp;
                            <asp:Button runat="server" ID="btnRDM" Visible="false" Text="Return to Deputy Minister" OnClick="btnRDM_Click" OnClientClick="return Function1('Are you sure want to Return to Deputy Minister?') && Function2();"   />&nbsp;&nbsp;

                        </td>
                    </tr>
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
    </div>
</asp:Content>
