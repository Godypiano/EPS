<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Permit.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.Permit" %>

<%@ MasterType VirtualPath="~/Default_custom.master" %>
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
                         <fieldset>
                        <legend>
                            <asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label>
                            <label class="hd1">View Permit</label>
                         </legend>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 100%; height: 20px;"></td>
                    </tr>
                  </table>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 15%; text-align: left"></td>
                        <td style="width: 60%; text-align: center">
                            <asp:PlaceHolder ID="phBarCode" runat="server" />
                        </td>
                        <td style="width: 15%; text-align: right"></td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="5" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 15%; text-align: left">
                            <img height="70px" width="70px" src="/Images/coarm.JPG" />
                        </td>
                        <td style="width: 60%; text-align: center;font-size:18px;">
                            <b>EAC-VLC SPECIAL LOAD PERMIT</b><br /><br />
                            <b>SPECIAL PERMIT</b>
                        </td>
                        <td style="width: 15%;text-align: right">
                            <img height="70px" width="70px" src="/Images/eac-logo.jpeg" />
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
             
                    <tr>
                        <td colspan="3" style="width: 100%; height: 15px;"></td>
                    </tr>
                   
                    <tr>
                        <td colspan="3" style="width: 100%; height: 30px;"></td>
                    </tr>
                </table>
               <table style="width: 100%;">
                   <tr>
                       <td style="width: 5%;"></td>
                       <td style="width: 45%;text-align: left">
                           <asp:Label runat="server" ID="lblsn"></asp:Label>
            
                       </td>
                       <td style="width: 45%;text-align: right">
                       </td>
                       <td style="width: 5%;"></td>
                   </tr>
                   <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                   <tr>
                       <td style="width: 5%;"></td>
                       <td style="width: 45%;text-align: left">
                           <asp:Label runat="server" ID="lblEFF"></asp:Label>
                       </td>
                       <td style="width: 45%;text-align: right">
                           <asp:Label runat="server" ID="lblEXD"></asp:Label>
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
                        <td style="width: 90%;">
                            <table border="1" style="width: 100%;">
                                <tr>
                                    <td style="width: 30%; text-align:center;">Vehicle Lincense No.</td>
                                    <td style="width: 30%;text-align:center;">Type</td>
                                    <td style="width: 30%;text-align:center;">Year/M</td>
                                    </tr>
                                <tr>
                                    <td style="width: 17%;text-align:center;">
                                        <asp:Label runat="server" ID="lblVLN">
                                        </asp:Label></td>
                                    <td style="width: 17%;text-align:center;">
                                        <asp:Label runat="server" ID="lblTPE"></asp:Label></td>
                                    <td style="width: 17%;text-align:center;">
                                        <asp:Label runat="server" ID="lblYM"></asp:Label></td>
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
                            <table border="1" style="width: 100%;">
                                <tr>
                                    <td style="width: 22%; text-align:center;">
                                        <asp:Label runat="server" ID="lblLen"></asp:Label>
                                    </td>
                                    <td style="width: 23%;text-align:center;">
                                        <asp:Label runat="server" ID="lblWid"></asp:Label>
                                    </td>
                                    <td style="width: 22%;text-align:center;">
                                        <asp:Label runat="server" ID="lblHei"></asp:Label>
                                    </td>
                                    <td style="width: 23%;text-align:center;">
                                        <asp:Label runat="server" ID="lblWei"></asp:Label>
                                    </td>
                                    </tr>

                               
                                </table>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 30px;"></td>
                    </tr>
                    </table>

                    <%--<table style="width: 100%;">
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 90%;">
                            <table border="1" style="width: 100%;">
                                
                                <tr>
                                    <td style="width: 15%;text-align:center;">
                                        Overhang
                                        </td>
                                    <td style="width: 20%;text-align:center;">
                                       Rear: <asp:Label runat="server" ID="lblRight"></asp:Label></td>
                                    <td style="width: 20%;text-align:center;">
                                        Front (Motorvehicle): <asp:Label runat="server" ID="lblLeft"></asp:Label></td>
                                    <td style="width: 15%;text-align:center;">
                                        Front (drawbar): <asp:Label runat="server" ID="lblWall"></asp:Label></td>
                                    <td style="width: 15%;text-align:center;">
                                        Right: <asp:Label runat="server" ID="lblRight1"></asp:Label></td>
                                    <td style="width: 15%;text-align:center;">
                                        Left: <asp:Label runat="server" ID="lblLeft1"></asp:Label></td>
                                </tr>
                               
                                </table>
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 30px;"></td>
                    </tr>
                    </table>--%>
                <table style="width: 100%;">
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
                            Travelling shall be only on day time i.e. from 6:30 am to 6:00 pm or as specified by the Ministry of Works, Transport and Communication except for hazardous, awkward and unstable loads.
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
                            Trucks/lories, buses or saloon cars are not allowed as escort vehicles.
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
                            Front escort vehicle shall be at a distance of about 500m from the truck and rear escort vehicle shall be at a distance of about 200 m from the truck.
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
                            The driver shall carry original permit and original receipt, which has to be countersigned at every weighbridge station.
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
                            Operators at every weighbridge station shall weigh the truck. Any overload found should be charged and off loaded/rearranged to comply with the legal load limits.
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
                            The weighbridge operators shall retain non compliant <asp:Label runat="server" ID="lblABN"></asp:Label> loaded vehicle untill the full payment is made.
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
                            <asp:Label runat="server" ID="lblfee"></asp:Label>
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
                            <asp:Label runat="server" ID="lblsur"></asp:Label>
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
                            It is prohibited to transport cargo if the information provided in the application form for the permit differs with those taken in-situ anywhere along the route.
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
                            The permit shall be invalid if the escort vehicle is absent or has been changed without a prior concert of the Ministry of Works, Transport and Communication.
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
                            Non-compliance of any of the above mentioned terms and conditions, the authorized officer will handle the issue in accordance with the provisions of Act (The East African Community Vehicle Load Control Act, 2016 and Its Regulations of 2017).
                        </td>
                        <td style="width: 5%;"></td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width: 100%; height: 15px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 5%;"></td>
                        <td style="width: 3%;">(xvii)</td>
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
