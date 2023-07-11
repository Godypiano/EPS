<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Permit.aspx.cs" MasterPageFile="~/Default.Master" Inherits="PresentationLayer.Permit.Permit" %>

<%@ MasterType VirtualPath="~/Default.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upRegister" runat="server">
            <ContentTemplate>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            <a class="navigationbar" href="Dashboard.aspx">Home</a>
                            </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            <label class="hd1">Permit - View Permit</label>
                            </td>
                        <td style="width: 5%;"></td>
                     </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                    </tr>
                  </table>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%; text-align: right">
                            <asp:Label runat="server" ID="lblsn"></asp:Label>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%; text-align: right">
                            <asp:PlaceHolder ID="phBarCode" runat="server" />
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%; text-align:center;font-size:18px;">
                            THE UNITED REPUBLIC OF TANZANIA
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%; text-align:center;font-size:18px;">
                            <b>MINISTRY OF WORKS</b>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%; text-align:center">
                            <img height="40px" width="40px" src="/Images/coarm.JPG" />
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 30px;"></td>
                    </tr>
                </table>
               <table style="width: 100%;">
                   <tr>
                       <td style="width: 5%;"></td>
                       <td style="width: 75%;">
                           Telegrams: MOW Dar es Salaam
                       </td>
                       <td style="width: 15%;">
                           P.O. Box 9423
                       </td>
                       <td style="width: 5%;"></td>
                   </tr>
                   <tr>
                        <td colspan="4" style="width: 100%; height: 5px;"></td>
                    </tr>
                   <tr>
                       <td style="width: 5%;"></td>
                       <td style="width: 75%;">
                           Telephone: 2111553-8
                       </td>
                       <td style="width: 15%;">
                           Dar es Salaam
                       </td>
                       <td style="width: 5%;"></td>
                   </tr>
                   <tr>
                        <td colspan="4" style="width: 100%; height: 5px;"></td>
                    </tr>
                   <tr>
                       <td style="width: 5%;"></td>
                       <td style="width: 75%;">
                           Fax: 255 22 2119461
                       </td>
                       <td style="width: 15%;">
                           Tanzania
                       </td>
                       <td style="width: 5%;"></td>
                   </tr>
                   <tr>
                        <td colspan="4" style="width: 100%; height: 30px;"></td>
                    </tr>
                   </table>
                    <table style="width: 100%;">
                   <tr>
                       <td style="width: 5%;"></td>
                       <td style="width: 10%;">
                           M/S in Form:
                       </td>
                       <td style="width: 65%;">
                           <asp:Label runat="server" ID="lbln"></asp:Label>
                       </td>
                       <td style="width: 15%;">
                           Date of Issue:
                       </td>
                       <td style="width: 5%;"></td>
                   </tr>
                   <tr>
                        <td colspan="5" style="width: 100%; height: 5px;"></td>
                    </tr>

                   <tr>
                       <td style="width: 5%;"></td>
                       <td style="width: 10%;">
                           
                       </td>
                       <td style="width: 65%;">
                           <asp:Label runat="server" ID="lbladd1"></asp:Label>
                       </td>
                       <td style="width: 15%;">
                           <asp:Label runat="server" ID="lbldi"></asp:Label>
                       </td>
                       <td style="width: 5%;"></td>
                   </tr>
                   <tr>
                        <td colspan="5" style="width: 100%; height: 5px;"></td>
                    </tr>
                    <tr runat="server" id="tradd2" visible="false">
                       <td style="width: 5%;"></td>
                       <td style="width: 10%;">
                           
                       </td>
                       <td style="width: 65%;">
                           <asp:Label runat="server" ID="lbladd2"></asp:Label>
                       </td>
                       <td style="width: 15%;">
                       </td>
                       <td style="width: 5%;"></td>
                   </tr>
                   <tr runat="server" id="tgadd2" visible="false">
                        <td colspan="5" style="width: 100%; height: 5px;"></td>
                    </tr>
                         <tr>
                       <td style="width: 5%;"></td>
                       <td style="width: 10%;">
                           
                       </td>
                       <td style="width: 65%;">
                           <asp:Label runat="server" ID="lblpo"></asp:Label>
                       </td>
                       <td style="width: 15%;">
                       </td>
                       <td style="width: 5%;"></td>
                   </tr>
                   <tr>
                        <td colspan="5" style="width: 100%; height: 30px;"></td>
                    </tr>
                   </table>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%; text-align: center; font-size:18px;">
                            <b>THE EAST AFRICAN COMMUNITY VEHICLE LOAD</b>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%; text-align: center; font-size:18px;">
                            <b>CONTROL ACT, 2016 AND ITS REGULATIONS OF 2017</b>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 30px;"></td>
                    </tr>
                    </table>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%;font-size:18px;">
                            <b>REF: SPECIAL LOAD PERMIT</b>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 30px;"></td>
                    </tr>
                    <tr>
                    <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            <asp:Label runat="server" ID="lblroute"></asp:Label>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 30px;"></td>
                    </tr>
                    <tr>
                    <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            <asp:Label runat="server" ID="lbldays"></asp:Label>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 30px;"></td>
                    </tr>
                    </table>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            <table border="1" style="width: 100%;">
                                <tr>
                                    <td style="width: 17%; text-align:center;"><i>Trucks/Loader Reg. No.</i></td>
                                    <td style="width: 17%;text-align:center;"><i>Engine Hp</i></td>
                                    <td style="width: 17%;text-align:center;"><i>Cargo</i></td>
                                    <td style="width: 17%;text-align:center;"><i>Axle Configuration</i></td>
                                    <td style="width: 16%;text-align:center;"><i>Dimensions mLxmWxm</i></td>
                                    <td style="width: 16%;text-align:center;"><i>Gross weight (tonnes)</i></td>
                                    </tr>
                                <tr>
                                    <td style="width: 17%;text-align:center;">
                                        <asp:Label runat="server" ID="lblreg">
                                        </asp:Label></td>
                                    <td style="width: 17%;text-align:center;">
                                        <asp:Label runat="server" ID="lblhp"></asp:Label></td>
                                    <td style="width: 17%;text-align:center;">
                                        <asp:Label runat="server" ID="lblcargo"></asp:Label></td>
                                    <td style="width: 17%;text-align:center;">
                                        <asp:Label runat="server" ID="lblac"></asp:Label></td>
                                    <td style="width: 16%;text-align:center;">
                                        <asp:Label runat="server" ID="lbldim"></asp:Label></td>
                                    <td style="width: 16%;text-align:center;">
                                        <asp:Label runat="server" ID="lblgross"></asp:Label></td>
                                </tr>
                                </table>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 30px;"></td>
                    </tr>
                    </table>
                <table style="width: 100%;">
                    <tr>
                    <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            <asp:Label runat="server" ID="lblauth"></asp:Label>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 30px;"></td>
                    </tr>
                    </table>
                <table style="width: 100%;">
                    <tr>
                    <td style="width: 5%;"></td>
                        <td style="width: 40%;">
                            <asp:Label runat="server" ID="lbloff"></asp:Label>
                        </td>
                        <td style="width: 20%;"></td>
                        <td style="width: 30%;">
                            <asp:Label runat="server" ID="lbloff1"></asp:Label>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 30px;"></td>
                    </tr>
                    <tr>
                    <td style="width: 5%;"></td>
                        <td style="width: 40%;">
                            
                        </td>
                        <td style="width: 20%;"></td>
                        <td style="width: 30%;">
                            FOR PERMANENT SECRETARY
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 30px;"></td>
                    </tr>
                    </table>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            <b>Terms and Conditions:</b>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                    </tr>
                </table>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 3%;">(i)</td>
                        <td style="width: 87%;">
                            Transporters shall comply with all traffic regulations, ensure safety and respect existence of other road users along the route.
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 3%;">(ii)</td>
                        <td style="width: 87%;">
                            Travelling shall be only on day time i.e. from 6:30 am to 6:30 pm or as specified by the Ministry of Works, Transport and Communication except for hazardous, dangerous and unstable loads.
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 3%;">(iii)</td>
                        <td style="width: 87%;">
                            Clearly four (4) visible red flags on all four extreme widest corners edges of the load/truck and a sign reading the type of cargo loaded at the front and rear of the truck must be installed except for unstable loads.
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 3%;">(iv)</td>
                        <td style="width: 87%;">
                            The truck must be weighed at every weighbridge station along the route.
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 3%;">(v)</td>
                        <td style="width: 87%;">
                            <asp:Label runat="server" ID="lblregi"></asp:Label>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 3%;">(vi)</td>
                        <td style="width: 87%;">
                            <asp:Label runat="server" ID="lblescort"></asp:Label>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 3%;">(vii)</td>
                        <td style="width: 87%;">
                            Front escort vehicle shall be at a distance of about 500m from the truck and rear escort vehicle shall be at a distance of about 200 m from the truck.
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 3%;">(viii)</td>
                        <td style="width: 87%;">
                            The driver shall carry original permit and original receipt, which has to be countersigned at every weighbridge station.
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 3%;">(ix)</td>
                        <td style="width: 87%;">
                            Operators at every weighbridge station shall weigh the truck. Any overload found should be charged and off loaded/rearranged to comply with the legal load limits.
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 3%;">(x)</td>
                        <td style="width: 87%;">
                            The weighbridge operators shall retain non compliant abnormally loaded vehicle untill the full payment is made.
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 3%;">(xi)</td>
                        <td style="width: 87%;">
                            <asp:Label runat="server" ID="lblfee"></asp:Label>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 3%;">(xii)</td>
                        <td style="width: 87%;">
                            <asp:Label runat="server" ID="lblsur"></asp:Label>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 3%;">(xiii)</td>
                        <td style="width: 87%;">
                            It is prohibited to transport cargo if the physical dimensions i.e. weight, (Length(L),Width(w) and Height(h)) or axle configuration mentioned on letter of application for the permit is different i.e. greater than measurements taken insitu any where along the route.
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 3%;">(xiv)</td>
                        <td style="width: 87%;">
                            The permit shall be invalid if the escort vehicle is absent or has been changed without a prior concert of the Ministry of Works.
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 3%;">(xv)</td>
                        <td style="width: 87%;">
                            The vehicle shall be impounded and a penalty of USD 2000 (two thousands) will be imposed to the transporter by a weighbridge operator or any other authorized officer for non compliance of any of the above mentioned terms,instructions and conditions.
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 3%;">(xvi)</td>
                        <td style="width: 87%;">
                            The Government shall be indemnified against any claim arising out of granting this permit.
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 15px;"></td>
                    </tr>
                </table>
                <asp:Literal runat="server" ID="ltadd"></asp:Literal>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
