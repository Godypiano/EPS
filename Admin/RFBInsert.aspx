<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RFBInsert.aspx.cs" MasterPageFile="~/Default_admin.Master" Inherits="PresentationLayer.Admin.RFBInsert" %>

<%@ MasterType VirtualPath="~/Default_admin.master" %>
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
                            <a class="navigationbar" href="Dashboard.aspx">Home</a>&nbsp; &gt;&gt; &nbsp;<a class="navigationbar" href="Archive.aspx">Archive</a>
                            </td>
                        <td style="width: 2%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 10px;"></td>
                    </tr>
                    
                  </table>
                               <fieldset>
                        <legend>
                            <label class="hd1">View Archive Applications</label>
                         </legend>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 100%; height: 20px;"></td>
                    </tr>
                  </table>
                <table style="width: 100%;">
                    <tr>
                        <td colspan="5" style="width: 100%; height:20px;"></td>
                    </tr>
                    
                    
                    <tr>
                        <td colspan="5" style="width: 100%; height:30px;"></td>
                    </tr>
                    </table>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 3%;"></td>
                        <td style="width: 94%; text-align: center">
                            

                        </td>
                        <td style="width: 3%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 10px;"></td>
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
