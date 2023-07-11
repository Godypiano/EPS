<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewPreviousComment_olds.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.ViewPreviousComments_old" %>

<%@ MasterType VirtualPath="~/Default_custom.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upRegister" runat="server">
            <ContentTemplate>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            <a class="navigationbar" href="Dashboard.aspx">Home</a>
                            &nbsp; &gt;&gt; &nbsp;<a class="navigationbar" href="Outbox.aspx">Outbox</a>
                            <asp:Label runat="server" ID="lblview"></asp:Label>
                            </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 10px;"></td>
                    </tr>
                  </table>
                        
                    <table style="width: 100%;">
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            <asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label>
                            <label class="hd1">View Application Details</label>
                            </td>
                        <td style="width: 3%;"></td>
                     </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                    </tr>
                  </table>
                <table style="width: 100%;">
                    <tr>
                        <td height="15px" style="background-color: #889cb1;color: #fff;">
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" class="frmhdrs" style="background-color: #889cb1; text-align:center; color: #fff;">
                        <b>Application Details</b>
                        </td>
                    </tr>
                    <tr>
                        <td height="15px" style="background-color: #889cb1;color: #fff;">
                        </td>
                    </tr>
               </table>
                <table style="width: 100%;">
                    <tr>
                        <td colspan="4" style="width: 100%; height: 20px;"></td>
                    </tr>
                     <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 30%;">
                            <label>Application Number</label>
                        </td>
                        <td style="width: 50%;">
                            <asp:Label runat="server" ID="lblAppNo"></asp:Label>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                     <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 30%;">

                            <asp:Label runat="server" ID="lblCargo">Type of Vehicle(Truck)</asp:Label>
                        </td>
                        <td style="width: 50%;">
                            <asp:Label runat="server" ID="lblCtype" Visible="false"></asp:Label>
                            <asp:Label runat="server" ID="lblVN"></asp:Label>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr runat="server" id="tr2">
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 30%;">

                            <asp:Label runat="server" ID="Label1">Cargo Name</asp:Label>
                        </td>
                        <td style="width: 50%;">
                            <asp:Label runat="server" ID="lblCName">
                            </asp:Label>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 30%;">
                            <label>Cargo Details</label>
                        </td>
                        <td style="width: 50%;">
                            <asp:Label runat="server" ID="lblCDetails">
                            </asp:Label>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <asp:PlaceHolder runat="server" ID="phAxel">
                    </asp:PlaceHolder>
                    <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 30%;">
                            <label>Axle Configuration</label>
                        </td>
                        <td style="width: 50%;">
                            <asp:Label runat="server" ID="lblAC"></asp:Label>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 30%;">
                            <label>Weight of Axles</label>
                        </td>
                        <td style="width: 50%;">
                            <asp:PlaceHolder runat="server" ID="phPermit">
                            </asp:PlaceHolder>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 30%;">
                            <label>Total Weight</label>
                        </td>
                        <td style="width: 50%;">
                            <asp:Label runat="server" ID="lblWT"></asp:Label>&nbsp;Kg
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                      <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 30%;">
                            <label>Journey Date</label>
                        </td>
                        <td style="width: 50%;">
                            <asp:Label runat="server" ID="lblJDate"></asp:Label>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 30%;">
                            <label>Route:From</label>
                        </td>
                        <td style="width: 50%;">
                            <asp:Label runat="server" ID="lblFrom">
                            </asp:Label>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 30%;">
                            <label>Route:To</label>
                        </td>
                        <td style="width: 50%;">
                            <asp:Label runat="server" ID="lblTo">
                            </asp:Label>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 30%;">
                            <label>Route:Via</label>
                        </td>
                        <td style="width: 50%;">
                            <asp:Label runat="server" ID="lblVia">
                            </asp:Label>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 30%;">
                            <label>Dimension:Length (Ex:11.85)</label>
                        </td>
                        <td style="width: 50%;">
                            <asp:Label runat="server" ID="lblLength"></asp:Label>&nbsp;M
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 30%;">
                            <label>Dimension:Height (Ex:4.55)</label>
                        </td>
                        <td style="width: 50%;">
                            <asp:Label runat="server" ID="lblHeight"></asp:Label>&nbsp;M
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10%;"></td>
                        <td style="width: 30%;">
                            <label>Dimension:Width (Ex:2.85)</label>
                        </td>
                        <td style="width: 50%;">
                            <asp:Label runat="server" ID="lblWidth"></asp:Label>&nbsp;M
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                     <tr runat="server" id="tr1" visible="true">
                        <td style="width: 10%;"></td>
                        <td style="width: 30%;">
                            <label>Cargo Images & Drawings</label>
                        </td>
                        <td style="width: 50%;">
                            <asp:LinkButton runat="server" CausesValidation="false" ID="lnkImages" OnClick="lnkImages_Click"></asp:LinkButton>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr runat="server" id="trWeight" visible="false">
                        <td style="width: 10%;"></td>
                        <td style="width: 30%;">
                            <label>Weigh Ticket from TANROADS</label>
                        </td>
                        <td style="width: 50%;">
                            <asp:LinkButton runat="server" CausesValidation="false" ID="lnkTan" OnClick="lnkTan_Click"></asp:LinkButton>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr runat="server" id="trgWeight" visible="false">
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr runat="server" id="trPolice" visible="false">
                        <td style="width: 10%;"></td>
                        <td style="width: 30%;">
                            <label>Confirmation Letter from Police</label>
                        </td>
                        <td style="width: 50%;">
                            <asp:LinkButton runat="server" CausesValidation="false" ID="lnkPolice" OnClick="lnkPolice_Click" />
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr runat="server" id="trgPolice" visible="false">
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr runat="server" id="trnop" visible="false">
                    <td style="width: 10%;"></td>
                    <td style="width: 30%;">
                        <label>Number of Police</label>
                    </td>
                    <td style="width: 50%;">
                        <asp:Label runat="server" ID="lblNOP" MaxLength="5"></asp:Label>
                    </td>
                    <td style="width: 10%;"></td>
                    </tr>
                    <tr runat="server" id="trgnop" visible="false">
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr runat="server" id="trnov" visible="false">
                        <td style="width: 10%;"></td>
                        <td style="width: 30%;">
                            <label>Number of Vehicles</label>
                        </td>
                        <td style="width: 50%;">
                            <asp:Label runat="server" ID="lblNOV" MaxLength="5"></asp:Label>
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr runat="server" id="trgnov" visible="false">
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr runat="server" id="trTanesco" visible="false">
                        <td style="width: 10%;"></td>
                        <td style="width: 30%;">
                            <label> Confirmation Letter from TANESCO</label>
                        </td>
                        <td style="width: 50%;">
                            <asp:LinkButton runat="server" CausesValidation="false" ID="lnkTanesco" OnClick="lnkTanesco_Click" />
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr runat="server" id="trgTanesco" visible="false">
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr runat="server" id="trRoute" visible="false">
                        <td style="width: 10%;"></td>
                        <td style="width: 30%;">
                            <label>Route Survey</label>
                        </td>
                        <td style="width: 50%;">
                            <asp:LinkButton runat="server" CausesValidation="false" ID="lnkRoute" OnClick="lnkRoute_Click" />
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr runat="server" id="trgRoute" visible="false">
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr runat="server" id="trAdvg" visible="false">
                        <td style="width: 10%;"></td>
                        <td style="width: 30%;">
                            <label>Advertisement</label>
                        </td>
                        <td style="width: 50%;">
                            <asp:LinkButton runat="server" CausesValidation="false" ID="lnkAdvg" OnClick="lnkAdvg_Click" />
                        </td>
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr runat="server" id="trgAdvg" visible="false">
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                     <asp:PlaceHolder runat="server" Visible="false" ID="phEscort">
                    </asp:PlaceHolder>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 20px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10%;"></td>
                        <td colspan="2" style="width: 80%;">
                            Permit Surcharge & Fees Details
                        </td>
                        <td style="width: 10%;" ></td>
                    </tr>
                     <tr>
                        <td colspan="4" style="width: 100%; height: 20px;"></td>
                    </tr>
                    <tr>
                        <td style="width:10%;"></td>
                        <td colspan="2" style="width: 80%;">
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
                        <td colspan="4" style="width: 100%; height: 20px;"></td>
                    </tr>
                    <tr>
                        <td style="width:10%;"></td>
                        <td colspan="2" style="width: 80%;">
                            <asp:GridView ID="gvGVM" Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                runat="server" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                HeaderStyle-CssClass="HeaderDatagrid" OnRowDataBound="gvmRowDataBound" PageSize="10" AllowPaging="true">
                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <PagerStyle CssClass="gridViewPager" />
                                <Columns>
                                    <asp:BoundField DataField="Axel_Configuration" HeaderText="Axle Configuration" />
                                    <asp:BoundField DataField="GVM_Actual_Weight" HeaderText="Actual GVM" />
                                    <asp:BoundField DataField="GVM_Allowed_Weight" HeaderText="Allowed GVM" />
                                    <asp:BoundField DataField="Overload_GVM_Weight" HeaderText="Over Weight" />
                                    <asp:BoundField DataField="Overload_GVM_Fee" HeaderText="Fees" />
                                    <asp:BoundField DataField="GVM_Surcharge_Amount" HeaderText="GVM Surcharge" />
                                </Columns>
                            </asp:GridView>                                       
                        </td>
                        <td style="width:10%;"></td>
                    </tr>
                    
                    <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    
                    <tr>
                        <td colspan="4" style="width: 100%; height: 20px;"></td>
                    </tr>
                    <tr>
                        <td style="width:10%;">
                        </td>
                        <td colspan="2" style="width:80%;">
                            Permit Fee (Permit Fee + Surcharge Fee: 
                            &nbsp;&nbsp;&nbsp;=> Permit Fee: <asp:Label runat="server" ID="lblPFee"></asp:Label>
                            &nbsp;&nbsp;&nbsp;=> Surcharge Fee: <asp:Label runat="server" ID="lblSF"></asp:Label>
                        </td>
                        <td style="width:10%;">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 20px;"></td>
                    </tr>
                    <tr>
                        <td style="width:10%;">
                        </td>
                        <td colspan="2" style="width:90%;">
                            Total Permit Fee: <asp:Label runat="server" ID="lblTF"></asp:Label>
                        </td>
                        <td style="width:10%;">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 20px;"></td>
                    </tr>
                    <tr runat="server" id="trgrid" visible="true">
                        <td style="width: 10%;"></td>
                        <td colspan="2" style="width: 30%;">
                            <label>Comments</label><br />
                            <asp:GridView ID="gvComments" Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                runat="server" AutoGenerateColumns="false" Width="100%"  GridLines="None"
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
                        <td style="width: 10%;"></td>
                    </tr>
                    <tr runat="server" id="trgv" visible="false">
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 20px;"></td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
