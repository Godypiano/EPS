<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddVehicleHW.aspx.cs"
    MasterPageFile="~/Default_admin.Master"
    Inherits="PresentationLayer.Admin.AdddVehicleHW" %>

<%@ MasterType
    VirtualPath="~/Default_admin.master" %>
<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">
    <div>
        <asp:UpdatePanel ID="upRegister" runat="server">
            <ContentTemplate>
                <!--begin::Toolbar-->
                <div class="toolbar" id="kt_toolbar">
                    <div
                        class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
                        <!--begin::Info-->
                        <div
                            class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                            <!--begin::Title-->
                            <h1 class="text-dark fw-bolder my-1 fs-2">Add Permit Vehicle Length
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
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a
                                        href="PermitVehiclesHW.aspx"
                                        class="text-breadcrumbs text-hover-primary">Permit Vehicles Length</a>
                                </li>
                                <li class="breadcrumb-item text-dark">Add Permit Vehicle Length
                                </li>
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
                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <asp:Label
                                                CssClass="col-auto ps-0 label-200px"
                                                runat="server"
                                                ID="lblCargo">Type of Vehicle(Truck)<span class="red">*</span>
                                            </asp:Label>
                                            <asp:DropDownList
                                                CssClass="form-control col-md-7 col-lg-6"
                                                runat="server"
                                                ID="ddlCargo">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator
                                                runat="server"
                                                ID="rfvCargo"
                                                Display="Dynamic"
                                                ControlToValidate="ddlCargo"
                                                ErrorMessage="Please select Cargo Type"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label class="col-auto ps-0 label-200px">
                                                Vehicle Height From (Ex:11.55)</label>

                                                <div class="input-group col-md-7 col-lg-6 px-0" >
                                                    <asp:TextBox CssClass="form-control" ID="txtVH" MaxLength="5" runat="server"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                      <span class="input-group-text">M</span>
                                                    </div>
                                                  </div>

                                            <asp:RequiredFieldValidator
                                                runat="server"
                                                ID="rfvVH"
                                                ControlToValidate="txtVH"
                                                Display="Dynamic"
                                                ErrorMessage="Please enter height"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator
                                                runat="server"
                                                ID="revVH"
                                                ValidationExpression="^(?:\d{1,2})?(?:\.\d{1,2})?$"
                                                ControlToValidate="txtVH"
                                                Display="Dynamic"
                                                ErrorMessage="Please enter valid height">
                                            </asp:RegularExpressionValidator>
                                        </div>
                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label class="col-auto ps-0 label-200px">Vehicle Width To (Ex:11.55)</label>

                                            <div class="input-group col-md-7 col-lg-6 px-0" >
                                                <asp:TextBox CssClass="form-control" ID="txtVW" MaxLength="5" runat="server"></asp:TextBox>
                                                <div class="input-group-append rounded-left-0">
                                                  <span class="input-group-text">M</span>
                                                </div>
                                              </div>

                                            <asp:RequiredFieldValidator
                                                runat="server"
                                                ID="rfvVW"
                                                Display="Dynamic"
                                                ControlToValidate="txtVW"
                                                ErrorMessage="Please enter width"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator
                                                runat="server"
                                                ID="revVW"
                                                ValidationExpression="^(?:\d{1,2})?(?:\.\d{1,2})?$"
                                                ControlToValidate="txtVW"
                                                Display="Dynamic"
                                                ErrorMessage="Please enter valid width">
                                            </asp:RegularExpressionValidator>
                                        </div>

                                        <div class="form-group col-12 text-end mb-3">
                                            <asp:Button
                                                CssClass="btn btn-primary btn-sm"
                                                ID="btnSubmit"
                                                runat="server"
                                                Text="Submit"
                                                OnClick="btnSubmit_Click" />
                                            <asp:Button
                                                CssClass="btn btn-primary btn-sm"
                                                runat="server"
                                                ID="btnCancel"
                                                Text="Cancel"
                                                OnClick="btnCancel_Click" />
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
