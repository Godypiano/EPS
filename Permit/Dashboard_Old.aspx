<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard_Old.aspx.cs" MasterPageFile="~/Default.Master" Inherits="PresentationLayer.Permit.Dashboard_Old" %>

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
                            </td>
                        <td style="width: 48%; text-align:right">
                            <asp:LinkButton runat="server" CssClass="navigationbar" Visible="true" ID="lnkEnglish" OnClick="lnkEnglish_Click">English</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton runat="server" Visible="true" CssClass="navigationbar" ID="lnkSwahili" OnClick="lnkSwahili_Click">Swahili</asp:LinkButton>
                            </td>
                        <td style="width: 2%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                  </table>
                        <fieldset>
                        <legend>
                            <asp:Label runat="server" ID="lblDh" CssClass="hd1">Dashboard </asp:Label> - <asp:Label runat="server" ID="lblDv" CssClass="hd1">View All Applications Status Count</asp:Label>
                         </legend>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 100%; height: 20px;"></td>
                    </tr>
                  </table>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 3%;"></td>
                        <td style="width: 94%; text-align: center">
                            <asp:CHART id="chTrans" runat="server" Palette="BrightPastel" BackColor="#D3DFF0" Height="396px" Width="712px" BorderlineDashStyle="Solid" BackGradientStyle="TopBottom" BorderWidth="2" BorderColor="26, 59, 105" IsSoftShadows="False" >
							<legends>
								<asp:Legend TitleFont="Microsoft Sans Serif, 8pt, style=Bold" BackColor="Transparent" IsEquallySpacedItems="True" Font="Trebuchet MS, 8pt, style=Bold" IsTextAutoFit="False" Name="Default"></asp:Legend>
							</legends>
							<borderskin SkinStyle="Emboss"></borderskin>
							<series>
								<asp:Series ChartArea="Area1" XValueType="Double" Name="Series1" ChartType="Pie" Font="Trebuchet MS, 8.25pt, style=Bold" CustomProperties="DoughnutRadius=25, PieDrawingStyle=Concave, CollectedLabel=Other, MinimumRelativePieSize=20" MarkerStyle="Circle" BorderColor="64, 64, 64, 64" Color="180, 65, 140, 240" YValueType="Double">
                                    <EmptyPointStyle IsValueShownAsLabel="false" IsVisibleInLegend="false" /> 
									<points>
										<asp:DataPoint LegendText="In Process" CustomProperties="OriginalPointIndex=1"  />
										<asp:DataPoint LegendText="Permit Received" CustomProperties="OriginalPointIndex=2"  />
										<asp:DataPoint LegendText="Awating Permit" CustomProperties="OriginalPointIndex=3"  />
										<asp:DataPoint LegendText="Awating Payment" CustomProperties="OriginalPointIndex=5"  />
									</points>
								</asp:Series>
							</series>
							<chartareas>
								<asp:ChartArea Name="Area1" BorderColor="64, 64, 64, 64" BackSecondaryColor="Transparent" BackColor="Transparent" ShadowColor="Transparent" BackGradientStyle="TopBottom">
									<axisy2>
										<MajorGrid Enabled="False" />
										<MajorTickMark Enabled="False" />
									</axisy2>
									<axisx2>
										<MajorGrid Enabled="False" />
										<MajorTickMark Enabled="False" />
									</axisx2>
									<area3dstyle PointGapDepth="900" Rotation="162" IsRightAngleAxes="False" WallWidth="25" IsClustered="False" />
									<axisy LineColor="64, 64, 64, 64">
										<LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
										<MajorGrid LineColor="64, 64, 64, 64" Enabled="False" />
										<MajorTickMark Enabled="False" />
									</axisy>
									<axisx LineColor="64, 64, 64, 64">
										<LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
										<MajorGrid LineColor="64, 64, 64, 64" Enabled="False" />
										<MajorTickMark Enabled="False" />
									</axisx>
								</asp:ChartArea>
							</chartareas>
						</asp:CHART>
                        </td>
                        <td style="width: 3%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 40px;"></td>
                    </tr>
                </table>
                <table style="width: 100%;">
                   
                    <tr>
                        <td style="width: 7%;"></td>
                        <td valign="middle" style="width:10%;text-align:center; height:55px; background-color:blue; color:white; font-weight:bold; font-size:40px;">
                            <asp:Label runat="server" ID="lblall"></asp:Label>
                        </td>
                        <td style="width: 9%;"></td>
                        <td valign="middle" style="width:10%;text-align:center; height:55px; background-color:orange; color:white; font-weight:bold; font-size:40px;">
                            <asp:Label runat="server" ID="lblpro"></asp:Label>
                        </td>
                        <td style="width:9%;"></td>
                        <td valign="middle" style="width:10%;text-align:center; height:55px; background-color:brown; color:white; font-weight:bold; font-size:40px;">
                            <asp:Label runat="server" ID="lblapay"></asp:Label>
                        </td>
                        <td style="width:9%;">
                            <asp:Image runat="server" ID="imgNew1" ImageUrl="/Images/new_blink.gif" Visible="false"  />
                        </td>
                        <td valign="middle" style="width:10%;text-align:center; height:55px; background-color:lightblue; color:white; font-weight:bold; font-size:40px;">
                            
                            <asp:Label runat="server" ID="lblap"></asp:Label>
                        </td>
                        <td style="width:9%;">
                            <asp:Image runat="server" ID="imgNew" ImageUrl="/Images/new_blink.gif" Visible="false"  />
                        </td>
                        <td valign="middle" style="width:10%;text-align:center; height:55px; background-color:green; color:white; font-weight:bold; font-size:40px;">
                            <asp:Label runat="server" ID="lblpr"></asp:Label>
                        </td>
                        <td style="width:7%;"></td>
                    </tr>
                    <tr>
                        <td style="width: 7%;"></td>
                        <td valign="middle" style="width:10%;text-align:center;font-weight:bold; font-size:9px;">
                            <asp:Label runat="server" ID="lblTA">Total Applications</asp:Label>
                        </td>
                        <td style="width: 9%;"></td>
                        <td valign="middle" style="width:10%;text-align:center;font-weight:bold; font-size:9px;">
                            <asp:Label runat="server" ID="lblIpro">In Process</asp:Label>
                        </td>
                        <td style="width:9%;"></td>
                        <td valign="middle" style="width:10%;text-align:center;font-weight:bold; font-size:9px;">
                            <asp:Label runat="server" ID="lblAPayment">Awating Payment</asp:Label>
                        </td>
                        <td style="width:9%;"></td>
                        <td valign="middle" style="width:10%;text-align:center;font-weight:bold; font-size:9px;">
                            <asp:Label runat="server" ID="lblAPer">Awating Permit</asp:Label>
                        </td>
                        
                        <td style="width:9%;"></td>
                        <td valign="middle" style="width:10%;text-align:center;font-weight:bold; font-size:9px;">
                            <asp:Label runat="server" ID="lblPRec">Permit Received</asp:Label>
                        </td>
                        <td style="width:7%;"></td>
                    </tr>
                    <tr>
                        <td colspan="10" style="width: 100%; height: 40px;"></td>
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
