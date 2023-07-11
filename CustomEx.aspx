<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomEx.aspx.cs" MasterPageFile="~/Default_Plain.Master" Inherits="PresentationLayer.CustomEx" %>

<%@ MasterType VirtualPath="~/Default_Plain.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upRegistration" runat="server">
            <ContentTemplate>
                <fieldset style="width: 90%; border: 1px solid #414448; border-radius: 10px; margin-left: 20px;">
                <legend class="heading">Oops</legend>
                <table cellpadding="0" cellspacing="0" border="0">
                    <tr>
                        <td style="height: 25px">
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left: 20px">
                            <asp:Label ID="lblCustomEx" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 25px">
                        </td>
                    </tr>
                </table>
            </fieldset>

            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
