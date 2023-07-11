<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetupRoles.aspx.cs" MasterPageFile="~/Default_admin.Master" Inherits="PresentationLayer.Admin.SetupRoles" %>

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
                            <a class="navigationbar" href="Dashboard.aspx">Home</a>&nbsp; &gt;&gt; &nbsp;<a class="navigationbar" href="SetupRoles.aspx">Role</a>
                            </td>
                        <td style="width: 2%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 10px;"></td>
                    </tr>
                </table>
                <fieldset>
                    <legend>
                            <label class="hd1">Role</label>
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
                        <td style="width: 25%;">
                            <label>Code</label>
                        </td>
                        <td style="width: 25%;">
                            <asp:TextBox ID="txtCode" runat="server" ReadOnly="true" MaxLength="20"></asp:TextBox>
                        </td>
                         <td style="width: 25%;">
                            <label>Role</label>
                        </td>
                        <td style="width: 25%;">
                            <asp:TextBox runat="server" ID="txtRole" MaxLength="100" Width="150"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="rfvRole" CssClass="red" ControlToValidate="txtRole" Display="Dynamic" ErrorMessage="Please enter role"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td colspan="4" style="width: 100%; height: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 25%;">
                            <label>Status </label>
                        </td>
                        <td style="width: 25%;">
                            <asp:RadioButtonList ID="rbStatus" runat="server" Width="200px" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem Text="Active" Value="Active" Selected="True"  />
                                <asp:ListItem Text="InActive" Value="InActive"  />
                            </asp:RadioButtonList>
                        </td>
                         <td style="width: 25%;">
                            
                        </td>
                        <td style="width: 25%;">
                        </td>
                    </tr>
                     <tr>
                        <td colspan="4" style="width: 100%; height: 30px;"></td>
                    </tr>
                     </table>
                    <table style="width: 100%;">   
                    
                     
                    <tr>
                        <td style="width: 98%; text-align: right;">
                            <asp:Button ID="btnSubmit" runat="server" Text="Create" OnClick="btnSubmit_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnDelete" runat="server" CausesValidation="false" OnClientClick="return confirm('Are you sure want to delete smtp settings?');" Text="Delete" OnClick="btnDelete_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button runat="server" ID="btnCancel" CausesValidation="false" Text="Cancel" OnClick="btnCancel_Click" />
                        </td>
                        <td style="width: 2%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 20px;"></td>
                    </tr>
                     <tr>
                        <td colspan="2" style="width: 98%; text-align: center;">
                            <asp:GridView ID="gvDept" Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                runat="server" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                HeaderStyle-CssClass="HeaderDatagrid" PageSize="10" OnPageIndexChanging="gvDept_PageIndexChanging" AllowPaging="true">
                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <PagerStyle CssClass="gridViewPager" />
                                <Columns>
                                    <asp:TemplateField ItemStyle-Width="5%">
                                        <ItemTemplate>    
                                            <asp:RadioButton ID="rbDept" runat="server" AutoPostBack="true"
                                                oncheckedchanged="rbDept_CheckedChanged" />    
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Sno" HeaderText="SNO" ShowHeader="false" >
                                        <ItemStyle CssClass="hide" /><HeaderStyle CssClass="hide"/>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Code" HeaderText="Code" />
                                    <asp:BoundField DataField="Desc" HeaderText="Role" />
                                    <asp:BoundField DataField="Role_Status" HeaderText="Status" />
                                </Columns>
                            </asp:GridView>
                        </td>
                        <td style="width: 2%;"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 100%; height: 20px;"></td>
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
