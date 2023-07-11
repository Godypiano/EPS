<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetupNotify.aspx.cs" MasterPageFile="~/Default_admin.Master" Inherits="PresentationLayer.Admin.SetupNotify" %>

<%@ MasterType VirtualPath="~/Default_admin.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
            <h1 class="text-dark fw-bolder my-1 fs-2">Notice
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
                <li class="breadcrumb-item text-dark">Notice</li>
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
                            <div class="form-group row mx-0 mb-3 align-items-md-center col-md-8">
                                <label class="col-auto ps-0">Subject:</label>
                                <asp:TextBox CssClass="form-control col-sm-12" runat="server" ID="txtTitle" MaxLength="150"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="rfvTitle" CssClass="red" Display="Dynamic" ControlToValidate="txtTitle" ErrorMessage="Please enter subject"></asp:RequiredFieldValidator>
                            </div>
                        
                             <div class="form-group row mx-0 mb-3 align-items-md-center col-md-8">
                                <label class="col-auto ps-0">Description:</label>
                                <asp:TextBox CssClass="form-control col-sm-12" runat="server" ID="txtDesc" TextMode="MultiLine" Rows="5" Columns="30"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ID="rfvOver" CssClass="red" Display="Dynamic" ControlToValidate="txtDesc" ErrorMessage="Please enter Description"></asp:RequiredFieldValidator>
                            </div>
                        
                            <div class="form-group row mx-0 mb-3 align-items-md-center col-md-8">
                                <label class="col-auto ps-0">Days:</label>
                                <asp:TextBox CssClass="form-control col-sm-12" runat="server" ID="txtDays" MaxLength="12"></asp:TextBox><br />
                                <asp:RequiredFieldValidator runat="server" ID="rfvFrom" CssClass="red" Display="Dynamic" ControlToValidate="txtDays" ErrorMessage="Please enter days"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator runat="server" ID="revFrom" CssClass="red" ValidationExpression="^[0-9]{1,12}$"
                                    ControlToValidate="txtDays" Display="Dynamic" ErrorMessage="Please enter valid days"> </asp:RegularExpressionValidator>
                            </div>
                    
                            <div class="form-group row mx-0 mb-3 align-items-md-center col-md-8">
                                <label class="col-auto ps-0">Effective Date:</label>

                                <div class="input-group col-md-12 px-0">
                                    <asp:TextBox CssClass="form-control col-sm-12" ID="txtFDate" runat="server"></asp:TextBox>
                                    <div class="input-group-append rounded-left-0">
                                        <asp:ImageButton CssClass="input-group-text" runat="server" CausesValidation="false" ID="iPopup" ImageUrl="/images/calendar.png" />
                                    </div>
                                </div>

                                <ajaxToolkit:CalendarExtender ID="Calendar1" runat="server" PopupButtonID="iPopup"
                                    TargetControlID="txtFDate" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender><br />
                                <asp:RequiredFieldValidator runat="server" ID="rfvFDate" ControlToValidate="txtFDate" Display="Dynamic" CssClass="red" ErrorMessage="Please select effective date"></asp:RequiredFieldValidator>
                                <asp:comparevalidator ID="cmpFDate" runat="server" Display="Dynamic" 
                                  errormessage="The date must be greater than equal to today date" CssClass="red"  valuetocompare="<%# DateTime.Today.ToShortDateString() %>"
                                  controltovalidate="txtFDate" type="date"  Operator="GreaterThanEqual" />
                            </div>
                       
                            <div class="form-group row mx-0 mb-3 align-items-md-center">
                                <label class="col-auto ps-0">Upload Document:</label>
                                <asp:LinkButton runat="server" ID="lnkEDoc1" CausesValidation="false" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkEDoc1_Click"></asp:LinkButton>
                                <asp:FileUpload CssClass="col-auto px-0" runat="server" ID="fuDoc1" ToolTip="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt" />
                                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator9" CssClass="red" 
                                         ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.txt|.TXT|.PNG|.jpeg|.JPEG|.jpg|.JPG|.gif|.GIF|.pdf|.PDF)$"
                                         ControlToValidate="fuDoc1" Display="Dynamic" 
                                         ErrorMessage="Supported file name should not contain Special Characters, Supported file formats are gif,jpg,jpeg,pdf,png,txt"> 
                                    </asp:RegularExpressionValidator>
                                    <asp:CustomValidator ID="cuDoc1" runat="server" ControlToValidate="fuDoc1" CssClass="red"
                                        ErrorMessage="File size should not be greater than 20 MB." Display="Dynamic" 
                                        OnServerValidate="cvDoc1_ServerValidate"></asp:CustomValidator>
                            </div>
                        </div>
                        <div class="form-group mb-3 d-flex justify-content-end">
                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnSubmit" runat="server" Text="Create" OnClick="btnSubmit_Click" />
                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ID="btnDelete" runat="server" CausesValidation="false" OnClientClick="return confirm('Are you sure want to delete overload gvm fee?');" Text="Delete" OnClick="btnDelete_Click" />
                            <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" runat="server" ID="btnCancel" CausesValidation="false" Text="Cancel" OnClick="btnCancel_Click" />
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
                                            oncheckedchanged="rbDept_CheckedChanged" />    
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Sno" HeaderText="Department ID" ShowHeader="false" >
                                    <ItemStyle CssClass="hide" /><HeaderStyle CssClass="hide"/>
                                </asp:BoundField>
                                <asp:BoundField DataField="Title" HeaderText="Subject" />
                                <asp:BoundField DataField="Descrip" HeaderText="Description" />
                                <asp:BoundField DataField="Days" HeaderText="Days" />
                                <asp:BoundField DataField="Effective_Date" HeaderText="Effective Date" DataFormatString="{0:dd/M/yyyy}" />
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
                    <Triggers>
            <asp:PostBackTrigger ControlID = "btnSubmit" />
                        <asp:PostBackTrigger ControlID = "btnUpdate" />
    </Triggers>
        </asp:UpdatePanel>      
    </div>
</asp:Content>
