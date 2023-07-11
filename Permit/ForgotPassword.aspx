<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" MasterPageFile="~/Default_Plain.Master" Inherits="PresentationLayer.Permit.ForgotPassword" %>
<%@ MasterType VirtualPath="~/Default_Plain.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .auth__wrapper>div,
        .auth__wrapper>div>div {
            display: flex;
            min-height: 100%;
            min-width: 100%;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <asp:UpdatePanel ID="upRegistration" runat="server">
            <ContentTemplate>
                <div class="auth-box px-3">
                    <div class="card card-auth pb-5">
                        <div class="card-body">
                            <h1 class="system-title text-center">
                                <asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label>
                            <label class="hd1">Forgot Password</label>
                            </h1>

                            <div class="site-login pb-2">
                                <hr class="text-muted" />
                                <div class="form-group mb-3">
                                    <label class="font-w500 mb-1" for="username">Email</label>

                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtEmail" MaxLength="200">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="rfvEmail" CssClass="red"
                                        ControlToValidate="txtEmail" Display="Dynamic"
                                        ErrorMessage="Please enter email address"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revEmail" CssClass="red" runat="server"
                                        ControlToValidate="txtEmail" ErrorMessage="Please enter the valid Email ID"
                                        ValidationExpression="^[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"
                                        Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group d-flex justify-content-between auth-control mb-0">
                                    <div class="col-auto d-flex align-items-center p-0">
                                        <a href="/Default.aspx" class="auth-link d-flex">
                                            <span class="svg-icon svg-icon-5 me-1">
                                                <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="unlock-alt" class="svg-inline--fa fa-unlock-alt fa-w-14" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                                                    <path fill="currentColor" d="M400 256H152V152.9c0-39.6 31.7-72.5 71.3-72.9 40-.4 72.7 32.1 72.7 72v16c0 13.3 10.7 24 24 24h32c13.3 0 24-10.7 24-24v-16C376 68 307.5-.3 223.5 0 139.5.3 72 69.5 72 153.5V256H48c-26.5 0-48 21.5-48 48v160c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48V304c0-26.5-21.5-48-48-48zM264 408c0 22.1-17.9 40-40 40s-40-17.9-40-40v-48c0-22.1 17.9-40 40-40s40 17.9 40 40v48z"></path>
                                                </svg>
                                            </span>
                                            <span>I have my credentials.</span>
                                        </a>
                                    </div>
                                    <div class="col-auto text-right p-0">
                                        <asp:Button CssClass="btn btn-primary btn-sm px-3" ID="btnReg" runat="server"
                                            Text="Submit" OnClick="btnReg_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </ContentTemplate>
            <Triggers>
                <asp:PostBackTrigger ControlID="btnReg" />
            </Triggers>
        </asp:UpdatePanel>
    </div>
</asp:Content>