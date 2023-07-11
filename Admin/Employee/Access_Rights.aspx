<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Default_custom.Master" CodeBehind="Access_Rights.aspx.cs"
    Inherits="PresentationLayer.Admin.Employee.Access_Rights" %>
    <%@ MasterType VirtualPath="~/Default_custom.master" %>

        <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <script type="text/javascript">
                function Check_Click(objRef) {
                    //Get the Row based on checkbox
                    var row = objRef.parentNode.parentNode;
                    if (objRef.checked) {
                        //If checked change color to Aqua
                        //row.style.backgroundColor = "aqua";
                    } else {
                        //If not checked change back to original color
                        /*if(row.rowIndex % 2 == 0)
                        {
                           //Alternating Row Color
                           row.style.backgroundColor = "#C2D69B";
                        }
                        else
                        {
                           row.style.backgroundColor = "white";
                        }*/
                    }
                    //Get the reference of GridView
                    var GridView = row.parentNode;
                    //Get all input elements in Gridview
                    var inputList = GridView.getElementsByTagName("input");
                    for (var i = 0; i < inputList.length; i++) {
                        //The First element is the Header Checkbox
                        var headerCheckBox = inputList[0];
                        //Based on all or none checkboxes
                        //are checked check/uncheck Header Checkbox
                        var checked = true;
                        if (inputList[i].type == "checkbox" && inputList[i] != headerCheckBox) {
                            if (!inputList[i].checked) {

                                checked = false;

                                break;

                            }

                        }

                    }

                    headerCheckBox.checked = checked;

                }

                function checkAll(objRef) {
                    var GridView = objRef.parentNode.parentNode.parentNode.parentNode;
                    var inputList = GridView.getElementsByTagName("input");
                    //alert(inputList.length);
                    for (var i = 0; i < inputList.length; i++) {
                        //alert("test");
                        //Get the Cell To find out ColumnIndex
                        var row = inputList[i].parentNode.parentNode;
                        if (inputList[i].type == "checkbox" && objRef != inputList[i]) {
                            if (objRef.checked) {
                                //If the header checkbox is checked

                                //check all checkboxes

                                //and highlight all rows

                                //row.style.backgroundColor = "aqua";

                                inputList[i].checked = true;
                            } else {
                                //If the header checkbox is checked
                                //uncheck all checkboxes
                                //and change rowcolor back to original
                                /*if(row.rowIndex % 2 == 0)
                                {
                                   //Alternating Row Color
                                   row.style.backgroundColor = "#C2D69B";
                                }
                                else
                                {
                                   row.style.backgroundColor = "white";
                                }*/
                                inputList[i].checked = false;
                            }
                        }
                    }
                }
            </script>

            <style>
                /*Fixing added to make color black and background-color white*/

                fieldset tbody>tr:first-of-type:hover {
                    background-color: #ffffff !important;
                }

                .CaptionStyle {
                    margin-top: -130px;
                }

                .top {
                    margin-top: -130px;
                }

                .modal-body {
                    /* height: 500px; */
                    overflow-y: scroll;
                    overflow-x: hidden;
                    margin-left: 10px;
                }

                @media (max-width: 48em) {
                    .main .main-content {
                        display: block;
                    }
                }

                li.breadcrumb-item a {
                    display: inline-block;
                    padding: 0;
                }

                #myModal {
                    background-color: rgba(0, 0, 0, 0.6);
                }

                .modal-body::-webkit-scrollbar {
                    width: 14px !important;
                    height: 5px !important;
                }

                .modal-backdrop.show {
                    display: none !important;
                }

                @media (min-width: 48em) {
                    .access-tables>div:first-of-type {
                        padding-right: 7px;
                    }

                    .access-tables>div:first-of-type+div {
                        padding-left: 7px;
                    }

                    .access-tables>div:first-of-type+div+div {
                        padding-right: 7px;
                    }

                    .access-tables>div:last-of-type {
                        padding-left: 7px;
                    }
                }
            </style>
            <style>
                /*! Shilloh 2021 */

                .breadcrumb {
                    list-style: none;
                    display: flex;
                    padding: 4px 16px;
                }

                .breadcrumb-item a,
                .breadcrumb-item a:hover {
                    text-decoration: none;
                }

                .modal {
                    background-color: rgba(0, 0, 0, 0.25);
                }

                .modal-dialog {
                    /* max-width: 400px; */
                    margin-top: 16px;
                    /* padding: 1rem; */
                }

                .modal-content {
                    position: relative;
                    display: -webkit-box;
                    display: -ms-flexbox;
                    display: flex;
                    -webkit-box-orient: vertical;
                    -webkit-box-direction: normal;
                    -ms-flex-direction: column;
                    flex-direction: column;
                    width: 100%;
                    pointer-events: auto;
                    background-color: #fff;
                    background-clip: padding-box;
                    border: 1px solid rgba(0, 0, 0, 0.2);
                    border-radius: 0.3rem;
                    outline: 0;
                }

                .modal-header {
                    display: -webkit-box;
                    display: -ms-flexbox;
                    display: flex;
                    -webkit-box-align: start;
                    -ms-flex-align: start;
                    align-items: flex-start;
                    -webkit-box-pack: justify;
                    -ms-flex-pack: justify;
                    justify-content: space-between;
                    padding: 1rem;
                    border-bottom: 1px solid #e9ecef;
                    border-top-left-radius: 0.3rem;
                    border-top-right-radius: 0.3rem;
                }

                .modal-header .close {
                    padding: 1rem;
                    margin: -1rem -1rem -1rem auto;
                }

                .modal-title {
                    margin: 0;
                    line-height: 1.5;
                }

                .h5,
                h5 {
                    font-size: 0.875rem;
                    margin: 0;
                }

                button.close {
                    padding: 0;
                    background-color: transparent;
                    border: 0;
                    -webkit-appearance: none;
                }

                .close:not(:disabled):not(.disabled) {
                    cursor: pointer;
                }

                .close {
                    float: right;
                    font-size: 1.5rem;
                    font-weight: 700;
                    line-height: 1;
                    color: #000;
                    text-shadow: 0 1px 0 #fff;
                    opacity: 0.5;
                }

                .modal-body {
                    padding: 16px 8px;
                    margin-left: 10px;
                }

                fieldset table tbody th,
                fieldset table[id$="GVActionEvents"] tbody th {
                    text-align: left;
                    padding: 5px;
                }

                fieldset table td,
                fieldset table[id$="GVActionEvents"] td {
                    padding: 3px;
                }

                fieldset table tbody tr:nth-child(even) {
                    background: rgba(204, 204, 204, 0.25);
                }

                fieldset table tbody tr:nth-child(odd) {
                    background: #fff;
                }

                .update-btn-wrapper {
                    margin-top: 1em;
                    text-align: right;
                }

                .modal-open {
                    overflow: hidden;
                }
            </style>


        </asp:Content>
        <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <asp:UpdatePanel ID="upRegister" runat="server">
                <ContentTemplate>

                    <!--begin::Toolbar-->
                    <div class="toolbar" id="kt_toolbar">
                        <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
                            <!--begin::Info-->
                            <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                                <!--begin::Title-->
                                <h1 class="text-dark fw-bolder my-1 fs-2"><asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label>
                                    Access Rights
                                </h1>
                                <!--end::Title-->
                                <!--begin::Breadcrumb-->
                                <ul class="breadcrumb fw-bold fs-base pe-0 ps-0 my-1">
                                    <li class="breadcrumb-item text-breadcrumbs">
                                        <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                                    </li>
                                    <li class="breadcrumb-item text-dark">Access Rights</li>
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
                                            <div class="row access-tables">
                                                <div class="col-xl-6">
                                                    <div class="table table-responsive justify-content-center">
                                                        <h4>
                                                            <asp:Label runat="server" ID="lblRL">Role List</asp:Label>
                                                        </h4>

                                                        <asp:Label ID="lbldes" runat="server"></asp:Label>
                                                        <asp:GridView ID="obGridRoles" runat="server"
                                                            CssClass="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1 display dataTable no-footer"
                                                            AutoGenerateColumns="false"
                                                            HeaderStyle-CssClass=" fw-bold fs-6 text-gray-800 border-bottom border-gray-200 table_header"
                                                            OnRowDataBound="obGridRoles_RowDataBound">
                                                            <Columns>
                                                                <asp:TemplateField ItemStyle-Width="5%"
                                                                    ItemStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:RadioButton ID="rbDept" runat="server"
                                                                            CssClass="form-control-sm"
                                                                            AutoPostBack="true"
                                                                            OnCheckedChanged="rbDept_CheckedChanged" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:BoundField DataField="SNO" HeaderText="Sno"
                                                                    ShowHeader="false">
                                                                    <ItemStyle CssClass="hide" />
                                                                    <HeaderStyle CssClass="hide" />
                                                                </asp:BoundField>

                                                                <asp:BoundField DataField="Desig" HeaderText="Code" />
                                                                <asp:BoundField DataField="Desig_Name"
                                                                    HeaderText="Description:" />
                                                                <asp:BoundField DataField="" HeaderText="Admin"
                                                                    ShowHeader="false">
                                                                    <ItemStyle CssClass="hide" />
                                                                    <HeaderStyle CssClass="hide" />
                                                                </asp:BoundField>


                                                            </Columns>
                                                        </asp:GridView>
                                                    </div>
                                                </div>
                                                <div class="col-xl-6">
                                                    <div class="table table-responsive justify-content-center">
                                                        <h4>
                                                            <asp:Label runat="server" ID="lblML">Module List</asp:Label>
                                                        </h4>


                                                        <asp:GridView ID="GVModule" runat="server"
                                                            CssClass="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1 display dataTable no-footer"
                                                            OnRowDataBound="GVModule_RowDataBound"
                                                            HeaderStyle-CssClass=" fw-bold fs-6 text-gray-800 border-bottom border-gray-200 table_header"
                                                            AutoGenerateColumns="false">
                                                            <Columns>
                                                                <asp:TemplateField ItemStyle-Width="5%"
                                                                    ItemStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:CheckBox ID="chkRowModule"
                                                                            AutoPostBack="true" runat="server"
                                                                            OnCheckedChanged="chkRowModule_CheckedChanged"
                                                                            CssClass="form-control-sm" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="SP Sno" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:LinkButton runat="server" ID="lnkView1"
                                                                            Text='<%#Eval("Sno")%>'></asp:LinkButton>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:BoundField DataField="Sno" HeaderText="Sno"
                                                                    ShowHeader="false">
                                                                    <ItemStyle CssClass="hide" />
                                                                    <HeaderStyle CssClass="hide" />
                                                                </asp:BoundField>
                                                                <asp:BoundField DataField="Code" HeaderText="Code" />
                                                                <asp:BoundField DataField="Name" HeaderText="Name" />
                                                                <asp:BoundField DataField="Module_Status"
                                                                    HeaderText="Module Status" />
                                                                <asp:TemplateField ItemStyle-HorizontalAlign="Center"
                                                                    ItemStyle-VerticalAlign="Middle">
                                                                    <ItemTemplate>
                                                                        <asp:LinkButton Text="Select" ID="lnkSelect"
                                                                            runat="server" CommandName="Select"
                                                                            OnClick="lnkSelect_Click" Visible="false" />

                                                                    </ItemTemplate>
                                                                </asp:TemplateField>


                                                            </Columns>
                                                        </asp:GridView>
                                                    </div>
                                                </div>
                                                <div class="col-xl-6" style="margin-top: 0px;">
                                                    <div class="table table-responsive justify-content-center">
                                                        <h4>
                                                            <asp:Label runat="server" ID="lblUL">Users Lists</asp:Label>
                                                        </h4>

                                                        <asp:GridView runat="server" ID="obGridUsers"
                                                            AutoGenerateColumns="false" AutoPostBackOnSelect="true"
                                                            CssClass="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1 display dataTable no-footer"
                                                            HeaderStyle-CssClass=" fw-bold fs-6 text-gray-800 border-bottom border-gray-200 table_header">

                                                            <Columns>
                                                                <asp:BoundField DataField="Role_Code" HeaderText="Sno"
                                                                    ShowHeader="false">
                                                                    <ItemStyle CssClass="hide" />
                                                                    <HeaderStyle CssClass="hide" />
                                                                </asp:BoundField>
                                                                <asp:BoundField DataField="Email_ID"
                                                                    HeaderText="Email" />
                                                                <asp:BoundField DataField="Full_Name"
                                                                    HeaderText="Full Name" />
                                                            </Columns>

                                                        </asp:GridView>
                                                    </div>
                                                </div>
                                                <div class="form-group col-xl-6"></div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-sm-12 text-center">

                                                    <asp:Button ID="btnClear" runat="server" Visible="false"
                                                        CssClass="btn btn-flexible btn--tab-control" Text="Clear" />
                                                    <asp:Button ID="btnClose" runat="server" Visible="false"
                                                        CssClass="btn btn-flexible btn--tab-control" Text="Close" />

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal-backdrop show d-none"></div>
                    <!--<div class="modal" id="myModal">-->
                    <div class="modal" id="myModal" runat="server" visible="false" style="display: block;">
                        <div class="modal-dialog modal-lg dialog-scrollable ">
                            <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h4 class="modal-title">
                                        <asp:Label runat="server" ID="lblAR1">Access Rights</asp:Label>
                                    </h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body" id="dvPop">
                                    <div class="col-sm-12">

                                        <asp:Label ID="Label1" CssClass="col-sm-2" runat="server" Text="Role:">
                                        </asp:Label>
                                        <asp:Label ID="Label2" CssClass="col-sm-4" runat="server" Text=""
                                            Font-Bold="true"></asp:Label>
                                        <asp:Label ID="Label3" CssClass="col-sm-2" runat="server" Visible="false"
                                            Text="Role Code"></asp:Label>
                                        <asp:Label ID="Label4" CssClass="col-sm-4" runat="server" Visible="false"
                                            Text="" Font-Bold="true"></asp:Label>
                                        <asp:Label ID="Label5" CssClass="col-sm-2" runat="server" Text="Modules:">
                                        </asp:Label>
                                        <asp:Label ID="Label6" CssClass="col-sm-4" runat="server" Text=""
                                            Font-Bold="true"></asp:Label>
                                        <asp:Label ID="Label7" CssClass="col-sm-2" runat="server" Visible="false"
                                            Text="Module Code"></asp:Label>
                                        <asp:Label ID="Label8" CssClass="col-sm-4" runat="server" Text=""
                                            Visible="false" Font-Bold="true"></asp:Label>
                                        <asp:Label ID="Label9" CssClass="col-sm-2" runat="server" Visible="false"
                                            Text="Module Sno"></asp:Label>
                                        <asp:Label ID="Label10" CssClass="col-sm-4" runat="server" Text=""
                                            Visible="false" Font-Bold="true"></asp:Label>
                                        <asp:Label ID="Label11" CssClass="col-sm-2" runat="server" Visible="false"
                                            Text="Activity code"></asp:Label>
                                        <asp:Label ID="Label12" CssClass="col-sm-4" runat="server" Text=""
                                            Visible="false" Font-Bold="true"></asp:Label>
                                        <asp:Label ID="Label13" CssClass="col-sm-2" runat="server" Visible="false"
                                            Text="Role admin"></asp:Label>
                                        <asp:Label ID="Label14" CssClass="col-sm-4" runat="server" Text=""
                                            Visible="false" Font-Bold="true"></asp:Label>
                                        <asp:Label ID="Label15" CssClass="col-sm-2" runat="server" Visible="false"
                                            Text="Role Status"></asp:Label>
                                        <asp:Label ID="Label16" CssClass="col-sm-4" runat="server" Text=""
                                            Visible="false" Font-Bold="true"></asp:Label>
                                        <asp:Label ID="Label17" CssClass="col-sm-2" runat="server" Visible="false"
                                            Text="Module Status"></asp:Label>
                                        <asp:Label ID="Label18" CssClass="col-sm-4" runat="server" Text=""
                                            Visible="false" Font-Bold="true"></asp:Label>



                                    </div>
                                    <div class="form-group row " style="margin-top: 10px;">
                                        <div class="table table-responsive table-sm justify-content-center">

                                            <asp:GridView ID="GVActionEvents" runat="server"
                                                CssClass="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1 display dataTable no-footer"
                                                OnRowDataBound="GVActionEvents_RowDataBound" AutoGenerateColumns="false"
                                                HeaderStyle-CssClass=" fw-bold fs-6 text-gray-800 border-bottom border-gray-200 table_header"
                                                Width="100%">
                                                <RowStyle HorizontalAlign="Left" CssClass="" />
                                                <Columns>
                                                    <asp:BoundField DataField="Activity_Status" HeaderText="Sno"
                                                        ShowHeader="false">
                                                        <ItemStyle CssClass="hide" />
                                                        <HeaderStyle CssClass="hide" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Code" ShowHeader="false">
                                                        <ItemStyle CssClass="hide" />
                                                        <HeaderStyle CssClass="hide" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Sno" HeaderText="Sno" ShowHeader="false">
                                                        <ItemStyle CssClass="hide" />
                                                        <HeaderStyle CssClass="hide" />
                                                    </asp:BoundField>

                                                    <asp:TemplateField HeaderText="Activity Name">
                                                        <HeaderTemplate>

                                                            <asp:CheckBox ID="checkAll" runat="server"
                                                                onclick="checkAll(this);"
                                                                ItemStyle-HorizontalAlign="Center" />
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label runat="server" ID="lblAct"
                                                                Text='<%#Eval("Desc") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="RCode" ItemStyle-Width="1px"
                                                        HeaderText="Role code" Visible="false" />
                                                    <asp:BoundField DataField="RDesc" HeaderText="Role name"
                                                        Visible="false" />
                                                    <asp:BoundField DataField="RAdmin" HeaderText="Role Admin"
                                                        Visible="false" />
                                                    <asp:BoundField DataField="Role_Status" HeaderText="Activity Name"
                                                        Visible="false" />
                                                    <asp:BoundField DataField="MCode" HeaderText="Activity Name"
                                                        Visible="false" />
                                                    <asp:BoundField DataField="Module_Status" HeaderText="Activity Name"
                                                        Visible="false" />
                                                    <asp:BoundField DataField="ACode" HeaderText="Activity Name"
                                                        Visible="false" />
                                                    <asp:BoundField DataField="ADesc" HeaderText="Activity Name"
                                                        Visible="false" />
                                                    <asp:BoundField DataField="MName" HeaderText="Activity Name"
                                                        Visible="false" />
                                                    <asp:BoundField DataField="Desc" HeaderText="Activity Name"
                                                        Visible="false" />
                                                    <asp:TemplateField HeaderText="Add" ItemStyle-Width="50px"
                                                        ItemStyle-HorizontalAlign="Center"
                                                        HeaderStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chkAdd" runat="server"
                                                                onclick="Check_Click(this)" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="View"
                                                        ItemStyle-HorizontalAlign="Center"
                                                        HeaderStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chkView" runat="server"
                                                                onclick="Check_Click(this)" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Search"
                                                        ItemStyle-HorizontalAlign="Center"
                                                        HeaderStyle-HorizontalAlign="Center" Visible="false">
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chkSearch" runat="server"
                                                                onclick="Check_Click(this)" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Update"
                                                        ItemStyle-HorizontalAlign="Center"
                                                        HeaderStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chkUpdate" runat="server"
                                                                onclick="Check_Click(this)" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Delete"
                                                        ItemStyle-HorizontalAlign="Center"
                                                        HeaderStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chkDelete" runat="server"
                                                                onclick="Check_Click(this)" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                        <!-- Modal footer -->
                                        <div class="modal-footer pt-0 text-right w-100 border-0">
                                            <div class="form-group row">
                                                <div style="margin-top: 10px; text-align: right;">
                                                    <asp:Button ID="btnUpdate" runat="server"
                                                        CssClass="btn btn-primary btn-sm"
                                                        OnClientClick="return confirm('Are you sure you want to update?');"
                                                        OnClick="btnUpdate_Click" Text="Update" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </ContentTemplate>
            </asp:UpdatePanel>

        </asp:Content>

        <asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">

            <script type="text/javascript">
                // function showModal() {
                //     $("#myModal").modal("show");
                // }

                // $(function () {
                //     $("#btnShow").click(function () {
                //         showModal();
                //     });
                // });

                function ShowPopup(title, body) {
                    $("#MyPopup .modal-title").html(title);
                    $("#MyPopup .modal-body").html(body);
                    $("#MyPopup").modal("show");
                }

                // ! Shilloh 2021

                $(document).ready(function () {
                    var accessRightModal = $("[id$=myModal].modal");
                    var closeButton = $("button.close");
                    var body = $("body");

                    $(document).on('click', 'a[id*=lnkSelect]', function (e) {
                        // $(accessRightModal).show();
                        $(accessRightModal).css('display', 'block');
                        $(body).addClass("modal-open");
                    });


                    $(document).on('click', 'button.close', function (e) {
                        var accessRightModal = $("[id$=myModal].modal");

                        // $(accessRightModal).hide();
                        $(body).removeClass("modal-open");
                        $(accessRightModal).css('display', 'none');
                    });
                });


            </script>

        </asp:Content>