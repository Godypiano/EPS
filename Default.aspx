<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" MasterPageFile="~/Default_Plain.Master" Inherits="PresentationLayer.Default" %>

<%@ MasterType VirtualPath="~/Default_Plain.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auth-box px-3">
        <div class="card card-auth pb-5">
            <div class="card-body">
                <h1 class="system-title text-center">
                    Login
                </h1>

                <div class="site-login pb-2">
                    <hr class="text-muted" />
                    <div class="form-group mb-3">
                        <label class="font-w500 mb-1" for="username">Email</label>
                        <asp:TextBox  CssClass="form-control" runat="server" ID="txtEmail" MaxLength="100"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="red" runat="server" ID="rfvEmail" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Please enter email address"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" CssClass="red" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter the valid Email ID" ValidationExpression="^[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group mb-3">
                        <label class="font-w500 mb-1" for="userpassword">Password</label>
                        <div id="password-box">
                                
                                <asp:TextBox CssClass="form-control" runat="server" ID="txtPwd" TextMode="Password" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="rfvPwd" CssClass="red" ControlToValidate="txtPwd" Display="Dynamic" ErrorMessage="Please enter password"></asp:RequiredFieldValidator>

                            <span id="password-shown" style="display: none;"
                                class="svg-icon svg-icon-2 password-control">
                                <svg aria-hidden="true" focusable="false" data-prefix="fas"
                                    data-icon="eye-slash"
                                    class="svg-inline--fa fa-eye-slash fa-w-20" role="img"
                                    xmlns="http://www.w3.org/2000/svg"
                                    viewBox="0 0 640 512">
                                    <path fill="currentColor"
                                        d="M320 400c-75.85 0-137.25-58.71-142.9-133.11L72.2 185.82c-13.79 17.3-26.48 35.59-36.72 55.59a32.35 32.35 0 0 0 0 29.19C89.71 376.41 197.07 448 320 448c26.91 0 52.87-4 77.89-10.46L346 397.39a144.13 144.13 0 0 1-26 2.61zm313.82 58.1l-110.55-85.44a331.25 331.25 0 0 0 81.25-102.07 32.35 32.35 0 0 0 0-29.19C550.29 135.59 442.93 64 320 64a308.15 308.15 0 0 0-147.32 37.7L45.46 3.37A16 16 0 0 0 23 6.18L3.37 31.45A16 16 0 0 0 6.18 53.9l588.36 454.73a16 16 0 0 0 22.46-2.81l19.64-25.27a16 16 0 0 0-2.82-22.45zm-183.72-142l-39.3-30.38A94.75 94.75 0 0 0 416 256a94.76 94.76 0 0 0-121.31-92.21A47.65 47.65 0 0 1 304 192a46.64 46.64 0 0 1-1.54 10l-73.61-56.89A142.31 142.31 0 0 1 320 112a143.92 143.92 0 0 1 144 144c0 21.63-5.29 41.79-13.9 60.11z">
                                    </path>
                                </svg>
                            </span>
                            <span id="password-hidden"
                                class="svg-icon svg-icon-2 password-control">
                                <svg aria-hidden="true" focusable="false" data-prefix="fas"
                                    data-icon="eye" class="svg-inline--fa fa-eye fa-w-18"
                                    role="img" xmlns="http://www.w3.org/2000/svg"
                                    viewBox="0 0 576 512">
                                    <path fill="currentColor"
                                        d="M572.52 241.4C518.29 135.59 410.93 64 288 64S57.68 135.64 3.48 241.41a32.35 32.35 0 0 0 0 29.19C57.71 376.41 165.07 448 288 448s230.32-71.64 284.52-177.41a32.35 32.35 0 0 0 0-29.19zM288 400a144 144 0 1 1 144-144 143.93 143.93 0 0 1-144 144zm0-240a95.31 95.31 0 0 0-25.31 3.79 47.85 47.85 0 0 1-66.9 66.9A95.78 95.78 0 1 0 288 160z">
                                    </path>
                                </svg>
                            </span>
                        </div>
                    </div>
                    <div
                        class="form-group d-flex justify-content-between auth-control mb-0">
                        <div class="col-auto d-flex align-items-center p-0">
                            <a href="Permit/ForgotPassword.aspx" class="auth-link d-flex">
                                <span class="svg-icon svg-icon-5 me-1">
                                    <svg aria-hidden="true" focusable="false"
                                        data-prefix="fas" data-icon="lock"
                                        class="svg-inline--fa fa-lock fa-w-14" role="img"
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 448 512">
                                        <path fill="currentColor"
                                            d="M400 224h-24v-72C376 68.2 307.8 0 224 0S72 68.2 72 152v72H48c-26.5 0-48 21.5-48 48v192c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48V272c0-26.5-21.5-48-48-48zm-104 0H152v-72c0-39.7 32.3-72 72-72s72 32.3 72 72v72z">
                                        </path>
                                    </svg>
                                </span>
                                <span>Forgot your password?</span>
                            </a>
                        </div>
                        <div class="col-auto text-right p-0">
                            <asp:Button runat="server" ID="btnLogin" Text="Login" ToolTip="Login to ALPS Portal" CssClass="login login-submit btn btn-primary btn-sm px-3" OnClick="btnLogin_Click" />
                        </div>
                    </div>
                </div>
                <div class="col-auto d-flex align-items-center p-0">
                    <a href="Permit/Registration.aspx" class="auth-link d-flex">
                        <span class="svg-icon svg-icon-5 me-1">
                            <svg aria-hidden="true" focusable="false" data-prefix="fas"
                                data-icon="user-plus"
                                class="svg-inline--fa fa-user-plus fa-w-20" role="img"
                                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512">
                                <path fill="currentColor"
                                    d="M624 208h-64v-64c0-8.8-7.2-16-16-16h-32c-8.8 0-16 7.2-16 16v64h-64c-8.8 0-16 7.2-16 16v32c0 8.8 7.2 16 16 16h64v64c0 8.8 7.2 16 16 16h32c8.8 0 16-7.2 16-16v-64h64c8.8 0 16-7.2 16-16v-32c0-8.8-7.2-16-16-16zm-400 48c70.7 0 128-57.3 128-128S294.7 0 224 0 96 57.3 96 128s57.3 128 128 128zm89.6 32h-16.7c-22.2 10.2-46.9 16-72.9 16s-50.6-5.8-72.9-16h-16.7C60.2 288 0 348.2 0 422.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-41.6c0-74.2-60.2-134.4-134.4-134.4z">
                                </path>
                            </svg>
                        </span>
                        <span>Click here to Register</span>
                    </a>
                </div>
            </div>
        </div>
    </div>

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <script>
        (function () {
            $(function () {
                var password_shown = $('#password-shown');
                var password_hidden = $('#password-hidden');
                var password_input = $('#password-box').find($('input'));

                $(password_hidden).click(function (e) { 
                    e.preventDefault();
                    $(password_hidden).hide();
                    $(password_shown).show();

                    // show passowrd text
                    $(password_input).attr('type', 'text');
                });
                $(password_shown).click(function (e) { 
                    e.preventDefault();
                    $(password_shown).hide();
                    $(password_hidden).show();

                    // hide passowrd text
                    $(password_input).attr('type', 'password');
                });
            });
        })();
    </script>
</asp:Content>


