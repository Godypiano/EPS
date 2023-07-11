<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetupWeight.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.SetupWeight" %>

<%@ MasterType VirtualPath="~/Default_custom.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
                <asp:UpdatePanel ID="upRegister" runat="server">
            <ContentTemplate>


                 <!--begin::Toolbar-->
                 <div class="toolbar mb-5" id="kt_toolbar">
                    <div
                        class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
                        <!--begin::Info-->
                        <div
                            class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                            <!--begin::Title-->
                            <h1 class="text-dark fw-bolder my-1 fs-2">
                                <asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label>
                                Category By Weight
                <small class="text-muted fs-6 fw-normal ms-1"></small>
                            </h1>
                            <!--end::Title-->
                            <!--begin::Breadcrumb-->
                            <ul class="breadcrumb fw-bold fs-base my-1">
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a
                                        href="Dashboard.aspx"
                                        class="text-breadcrumbs text-hover-primary">Home</a>
                                </li>
                                <li class="breadcrumb-item text-dark">Category By Weight</li>
                            </ul>
                            <!--end::Breadcrumb-->
                        </div>
                        <!--end::Info-->
                    </div>
                </div>
                <!--end::Toolbar-->

                <!--begin::Post-->
                <div class="post fs-6 d-flex flex-column-fluid" id="kt_post">
                    <!--begin::Container-->
                    <div class="container px-3">
                        <!--begin::Row-->
                        <div class="row g-xl-8">
                            <!--begin::Col-->
                            <div class="col-xl-12">
                                <!--begin::Chart Widget 1-->
                                <div class="card card-xl-stretch mb-5 mb-xl-8">
                                    <!--begin::Body-->
                                    <div
                                        class="card-body d-flex justify-content-between flex-column">

                                        <div class="row">
                                            <div class="form-group row mx-0 mb-3 align-items-md-center col-md-10 col-lg-8 col-xl-6">
                                                <label class="col-auto ps-0 label-135px">Mass Weight</label>
                                                <asp:TextBox CssClass="form-control col-sm-10 col-md-9 col-lg-12" runat="server" ID="txtMass" MaxLength="100"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvMass" CssClass="red" ControlToValidate="txtMass" Display="Dynamic" ErrorMessage="Please enter mass name"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="revnum" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9-&' ]*$" ControlToValidate="txtMass"
                                                     ErrorMessage="Accepts characters, numbers, hypens, and(&),apostrophe('), and spaces only" CssClass="red">
                                                </asp:RegularExpressionValidator>
                                            </div>
                                            <div class="form-group row mx-0 mb-3 align-items-md-center col-md-10 col-lg-8 col-xl-6">
                                                <label class="col-auto ps-0 label-135px">Weight From</label>

                                                <div class="input-group col-sm-10 col-md-9 col-lg-12 px-0">
                                                    <asp:TextBox CssClass="form-control " runat="server" ID="txtWFrom" MaxLength="5"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <span class="input-group-text">Ton</span>
                                                    </div>
                                                </div>
                                                
                                                <asp:RequiredFieldValidator runat="server" ID="rfvWFrom" CssClass="red" ControlToValidate="txtWFrom" Display="Dynamic" ErrorMessage="Please enter width"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="revWFrom" CssClass="red" ValidationExpression="^[0-9]{1,12}$"
                                                    ControlToValidate="txtWFrom" Display="Dynamic" ErrorMessage="Please enter valid weight"> </asp:RegularExpressionValidator>
                                            </div>
                                            <div class="form-group row mx-0 mb-3 align-items-md-center col-md-10 col-lg-8 col-xl-6">
                                                <label class="col-auto ps-0 label-135px">Weight To</label>
                                                <div class="input-group col-sm-10 col-md-9 col-lg-12 px-0">
                                                    <asp:TextBox CssClass="form-control " runat="server" ID="txtWTo" MaxLength="5"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <span class="input-group-text">Ton</span>
                                                    </div>
                                                </div>
                                                
                                                <asp:RequiredFieldValidator runat="server" ID="rfvWTo" CssClass="red" Display="Dynamic" ControlToValidate="txtWTo" ErrorMessage="Please enter width"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="revWTo" CssClass="red" ValidationExpression="^[0-9]{1,12}$"
                                                    ControlToValidate="txtWTo" Display="Dynamic" ErrorMessage="Please enter valid weight"> </asp:RegularExpressionValidator>
                                            </div>

                                            <div class="form-group row mx-0 mb-3 align-items-md-center col-md-10 col-lg-8 col-xl-6">
                                                <label class="col-auto ps-0 label-135px">Upload Document:</label>
                                                <asp:RadioButtonList CssClass="col-auto col-md-12" RepeatLayout="Flow" runat="server" RepeatDirection="Horizontal" ID="rblPR">
                                                    <asp:ListItem class="me-4 label-ml-4" Value="yes">Required</asp:ListItem>
                                                    <asp:ListItem class="label-ml-4" Value="no">Not Required</asp:ListItem>
                                                </asp:RadioButtonList>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvPR" CssClass="red" ControlToValidate="rblPR" Display="Dynamic" ErrorMessage="Please select document required"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-group mb-3 d-flex justify-content-end">
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnSubmit" runat="server" Text="Create" OnClick="btnSubmit_Click" />
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnDelete" runat="server" CausesValidation="false" OnClientClick="return confirm('Are you sure want to delete vehicle?');" Text="Delete" OnClick="btnDelete_Click" />
                                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap" runat="server" ID="btnCancel" CausesValidation="false" Text="Cancel" OnClick="btnCancel_Click" />
                                        </div>

                                        <div class="table-responsive mb-1">
                                            <asp:GridView ID="gvDept" CssClass="table table-row-bordered table-row-gray-300 border-0 gy-2 mb-1"
                                                runat="server" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                                HeaderStyle-CssClass="HeaderDatagrid" PageSize="10" OnPageIndexChanging="gvDept_PageIndexChanging" AllowPaging="true">
                                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                                <PagerStyle CssClass="gridViewPager" />
                                                <Columns>
                                                    <asp:TemplateField ItemStyle-Width="5%">
                                                        <ItemTemplate>
                                                            <asp:RadioButton ID="rbDept" runat="server" AutoPostBack="true"
                                                                OnCheckedChanged="rbDept_CheckedChanged" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="SNO" HeaderText="Department ID" ShowHeader="false">
                                                        <ItemStyle CssClass="hide" />
                                                        <HeaderStyle CssClass="hide" />
                                                    </asp:BoundField>
                                                    <asp:TemplateField HeaderText="No">
                                                        <ItemTemplate>
                                                            <%# Container.DataItemIndex + 1 %>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="MWeight" HeaderText="Mass Weight" />
                                                    <asp:BoundField DataField="Weight_From" HeaderText="Weight From" DataFormatString="{0:n0}" />
                                                    <asp:BoundField DataField="Weight_To" HeaderText="Weight To" DataFormatString="{0:n0}" />
                                                    <asp:BoundField DataField="Doc1_Required" HeaderText="Document Required" />
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


             
                 </ContentTemplate>
        </asp:UpdatePanel>      
    </div>
</asp:Content>
