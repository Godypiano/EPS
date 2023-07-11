<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default_old.aspx.cs" Inherits="PresentationLayer.Default_old" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>ALPS</title>
    <link href="~/Styles/login_default.css" rel="stylesheet" type="text/css" />
    <link href="~/Styles/login.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="wrprmain">
                <tbody>
                    <tr>
                        <td>
                            <!--header-->
                            <div class="wrprhdr">
                                <table align="left">
                                    <tbody>
                                        <tr>
                                            <td style="padding-top: 15px;"></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <!--navigation-->
                            <div class="wrprnav">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <!--midprt-->
                            <div class="wrprctr">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td colspan="2">
                                                <div class="wrprctrrow">
                                                    <table width="100%">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    <!--ECM Portal Login-->
                                                                    <div id="Div1" class="wrprctrlog" style="overflow: hidden">
                                                                        <table style="width: 250px; overflow: hidden;">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td colspan="2">
                                                                                        <table style="width: 98%;">
                                                                                            <tbody>
                                                                                                <tr>
                                                                                                    <td>
                                                                                                        <span id="fftxt" title="ALPS Portal Login" class="frmheadtxt">ALPS - Login</span>
                                                                                                    </td>
                                                                                                    <td class="frmhelptxt" align="right">
                                                                                                        <a id="lnkhlp" title="Help" onclick="javascript:Help();">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                                                                                &nbsp;
                                                                                Help</a>
                                                                                                        <span id="lblMessage"></span>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </tbody>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td dir="ltr">
                                                                                        <table style="width: 100%;">
                                                                                            <tbody>
                                                                                                <tr>
                                                                                                    <td style="height:25px;width:125px;">
                                                                                                        <label for="usernam" class="lblcls">
                                                                                                            <span id="un" title="User ID">Email</span></label>
                                                                                                    </td>
                                                                                                    <td style="width:125px;">
                                                                                                        <asp:TextBox runat="server" ID="txtEmail" CssClass="inputtxt" MaxLength="30"></asp:TextBox>
                                                                                                        
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td style="height:25px;">
                                                                                                        <label for="txtPwd" class="lblcls">
                                                                                                            <span id="Label1" title="Password">Password</span></label>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:TextBox runat="server" ID="txtPwd" TextMode="Password" CssClass="inputtxt" MaxLength="16"></asp:TextBox>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td style="height:25px;">
                                                                                                        <label class="lblcls">
                                                                                                        </label>
                                                                                                    </td>
                                                                                                    <td></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td colspan="2">
                                                                                                        <table style="width: 100%;">
                                                                                                            <tbody>
                                                                                                                <tr>
                                                                                                                    <td style="height:25px;">
                                                                                                                        <asp:LinkButton runat="server" ID="lnkBtnForget" Text="Forgot Password?" CssClass="frmtxt" OnClick="lnkBtnForget_Click"></asp:LinkButton>
                                                                                                                    </td>
                                                                                                                    <td>
                                                                                                                        <asp:LinkButton runat="server" ID="lnkBtnRegister" Text="Register" CssClass="frmtxt" OnClick="lnkBtnRegister_Click"></asp:LinkButton>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                            </tbody>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td colspan="2" style="text-align:center;">
                                                                                                        <asp:Button runat="server" ID="btnLogin" Text="Login" ToolTip="Login to ALPS Portal" CssClass="button_example" OnClick="btnLogin_Click" />
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </tbody>
                                                                                        </table>
                                                                                    </td>

                                                                                </tr>
                                                                            </tbody>
                                                                        </table>

                                                                    </div>
                                                                </td>
                                                                <td style="vertical-align:top;">
                                                                    <!--ECM Sub banner Add-->
                                                                    <div class="wrprctradd">
                                                                        <p class="txtbox">
                                                                        </p>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="vertical-align:top;">
                                                <div class="wrprctrrow2nd">
                                                    <table width="100%">
                                                        <tbody>
                                                            <tr>
                                                                <td style="vertical-align:top;">
                                                                    <!--Abt RFB-->
                                                                    <div class="wrprctrabt">
                                                                        <table>
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td id="Td1" style="padding-left: 5px;" dir="ltr" align="left" height="30px">
                                                                                        <h1>ALPS</h1>
                                                                                    </td>

                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="solutiontd" align="left" valign="middle">
                                                                                       
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </td>
                                                                <td style="vertical-align:top;">
                                                                    <!--Notice-->
                                                                    <div id="Div2" class="wrprctrnot" dir="ltr">
                                                                        <h1>Notice</h1>
                                                                        <div id="divNotice" dir="ltr"></div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left;">
                            <!--footer-->
                            <div class="wrprftr">
                                <table style="height: 60px">
                                    <tbody>
                                        <tr>
                                            <td colspan="2" style="text-align:center;">
                                                <p>
                                                    © 2015 ALPS. All Rights Reserved.
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="font-size: 12px; width: 100%; vertical-align: middle; padding-left: 110;" align="center">
                                                <span id="Label3">Powered By - Biz-Logic Solutions Ltd.</span>
                                            </td>
                                            <td style="padding-right: 8px;text-align:right;">
                                                <img alt="logo" src="Images/bizlogiclogo.png" height="45px" width="90px" />
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>

