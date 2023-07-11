<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PermitSchedule.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.PermitSchedule" %>
<%@ MasterType VirtualPath="~/Default_custom.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upAssignUser" runat="server">
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
                Add Schedule
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
                <asp:Label runat="server" ID="lblview"></asp:Label>
                    </li>
                <li class="breadcrumb-item text-breadcrumbs">
                <asp:Label runat="server" ID="lblasch"></asp:Label>
                </li>
                
                <li class="breadcrumb-item text-dark">Inbox</li>
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
                           
                            <div class="form-group row mx-0 mb-3 align-items-md-center col-md-9 col-lg-9 col-xl-6">
                                <label class="col-auto ps-0 label-165px">Travel Date</label>
                                   <div class="input-group col-md-12 col-sm-12 px-0">
                                            <asp:TextBox
                                            CssClass="form-control"
                                            ID="txtFDate"
                                            runat="server"
                                            ></asp:TextBox>
                                            <div class="input-group-append rounded-left-0">
                                            <asp:ImageButton
                                                CssClass="input-group-text"
                                                runat="server"
                                                CausesValidation="false"
                                                ID="iPopup"
                                                ImageUrl="/images/calendar.png"
                                            />
                                            </div>
                                        </div>
                                <ajaxToolkit:CalendarExtender ID="Calendar1" runat="server" PopupButtonID="iPopup"
                                    TargetControlID="txtFDate" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>
                                <asp:RequiredFieldValidator runat="server" ID="rfvFDate" CssClass="red" ControlToValidate="txtFDate" Display="Dynamic" ErrorMessage="Please select travel date"></asp:RequiredFieldValidator>
                           </div>
                           <div class="form-group row mx-0 mb-3 align-items-md-center col-md-9 col-lg-9 col-xl-6">
                               <label class="col-auto ps-0 label-165px"> Travel From</label>
                               <asp:TextBox  CssClass="form-control col-sm-12 col-md-12" runat="server" ID="txtFrom" MaxLength="100">   
                    </asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvFrom" CssClass="red" ControlToValidate="txtFrom" Display="Dynamic" ErrorMessage="Please enter from name"></asp:RequiredFieldValidator>
                           </div>
                           <div class="form-group row mx-0 mb-3 align-items-md-center col-md-9 col-lg-9 col-xl-6">
                               <label class="col-auto ps-0 label-165px">Travel To</label>
                               <asp:TextBox CssClass="form-control col-sm-12 col-md-12" runat="server" ID="txtTo" MaxLength="100">   
                            </asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="rfvTo" CssClass="red" ControlToValidate="txtTo" Display="Dynamic" ErrorMessage="Please enter to name"></asp:RequiredFieldValidator>
                           </div>
                       
                               <div class="form-group row mx-0 mb-3 align-items-md-center col-md-9 col-lg-9 col-xl-6">
                                   <label class="col-auto ps-0 label-165px">Travel Time From (24 hours, Ex: 12:30)</label><asp:TextBox CssClass="form-control col-sm-12 col-md-12" runat="server" ID="txtTFrom" MaxLength="5">   
                                </asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="rfvTFrom" CssClass="red" ControlToValidate="txtTFrom" Display="Dynamic" ErrorMessage="Please enter from travel time"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator runat="server" ID="revTFrom" Display="Dynamic" CssClass="red"
                                 ValidationExpression="^([0-1]?[0-9]|[2][0-3]):([0-5][0-9])$" ControlToValidate="txtTFrom"
                                     ErrorMessage="Please enter valid time"></asp:RegularExpressionValidator>
                               </div>
                           
                           <div class="form-group row mx-0 mb-3 align-items-md-center col-md-9 col-lg-9 col-xl-6">
                               <label class="col-auto ps-0 label-165px">Travel Time To (24 hours, Ex: 18:30)</label>
                               <asp:TextBox CssClass="form-control col-sm-12 col-md-12"  runat="server" ID="txtTTo" MaxLength="5">   
                            </asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="rfvTTo" CssClass="red" ControlToValidate="txtTTo" Display="Dynamic" ErrorMessage="Please enter to travel time"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator runat="server" ID="revTTo" Display="Dynamic" CssClass="red"
                             ValidationExpression="^([0-1]?[0-9]|[2][0-3]):([0-5][0-9])$" ControlToValidate="txtTTo"
                                 ErrorMessage="Please enter valid time"></asp:RegularExpressionValidator>
                           </div>
                           <div class="form-group row mx-0 mb-3 align-items-md-center col-md-9 col-lg-9 col-xl-6">
                               <label class="col-auto ps-0 label-165px">Distance KM</label>
                               <asp:TextBox  CssClass="form-control col-sm-12 col-md-12" runat="server" ID="txtDistance" MaxLength="5">   
                            </asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="rfvDistance" CssClass="red" ControlToValidate="txtDistance" Display="Dynamic" ErrorMessage="Please enter distance"></asp:RequiredFieldValidator>
                           </div>
                           <div class="form-group row mx-0 mb-3 align-items-md-center col-md-9 col-lg-9 col-xl-6">
                               <label class="col-auto ps-0 label-165px">Parking Place</label>
                               <asp:TextBox CssClass="form-control col-sm-12 col-md-12"  runat="server" ID="txtPlace" MaxLength="100">   
                            </asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="rfvPlace" CssClass="red" ControlToValidate="txtPlace" Display="Dynamic" ErrorMessage="Please enter Parking Place"></asp:RequiredFieldValidator>
                           </div>
                         
                        </div>

                        <div class="form-group mb-3 d-flex justify-content-end">
                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnReg" runat="server" Text="Schedule" OnClick="btnReg_Click" />
                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap" runat="server" ID="btnCancel" Text="Cancel" />
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

