<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetupNotify.aspx.cs" MasterPageFile="~/Default.Master" Inherits="PresentationLayer.Permit.SetupNotify" %>

<%@ MasterType VirtualPath="~/Default_admin.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upRegister" runat="server">
            <ContentTemplate>
                <!--begin::Toolbar-->
                <div class="toolbar" id="kt_toolbar">
                    <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
                        <!--begin::Info-->
                        <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                            <!--begin::Title-->
                            <h1 class="text-dark fw-bolder my-1 fs-2">
                                Notice
                            </h1>
                            <!--end::Title-->
                            <!--begin::Breadcrumb-->
                            <ul class="breadcrumb fw-bold fs-base my-1">
                                <li class="breadcrumb-item text-breadcrumbs">
                                    <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
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
                                    <div class="card-body d-flex justify-content-between flex-column">

                                        <fieldset runat="server" id="fs1" visible="false">
                                            <div class="form-group row mx-0 mb-3 align-items-sm-center">
                                                <label class="col-auto ps-0 label-100px">Subject:</label>
                                                <asp:Label CssClass="form-control col-sm-12" runat="server"
                                                    ID="txtTitle1"></asp:Label>
                                            </div>
                                            <div class="form-group row mx-0 mb-3 align-items-sm-center">
                                                <label class="col-auto ps-0 label-100px">Description:</label>
                                                <asp:Label CssClass="form-control col-sm-12" runat="server"
                                                    ID="txtDesc1">
                                                </asp:Label>
                                            </div>
                                            <div class="form-group row mx-0 mb-3 align-items-sm-center">
                                                <label class="col-auto ps-0 label-100px">Upload Document:</label>
                                                <asp:LinkButton CssClass="col-sm-12" runat="server" ID="lnkEDoc1"
                                                    CausesValidation="false"
                                                    OnClientClick="window.document.forms[0].target='_blank';"
                                                    OnClick="lnkEDoc1_Click"></asp:LinkButton>
                                            </div>
                                        </fieldset>


                                        <table id="tble1" runat="server" visible="false" style="width: 100%;">
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                            </tr>
                                        </table>

                                        <fieldset runat="server" id="fs2" visible="false">

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center">
                                                <label class="col-auto ps-0 label-100px">Subject:</label>
                                                <asp:Label CssClass="form-control col-sm-12" runat="server"
                                                    ID="txtTitle2">
                                                </asp:Label>
                                            </div>
                                            <div class="form-group row mx-0 mb-3 align-items-sm-center">
                                                <label class="col-auto ps-0 label-100px">Description:</label>
                                                <asp:Label CssClass="form-control col-sm-12" runat="server"
                                                    ID="txtDesc2">
                                                </asp:Label>
                                            </div>

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center">
                                                <label class="col-auto ps-0 label-100px">Upload Document:</label>
                                                <asp:LinkButton CssClass="col-sm-12" runat="server" ID="lnkEDoc2"
                                                    CausesValidation="false"
                                                    OnClientClick="window.document.forms[0].target='_blank';"
                                                    OnClick="lnkEDoc2_Click"></asp:LinkButton>
                                            </div>
                                        </fieldset>

                                        <table id="tble2" runat="server" visible="false" style="width: 100%;">
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                            </tr>
                                        </table>

                                        <fieldset runat="server" id="fs3" visible="false">

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center">
                                                <label class="col-auto ps-0 label-100px">Subject:</label>
                                                <asp:Label CssClass="form-control col-sm-12" runat="server"
                                                    ID="txtTitle3">
                                                </asp:Label>
                                            </div>

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center">
                                                <label class="col-auto ps-0 label-100px">Description:</label>
                                                <asp:Label CssClass="form-control col-sm-12" runat="server"
                                                    ID="txtDesc3"></asp:Label>
                                            </div>

                                            <div class="form-group row mx-0 mb-3 align-items-sm-center">
                                                <label class="col-auto ps-0 label-100px">Upload Document:</label>
                                                <asp:LinkButton CssClass="col-sm-12" runat="server" ID="lnkEDoc3"
                                                    CausesValidation="false"
                                                    OnClientClick="window.document.forms[0].target='_blank';"
                                                    OnClick="lnkEDoc3_Click"></asp:LinkButton>
                                            </div>

                                        </fieldset>

                                        <table id="tble3" runat="server" visible="false" style="width: 100%;">
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                            </tr>
                                        </table>

                                        <fieldset runat="server" id="fs4" visible="false">

                                            <div>
                                                <label>Subject:</label>
                                                <asp:Label runat="server" ID="txtTitile4"></asp:Label>
                                            </div>

                                            <div>
                                                <label>Description:</label>
                                                <asp:Label runat="server" ID="txtDesc4">
                                                </asp:Label>
                                            </div>
                                           
                                                <div>
                                                    <label>Upload Document:</label>

                                                </div>
                                                <td style="width: 60%;">
                                                    <asp:LinkButton runat="server" ID="lnkEDoc4"
                                                        CausesValidation="false"
                                                        OnClientClick="window.document.forms[0].target='_blank';"
                                                        OnClick="lnkEDoc4_Click"></asp:LinkButton>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td colspan="2" style="width: 100%; height: 10px;">
                                                </td>
                                            </tr>
                                            </table>
                                        </fieldset>
                                        <table id="tble4" runat="server" visible="false" style="width: 100%;">
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                            </tr>
                                        </table>
                                        <fieldset runat="server" id="fs5" visible="false">
                                            <table style="width: 100%;">
                                                <tr>
                                                    <div>
                                                        <label>Subject:</label>

                                                    </div>
                                                    <td style="width: 60%;">
                                                        <asp:Label runat="server" ID="txtTitle5">
                                                        </asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <div>
                                                        <label>Description:</label>

                                                    </div>
                                                    <td style="width: 60%;">
                                                        <asp:Label runat="server" ID="txtDesc5">
                                                        </asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <div>
                                                        <label>Upload
                                                            Document:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    </div>
                                                    <td style="width: 60%;">
                                                        <asp:LinkButton runat="server" ID="lnkEDoc5"
                                                            CausesValidation="false"
                                                            OnClientClick="window.document.forms[0].target='_blank';"
                                                            OnClick="lnkEDoc5_Click"></asp:LinkButton>
                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                    </td>
                                                </tr>
                                            </table>
                                        </fieldset>
                                        <table id="tble5" runat="server" visible="false" style="width: 100%;">
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                            </tr>
                                        </table>
                                        <fieldset runat="server" id="fs6" visible="false">
                                            <table style="width: 100%;">
                                                <tr>
                                                    <div>
                                                        <label>Subject:</label>

                                                    </div>
                                                    <td style="width: 60%;">

                                                        <asp:Label runat="server" ID="txtTitle6">
                                                        </asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <div>
                                                        <label>Description:</label>

                                                    </div>
                                                    <td style="width: 60%;">
                                                        <asp:Label runat="server" ID="txtDesc6">
                                                        </asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <div>
                                                        <label>Upload
                                                            Document:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    </div>
                                                    <td style="width: 60%;">
                                                        <asp:LinkButton runat="server" ID="lnkEDoc6"
                                                            CausesValidation="false"
                                                            OnClientClick="window.document.forms[0].target='_blank';"
                                                            OnClick="lnkEDoc6_Click"></asp:LinkButton>
                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                    </td>
                                                </tr>
                                            </table>
                                        </fieldset>
                                        <table id="tble6" runat="server" visible="false" style="width: 100%;">
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                            </tr>
                                        </table>
                                        <fieldset runat="server" id="fs7" visible="false">
                                            <table style="width: 100%;">
                                                <tr>
                                                    <div>
                                                        <label>Subject:</label>

                                                    </div>
                                                    <td style="width: 60%;">
                                                        <asp:Label runat="server" ID="txtTitle7">
                                                        </asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <div>
                                                        <label>Description:</label>

                                                    </div>
                                                    <td style="width: 60%;">
                                                        <asp:Label runat="server" ID="txtDesc7">
                                                        </asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <div>
                                                        <label>Upload
                                                            Document:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    </div>
                                                    <td style="width: 60%;">
                                                        <asp:LinkButton runat="server" ID="lnkEDoc7"
                                                            CausesValidation="false"
                                                            OnClientClick="window.document.forms[0].target='_blank';"
                                                            OnClick="lnkEDoc7_Click"></asp:LinkButton>
                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                    </td>
                                                </tr>
                                            </table>
                                        </fieldset>
                                        <table id="tble7" runat="server" visible="false" style="width: 100%;">
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                            </tr>
                                        </table>
                                        <fieldset runat="server" id="fs8" visible="false">
                                            <table style="width: 100%;">
                                                <tr>
                                                    <div>
                                                        <label>Subject:</label>

                                                    </div>
                                                    <td style="width: 60%;">
                                                        <asp:Label runat="server" ID="txtTitle8">
                                                        </asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <div>
                                                        <label>Description:</label>

                                                    </div>
                                                    <td style="width: 60%;">
                                                        <asp:Label runat="server" ID="txtDesc8">
                                                        </asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <div>
                                                        <label>Upload
                                                            Document:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    </div>
                                                    <td style="width: 60%;">
                                                        <asp:LinkButton runat="server" ID="lnkEDoc8"
                                                            CausesValidation="false"
                                                            OnClientClick="window.document.forms[0].target='_blank';"
                                                            OnClick="lnkEDoc8_Click"></asp:LinkButton>
                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                    </td>
                                                </tr>
                                            </table>
                                        </fieldset>
                                        <table id="tble8" runat="server" visible="false" style="width: 100%;">
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                            </tr>
                                        </table>
                                        <fieldset runat="server" id="fs9" visible="false">
                                            <table style="width: 100%;">
                                                <tr>
                                                    <div>
                                                        <label>Subject:</label>

                                                    </div>
                                                    <td style="width: 60%;">
                                                        <asp:Label runat="server" ID="txtTitle9">
                                                        </asp:Label>
                                                    </td>
                                                </tr>
                                                <td colspan="2" style="width: 100%; height: 10px;"></td>
                                                <tr>
                                                    <div>
                                                        <label>Description:</label>

                                                    </div>
                                                    <td style="width: 60%;">
                                                        <asp:Label runat="server" ID="txtDesc9">
                                                        </asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <div>
                                                        <label>Upload
                                                            Document:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    </div>
                                                    <td style="width: 60%;">
                                                        <asp:LinkButton runat="server" ID="lnkEDoc9"
                                                            CausesValidation="false"
                                                            OnClientClick="window.document.forms[0].target='_blank';"
                                                            OnClick="lnkEDoc9_Click"></asp:LinkButton>
                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                    </td>
                                                </tr>
                                            </table>
                                        </fieldset>
                                        <table id="tble9" runat="server" visible="false" style="width: 100%;">
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                            </tr>
                                        </table>
                                        <fieldset runat="server" id="fs10" visible="false">
                                            <table style="width: 100%;">
                                                <tr>
                                                    <div>
                                                        <label>Subject:</label>

                                                    </div>
                                                    <td style="width: 60%;">
                                                        <asp:Label runat="server" ID="txtTitle10">
                                                        </asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <div>
                                                        <label>Description:</label>

                                                    </div>
                                                    <td style="width: 60%;">
                                                        <asp:Label runat="server" ID="txtDesc10">
                                                        </asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <div>
                                                        <label>Upload
                                                            Document:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    </div>
                                                    <td style="width: 60%;">
                                                        <asp:LinkButton runat="server" ID="lnkEDoc10"
                                                            CausesValidation="false"
                                                            OnClientClick="window.document.forms[0].target='_blank';"
                                                            OnClick="lnkEDoc10_Click"></asp:LinkButton>
                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="width: 100%; height: 10px;">
                                                    </td>
                                                </tr>
                                            </table>
                                        </fieldset>
                                        <table id="tble10" runat="server" visible="false" style="width: 100%;">
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                            </tr>
                                        </table>
                                        </fieldset>
                                        <fieldset id="fsR" runat="server">
                                            <legend>
                                                <asp:Label runat="server" ID="lblInbox" CssClass="hd1">View
                                                    Return Applications</asp:Label>
                                            </legend>
                                            <table style="width: 100%;">
                                                <tr>
                                                    <td style="width: 100%; height: 20px;"></td>
                                                </tr>
                                            </table>
                                            <table style="width: 100%;">
                                                <tr>
                                                    <td style="width: 3%;"></td>
                                                    <td style="width: 94%; text-align: center">
                                                        <asp:GridView ID="gvPermit"
                                                            Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                                            runat="server" AutoGenerateColumns="false" Width="100%"
                                                            AlternatingRowStyle-CssClass="AlternateItemStyle"
                                                            HeaderStyle-CssClass="HeaderDatagrid" PageSize="10"
                                                            AllowPaging="false">
                                                            <RowStyle HorizontalAlign="Left"
                                                                CssClass="FirstItemStyle" />
                                                            <PagerStyle CssClass="gridViewPager" />
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="Application No">
                                                                    <ItemTemplate>
                                                                        <asp:LinkButton runat="server" ID="lnkView"
                                                                            Text='<%#Eval("Permit_Application_No")%>'
                                                                            OnClick="lnkView_Click">
                                                                        </asp:LinkButton>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="ID" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" ID="lblID"
                                                                            Text='<%#Eval("Application_No") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>

                                                                <asp:BoundField DataField="C_Name"
                                                                    HeaderText="Cargo Name" />
                                                                <asp:BoundField DataField="Route_From"
                                                                    HeaderText="Route:From" />
                                                                <asp:BoundField DataField="Route_To"
                                                                    HeaderText="Route:To" />
                                                                <asp:BoundField DataField="Posted_Date"
                                                                    DataFormatString="{0:dd/MM/yyyy hh:mm:ss}"
                                                                    HeaderText="Application Date and Time" />
                                                                <asp:BoundField DataField="Status"
                                                                    HeaderText="Status" />

                                                            </Columns>
                                                        </asp:GridView>

                                                    </td>
                                                    <td style="width: 3%;"></td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                </tr>
                                            </table>
                                        </fieldset>
                                        <fieldset id="fsA" runat="server">
                                            <legend>
                                                <asp:Label runat="server" ID="Label1" CssClass="hd1">View
                                                    Approved for Payment Applications</asp:Label>
                                            </legend>
                                            <table style="width: 100%;">
                                                <tr>
                                                    <td style="width: 100%; height: 20px;"></td>
                                                </tr>
                                            </table>
                                            <table style="width: 100%;">
                                                <tr>
                                                    <td style="width: 3%;"></td>
                                                    <td style="width: 94%; text-align: center">
                                                        <asp:GridView ID="gvPermit1"
                                                            Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                                            runat="server" AutoGenerateColumns="false" Width="100%"
                                                            AlternatingRowStyle-CssClass="AlternateItemStyle"
                                                            HeaderStyle-CssClass="HeaderDatagrid" PageSize="10"
                                                            AllowPaging="false">
                                                            <RowStyle HorizontalAlign="Left"
                                                                CssClass="FirstItemStyle" />
                                                            <PagerStyle CssClass="gridViewPager" />
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="Application No">
                                                                    <ItemTemplate>
                                                                        <asp:LinkButton runat="server" ID="lnkView1"
                                                                            Text='<%#Eval("Permit_Application_No")%>'
                                                                            OnClick="lnkView1_Click">
                                                                        </asp:LinkButton>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="ID" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" ID="lblID1"
                                                                            Text='<%#Eval("Application_No") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>

                                                                <asp:BoundField DataField="C_Name"
                                                                    HeaderText="Cargo Name" />
                                                                <asp:BoundField DataField="Route_From"
                                                                    HeaderText="Route:From" />
                                                                <asp:BoundField DataField="Route_To"
                                                                    HeaderText="Route:To" />
                                                                <asp:BoundField DataField="Posted_Date"
                                                                    DataFormatString="{0:dd/MM/yyyy hh:mm:ss}"
                                                                    HeaderText="Application Date and Time" />
                                                                <asp:BoundField DataField="Status"
                                                                    HeaderText="Status" />

                                                            </Columns>
                                                        </asp:GridView>

                                                    </td>
                                                    <td style="width: 3%;"></td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                </tr>
                                            </table>
                                        </fieldset>
                                        <fieldset id="fsI" runat="server">
                                            <legend>
                                                <asp:Label runat="server" ID="Label2" CssClass="hd1">View
                                                    Issued Permits</asp:Label>
                                            </legend>
                                            <table style="width: 100%;">
                                                <tr>
                                                    <td style="width: 100%; height: 20px;"></td>
                                                </tr>
                                            </table>
                                            <table style="width: 100%;">
                                                <tr>
                                                    <td style="width: 3%;"></td>
                                                    <td style="width: 94%; text-align: center">
                                                        <asp:GridView ID="gvPermit2"
                                                            Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                                            runat="server" AutoGenerateColumns="false" Width="100%"
                                                            AlternatingRowStyle-CssClass="AlternateItemStyle"
                                                            HeaderStyle-CssClass="HeaderDatagrid" PageSize="10"
                                                            AllowPaging="false">
                                                            <RowStyle HorizontalAlign="Left"
                                                                CssClass="FirstItemStyle" />
                                                            <PagerStyle CssClass="gridViewPager" />
                                                            <Columns>
                                                                <asp:TemplateField HeaderText="Application No">
                                                                    <ItemTemplate>
                                                                        <asp:LinkButton runat="server" ID="lnkView2"
                                                                            Text='<%#Eval("Permit_Application_No")%>'
                                                                            OnClick="lnkView2_Click">
                                                                        </asp:LinkButton>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="ID" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" ID="lblID2"
                                                                            Text='<%#Eval("Application_No") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>

                                                                <asp:BoundField DataField="C_Name"
                                                                    HeaderText="Cargo Name" />
                                                                <asp:BoundField DataField="Route_From"
                                                                    HeaderText="Route:From" />
                                                                <asp:BoundField DataField="Route_To"
                                                                    HeaderText="Route:To" />
                                                                <asp:BoundField DataField="Posted_Date"
                                                                    DataFormatString="{0:dd/MM/yyyy hh:mm:ss}"
                                                                    HeaderText="Application Date and Time" />
                                                                <asp:BoundField DataField="Status"
                                                                    HeaderText="Status" />

                                                            </Columns>
                                                        </asp:GridView>

                                                    </td>
                                                    <td style="width: 3%;"></td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                </tr>
                                            </table>
                                        </fieldset>

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