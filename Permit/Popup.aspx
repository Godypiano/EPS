<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Popup.aspx.cs" Inherits="PresentationLayer.Permit.Popup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Terms and Conditions</title>
    <!-- <link href="/assets/css/style.bundle.css" rel="stylesheet" type="text/css" /> -->
    <link rel="stylesheet" href="/css/main.min.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
        * {
            font-size: 16px;
        }

        .btn {
            display: inline-block;
            font-weight: 500;
            line-height: 1.5;
            text-align: center;
            vertical-align: middle;
            cursor: pointer;
            user-select: none;
            background-color: transparent;
            border: 1px solid transparent;
            /* padding: 0.75rem 1.5rem; */
            /* font-size: 1.1rem; */
            border-radius: 0.475rem;
            transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
        }

        .btn-primary {
            color: #fff;
            border-color: #00a3ff;
            background-color: #00a3ff;
            box-shadow: inset 0 1px 0 rgb(255 255 255 / 15%), 0 1px 1px rgb(0 0 0 / 8%);
        }

        .btn.btn-sm {
            padding: calc(0.25rem + 1px) calc(.5rem + 1px);
            font-size: 0.875rem;
            border-radius: .35rem;
        }
    </style>
    <script type="text/javascript">
        function CloseWindow() {
            window.close();
            opener.document.location = "ApplyPermit.aspx";
        }
    </script>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td style="width: 10%;"></td>
                    <td style="width: 80%;">
                        <asp:Label runat="server" ID="lblTU"></asp:Label>
                        <!--<b>Terms of Use:</b><br />
                In any manner whatsoever fails to comply with any condition annexed to special permit issued by the Road Authority or who with intent to deceive or defraud, alters varies, defaces, forges or otherwise in any way interferes with such permit, shall be guilty of an offence, and shall be liable on conviction to a fine not less than 2000 US$ or its equivalent in TShs. or to imprisonment for a term of six months or both.
                Upon the invoice is issued against the application, no amendments on such applications will be entertained, in such circumstance the applicant will have to fill in for a new application.
                The Invoice issued will be valid for a specific period of time as specified in the invoice. Failure to make payment with the specified time period will lead to the expiry of both the application made and the corresponding Invoice, hence the applicant will have to fill in a new application.
                Once a permit is issued no any amendments will be accepted. In such circumstances the applicant will be required to fill in a new application and the fee to be made in order to obtain a new permit.
                By Clicking “Apply” I agree that, I have read and Accepted the above terms.-->

                    </td>
                    <td style="width: 10%;"></td>
                </tr>
                <tr>
                    <td colspan="3" style="width: 100%; height: 20px;"></td>
                </tr>
                <tr>
                    <td style="width: 10%;"></td>
                    <td style="width: 80%; text-align:center">
                        <asp:Button CssClass="btn btn-primary btn-sm" runat="server" ID="btnApply" Text="Apply"
                            OnClientClick="CloseWindow()" />
                    </td>
                    <td style="width: 10%;"></td>
                </tr>
                <tr>
                    <td colspan="3" style="width: 100%; height: 20px;"></td>
                </tr>
            </table>
        </div>
    </form>
</body>

</html>