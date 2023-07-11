<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRDBOptions.aspx.cs" MasterPageFile="~/Default.Master" Inherits="PresentationLayer.Permit.CRDBOptions" %>

<%@ MasterType VirtualPath="~/Default.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td style="width: 2%;"></td>
                <td style="width: 50%;">
                    <a class="navigationbar" href="Dashboard.aspx">Home</a>
                    &nbsp; &gt;&gt; &nbsp;<a class="navigationbar" href="Inbox.aspx">Inbox</a>
                    <asp:Label runat="server" ID="lblview"></asp:Label>
                    <asp:Label runat="server" ID="lblfee"></asp:Label>
                </td>
                <td style="width: 46%; text-align:right">
                </td>
                <td style="width: 2%;"></td>
            </tr>
            <tr>
                <td colspan="4" style="width: 100%; height: 10px;"></td>
            </tr>
        </table>

        <table style="width: 100%;">

            <tr>
                <td style="width:2%;"></td>
                <td style="width: 96%;">

                </td>
                <td style="width:2%;"></td>
            </tr>
            <tr>
                <td colspan="3" style="width: 100%; height: 40px;"></td>
            </tr>
            <tr>
                <td style="width:2%;"></td>
                <td style="width: 96%;">
                    <asp:Label runat="server" ID="lblPay" Font-Size="22">CRDB BANK</asp:Label>&nbsp;&nbsp;
                </td>
                <td style="width:2%;"></td>
            </tr>

            <tr>
                <td colspan="3" style="width: 100%; height: 20px;"></td>
            </tr>


        </table>
        <table style="width: 100%;">
            <tr>
                <td style="width:2%;"></td>
                <td style="width: 56%;">
                    <table style="width: 100%;">
                        <tr>

                            <td runat="server" id="trBranch"
                                style="width:20%;background-color:#eee; height:30px; vertical-align:middle; text-align:center;border:1px solid #ddd;">
                                <asp:LinkButton runat="server" Font-Size="10" CssClass="navigationbar" ID="lnkBranch"
                                    OnClick="lnkBranch_Click">BRANCH Payment</asp:LinkButton>
                            </td>
                            <td runat="server" id="trFahari"
                                style="width:20%;background-color:#eee; height:30px; vertical-align:middle; text-align:center;border:1px solid #ddd;">
                                <asp:LinkButton runat="server" Font-Size="10" CssClass="navigationbar" ID="lnkFahari"
                                    OnClick="lnkFahari_Click">FAHARI Huduma</asp:LinkButton>
                                <asp:LinkButton runat="server" Font-Size="10" CssClass="navigationbar" Visible="false"
                                    ID="lnkSIM" OnClick="lnkSIM_Click">SIM Banking</asp:LinkButton>
                            </td>
                            <!--<td runat="server" id="trSIM" style="width:20%;background-color:#eee; height:30px; vertical-align:middle; text-align:center;border:1px solid #ddd;">
                                        
                                    </td>-->
                            <td
                                style="width:60%; border:1px solid #ddd; border-top-color:white; border-right-color:white;">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" visible="false" runat="server" id="SIMBody"
                                style="width:100%;background-color:white; vertical-align:middle; border:1px solid #ddd;">
                                <br /><br />
                                <asp:Label runat="server" ID="ss" Font-Size="20"> SIM BANKING Payment instructions
                                </asp:Label> <br /><br />
                                &nbsp;&nbsp;&nbsp;&nbsp;1. Dial *150*03# to access your CRDB SIM BANKING Menu
                                <br /><br />
                                &nbsp;&nbsp;&nbsp;&nbsp;2. Enter your SIM BANKING password <br /><br />
                                &nbsp;&nbsp;&nbsp;&nbsp;3. Select option 4 to pay for invoice <br /><br />
                                &nbsp;&nbsp;&nbsp;&nbsp;4. Select option 6 to for BRELA <br /><br />
                                &nbsp;&nbsp;&nbsp;&nbsp;5. Enter invoice number <asp:Label runat="server" ID="lblinv">
                                </asp:Label> <br /><br />
                                &nbsp;&nbsp;&nbsp;&nbsp;6. Confirm invoice number by pressing 1 <br /><br />
                                &nbsp;&nbsp;&nbsp;&nbsp;7. Select account number which money will be debited and your
                                payment will be done successfully<br /><br /><br />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" visible="false" runat="server" id="BranchBody"
                                style="width:100%;background-color:white; vertical-align:middle; border:1px solid #ddd;">
                                <br /><br />
                                <asp:Label runat="server" ID="lblbpi" Font-Size="20">BRANCH Payment instructions
                                </asp:Label> <br /><br />
                                &nbsp;&nbsp;&nbsp;&nbsp;1.Visit any nearby CRDB BANK branch <br /><br />
                                &nbsp;&nbsp;&nbsp;&nbsp;2. Make depostit Specify invoice number : <asp:Label
                                    runat="server" ID="lblinv1"></asp:Label> with payment of Tsh <asp:Label
                                    runat="server" ID="lblbFee"></asp:Label> <br /><br />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" visible="false" runat="server" id="BranchBody1"
                                style="width:100%;background-color:orange; vertical-align:middle; border:1px solid #ddd;">

                                NB: Please make sure you specify INVOICE number to BANK agent and you make payment by
                                using that invoice. Failure to do so, your applicaion will be rejected by the system and
                                you will fail to get permit. Please ask CRDB agent if is aware of ALPS payments
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" visible="false" runat="server" id="BranchBody2"
                                style="width:100%; height:10px; background-color:white; vertical-align:middle; border:1px solid #ddd;">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" visible="false" runat="server" id="FahariBody"
                                style="width:100%;background-color:white; vertical-align:middle; border:1px solid #ddd;">
                                <br /><br />
                                <asp:Label runat="server" ID="lblfhpi" Font-Size="20">FAHARI HUDUMA Payment instructions
                                </asp:Label> <br /><br />
                                &nbsp;&nbsp;&nbsp;&nbsp;1.Visit any nearby CRDB FAHARI HUDUMA agent with a smart
                                pos<br /><br />
                                &nbsp;&nbsp;&nbsp;&nbsp;2. Depostit Tsh <asp:Label runat="server" ID="lblFFee">
                                </asp:Label> and specify invoice number : <asp:Label runat="server" ID="lblinvF">
                                </asp:Label> <br /><br />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" visible="false" runat="server" id="FahariBody1"
                                style="width:100%;background-color:orange; vertical-align:middle; border:1px solid #ddd;">

                                NB: Please make sure you specify INVOICE number to BANK agent and you make payment by
                                using that invoice. Failure to do so, your applicaion will be rejected by the system and
                                you will fail to get permit. Please ask CRDB agent if is aware of ALPS payments
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" visible="false" runat="server" id="FahariBody2"
                                style="width:100%; height:10px; background-color:white; vertical-align:middle; border:1px solid #ddd;">
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width:2%;"></td>
                <td style="width: 36%;">
                    <table style="width: 100%;">
                        <tr>
                            <td style="width:100%;height:30px; vertical-align:middle; text-align:center;">
                                <asp:Label runat="server" ID="lblPS" Font-Size="12">Payment Summary</asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100%; height: 20px;"></td>
                        </tr>
                    </table>
                    <table style="width: 100%;">
                        <tr>
                            <td
                                style="width:1%; background-color:#eee; height:30px; vertical-align:middle; border:1px solid #ddd; border-right-color:#eee;">
                            </td>
                            <td
                                style="width:30%; background-color:#eee; height:30px; vertical-align:middle; border:1px solid #ddd;">
                                <asp:Label runat="server" ID="Label2" Font-Size="10">Permit Fee</asp:Label>
                            </td>
                            <td
                                style="width:1%; background-color:#eee; height:30px; vertical-align:middle; border:1px solid #ddd; border-right-color:#eee;">
                            </td>
                            <td
                                style="width:68%;background-color:#eee; height:30px; vertical-align:middle; border:1px solid #ddd;">
                                <asp:Label runat="server" ID="lblPF" Font-Size="10"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td
                                style="width:1%; background-color:white; height:30px; vertical-align:middle; border:1px solid #ddd; border-right-color:white;">
                            </td>
                            <td
                                style="width:30%; background-color:white; height:30px; vertical-align:middle; border:1px solid #ddd;">
                                <asp:Label runat="server" ID="Label3" Font-Size="10">Surcharge Fee</asp:Label>
                            </td>
                            <td
                                style="width:1%; background-color:white; height:30px; vertical-align:middle; border:1px solid #ddd; border-right-color:white;">
                            </td>
                            <td
                                style="width:68%;background-color:white; height:30px; vertical-align:middle; border:1px solid #ddd;">
                                <asp:Label runat="server" ID="lblSF" Font-Size="10"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td
                                style="width:1%; background-color:#eee; height:30px; vertical-align:middle; border:1px solid #ddd; border-right-color:#eee;">
                            </td>
                            <td
                                style="width:30%; background-color:#eee; height:30px; vertical-align:middle; border:1px solid #ddd;">
                                <asp:Label runat="server" ID="Label4" Font-Size="10">Total Fee</asp:Label>
                            </td>
                            <td
                                style="width:1%; background-color:#eee; height:30px; vertical-align:middle; border:1px solid #ddd; border-right-color:#eee;">
                            </td>
                            <td
                                style="width:68%;background-color:#eee; height:30px; vertical-align:middle; border:1px solid #ddd;">
                                <asp:Label runat="server" ID="lblTF" Font-Size="10"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td
                                style="width:1%; background-color:white; height:30px; vertical-align:middle; border:1px solid #ddd; border-right-color:white;">
                            </td>
                            <td
                                style="width:30%; background-color:white; height:30px; vertical-align:middle; border:1px solid #ddd;">
                                <asp:Label runat="server" ID="Label5" Font-Size="10">Mean</asp:Label>
                            </td>
                            <td
                                style="width:1%; background-color:white; height:30px; vertical-align:middle; border:1px solid #ddd; border-right-color:white;">
                            </td>
                            <td
                                style="width:68%;background-color:white; height:30px; vertical-align:middle; border:1px solid #ddd;">
                                <asp:Label runat="server" ID="lblMean" Font-Size="10"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td
                                style="width:1%; background-color:#eee; height:30px; vertical-align:middle; border:1px solid #ddd; border-right-color:#eee;">
                            </td>
                            <td
                                style="width:30%; background-color:#eee; height:30px; vertical-align:middle; border:1px solid #ddd;">
                                <asp:Label runat="server" ID="Label6" Font-Size="10">Spot Buying</asp:Label>
                            </td>
                            <td
                                style="width:1%; background-color:#eee; height:30px; vertical-align:middle; border:1px solid #ddd; border-right-color:#eee;">
                            </td>
                            <td
                                style="width:68%;background-color:#eee; height:30px; vertical-align:middle; border:1px solid #ddd;">
                                <asp:Label runat="server" ID="lblSB" Font-Size="10"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td
                                style="width:1%; background-color:white; height:30px; vertical-align:middle; border:1px solid #ddd; border-right-color:white;">
                            </td>
                            <td
                                style="width:30%; background-color:white; height:30px; vertical-align:middle; border:1px solid #ddd;">
                                <asp:Label runat="server" ID="Label8" Font-Size="10">Spot Selling</asp:Label>
                            </td>
                            <td
                                style="width:1%; background-color:white; height:30px; vertical-align:middle; border:1px solid #ddd; border-right-color:white;">
                            </td>
                            <td
                                style="width:68%;background-color:white; height:30px; vertical-align:middle; border:1px solid #ddd;">
                                <asp:Label runat="server" ID="lblSS" Font-Size="10"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td
                                style="width:1%; background-color:#eee; height:30px; vertical-align:middle; border:1px solid #ddd; border-right-color:#eee;">
                            </td>
                            <td
                                style="width:30%; background-color:#eee; height:30px; vertical-align:middle; border:1px solid #ddd;">
                                <asp:Label runat="server" ID="Label7" Font-Size="10">One USD</asp:Label>
                            </td>
                            <td
                                style="width:1%; background-color:#eee; height:30px; vertical-align:middle; border:1px solid #ddd; border-right-color:#eee;">
                            </td>
                            <td
                                style="width:68%;background-color:#eee; height:30px; vertical-align:middle; border:1px solid #ddd;">
                                <asp:Label runat="server" ID="lblOne" Font-Size="10"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td
                                style="width:1%; background-color:white; height:30px; vertical-align:middle; border:1px solid #ddd; border-right-color:white;">
                            </td>
                            <td
                                style="width:30%; background-color:white; height:30px; vertical-align:middle; border:1px solid #ddd;">
                                <asp:Label runat="server" ID="Label9" Font-Size="10">Total Permit Fee</asp:Label>
                            </td>
                            <td
                                style="width:1%; background-color:white; height:30px; vertical-align:middle; border:1px solid #ddd; border-right-color:white;">
                            </td>
                            <td
                                style="width:68%;background-color:white; height:30px; vertical-align:middle; border:1px solid #ddd;">
                                <asp:Label runat="server" ID="lblTPF" Font-Size="10"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" style="width: 100%; height: 40px;"></td>
                        </tr>
                    </table>
                </td>
                <td style="width:2%;"></td>
            </tr>
        </table>


    </div>
</asp:Content>