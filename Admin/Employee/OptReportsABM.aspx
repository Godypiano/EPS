<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OptReportsABM.aspx.cs" MasterPageFile="~/Default_custom.Master"
    Inherits="PresentationLayer.Admin.Employee.OptReportsABM" %>

    <%@ MasterType VirtualPath="~/Default_custom.master" %>
        <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <link href="/Styles/styles_reports.css" rel="stylesheet" type="text/css" />

            <link rel="stylesheet" href="/assets/dataTable/css/jquery.dataTables.min.css">
        </asp:Content>

        <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <script type="text/javascript" language="javascript">
                function onCalendarShown() {
                    var cal = $find("calendar1");
                    cal._switchMode("months", true);
                    if (cal._monthsBody) {
                        for (var i = 0; i < cal._monthsBody.rows.length; i++) {
                            var row = cal._monthsBody.rows[i];
                            for (var j = 0; j < row.cells.length; j++) {
                                Sys.UI.DomEvent.addHandler(row.cells[j].firstChild, "click", call);
                            }
                        }
                    }
                }

                function onCalendarHidden() {
                    var cal = $find("calendar1");
                    if (cal._monthsBody) {
                        for (var i = 0; i < cal._monthsBody.rows.length; i++) {
                            var row = cal._monthsBody.rows[i];
                            for (var j = 0; j < row.cells.length; j++) {
                                Sys.UI.DomEvent.removeHandler(row.cells[j].firstChild, "click", call);
                            }
                        }
                    }
                }

                function call(eventElement) {
                    var target = eventElement.target;
                    switch (target.mode) {
                        case "month":
                            var cal = $find("calendar1");
                            cal.set_selectedDate(target.date);
                            cal._blur.post(true);
                            cal.raiseDateSelectionChanged(); break;
                            break;
                    }
                }
                function onCalendarShown2() {
                    var cal = $find("calendar2");
                    cal._switchMode("months", true);
                    if (cal._monthsBody) {
                        for (var i = 0; i < cal._monthsBody.rows.length; i++) {
                            var row = cal._monthsBody.rows[i];
                            for (var j = 0; j < row.cells.length; j++) {
                                Sys.UI.DomEvent.addHandler(row.cells[j].firstChild, "click", call2);
                            }
                        }
                    }
                }

                function onCalendarHidden2() {
                    var cal = $find("calendar2");
                    if (cal._monthsBody) {
                        for (var i = 0; i < cal._monthsBody.rows.length; i++) {
                            var row = cal._monthsBody.rows[i];
                            for (var j = 0; j < row.cells.length; j++) {
                                Sys.UI.DomEvent.removeHandler(row.cells[j].firstChild, "click", call2);
                            }
                        }
                    }
                }

                function call2(eventElement) {
                    var target = eventElement.target;
                    switch (target.mode) {
                        case "month":
                            var cal = $find("calendar2");
                            cal.set_selectedDate(target.date);
                            cal._blur.post(true);
                            cal.raiseDateSelectionChanged(); break;
                            break;
                    }
                }

            </script>

            <!--begin::Toolbar-->
            <div class="toolbar" id="kt_toolbar">
                <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
                    <!--begin::Info-->
                    <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                        <!--begin::Title-->
                        <h1 class="text-dark fw-bolder my-1 fs-2">
                            <asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label>
                            Operational Reports - Abnormal/Wide Load
                            Permit
                        </h1>
                        <!--end::Title-->
                        <!--begin::Breadcrumb-->
                        <ul class="breadcrumb fw-bold fs-base my-1">
                            <li class="breadcrumb-item text-breadcrumbs">
                                <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                            </li>
                            <li class="breadcrumb-item text-dark">Abnormal/Wide
                                Load Permit</li>
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

                                    <div class="form-group d-flex justify-content-end mb-3">
                                        <asp:LinkButton CssClass="btn btn-primary btn-sm" ID="lnkViewOTdetails"
                                            runat="server" CausesValidation="False" onclick="lnkViewOTdetails_Click"> <i
                                                class="fa fa-eye" aria-hidden="true"></i> View
                                            Transporter Details</asp:LinkButton>
                                    </div>

                                    <div class="row">
                                        <div class="form-group row mx-0 mb-3 align-items-sm-center col-lg-6">
                                            <asp:Label CssClass="col-auto ps-0 label-80px" ID="Label2" runat="server"
                                                Text="Date">
                                            </asp:Label>
                                            <div class="col-sm-9 col-md-7 col-lg-12 col-xl-10 px-0">
                                                <div class="input-group">
                                                    <asp:TextBox ID="ALPTextBox1" runat="server"
                                                        CssClass="form-control"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <asp:ImageButton class="input-group-text" ID="ALPImageButton1"
                                                            runat="server" CausesValidation="false"
                                                            ImageUrl="/images/calendar.png" />
                                                    </div>
                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server"
                                                        OnClientHidden="onCalendarHidden"
                                                            OnClientShown="onCalendarShown" Format="MM/yyyy"
                                                            BehaviorID="calendar1" PopupButtonID="ALPImageButton1"
                                                        TargetControlID="ALPTextBox1" />
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                                                        runat="server" ErrorMessage="Fill date from" ForeColor="Red"
                                                        ControlToValidate="ALPTextBox1" Display="Dynamic">
                                                    </asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </div>

                                        

                                        <div class="form-group row mx-0 mb-3 align-items-sm-center col-md-6">
                                            <asp:Label CssClass="col-auto ps-0 label-80px" ID="lblAbnormalLoad"
                                                runat="server" Text="Transporter">
                                            </asp:Label>
                                            <asp:DropDownList
                                                CssClass="form-control col-sm-12 col-md-12 col-lg-12 col-xl-12"
                                                ID="DrpAbnormalLoad" runat="server" AppendDataBoundItems="True"
                                                CausesValidation="True">
                                            </asp:DropDownList>
                                        </div>

                                        <div class="form-group row mx-0 mb-3 align-items-sm-center col-md-6">
                                            <label class="col-auto ps-0 label-80px mb-0 d-none d-xl-block"></label>
                                            <div class="input-group col-sm-12 px-0">
                                                <asp:TextBox CssClass="form-control" ID="txtAbnormalLoad" runat="server"
                                                    ToolTip="Type Start letter of full name">
                                                </asp:TextBox>
                                                <div class="input-group-append rounded-left-0">
                                                    <asp:Button CssClass="input-group-text btn btn-primary"
                                                        ID="btnALPTsearch" runat="server" onclick="btnALPTsearch_Click"
                                                        Text="Search" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group mb-3 d-flex justify-content-end">
                                        <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                            ID="btnRunPermit" runat="server" Text="Run Report"
                                            onclick="btnRunPermit_Click" />

                                        <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                            ID="tntDownloadPermit" runat="server" Text="Download Pdf"
                                            onclick="tntDownloadPermit_Click" />

                                        <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap" ID="btnAExcel"
                                            runat="server" Text="Download Excel" onclick="btnAExcel_Click" />
                                    </div>

                                    <asp:Label ID="lblALP" runat="server" ForeColor="Red">
                                    </asp:Label>

                                    <div id="table__responsive_Wrapper1" class="mb-6 table-responsive">
                                        <asp:GridView ID="gvALPermit"
                                            CssClass="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1 display dataTable no-footer"
                                            ShowFooter="False" runat="server" AutoGenerateColumns="False"
                                            AllowPaging="False" Width="100%" ShowHeaderWhenEmpty="True"
                                            HeaderStyle-CssClass="fw-bold fs-6 text-gray-800 border-bottom border-gray-200 table_header"
                                            AlternatingRowStyle-CssClass="AlternateItemStyle"
                                            onpageindexchanging="gvALPermit_PageIndexChanging">
                                            <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="SNo" ItemStyle-Width="2%"
                                                    ItemStyle-VerticalAlign="Top" HeaderStyle-HorizontalAlign="Left">
                                                    <ItemTemplate>
                                                        <%# Container.DataItemIndex + 1 %>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="Permit_No" HeaderText="Permit<br/>Number"
                                                    HtmlEncode="false" />
                                                <asp:BoundField DataField="Permit_Date" HeaderText="Permit<br/>Date"
                                                    HtmlEncode="false" />
                                                <asp:BoundField DataField="Application_Date"
                                                    HeaderText="Application<br/>Date" HtmlEncode="false" />

                                                <asp:BoundField DataField="Transporter_Name"
                                                    HeaderText="Transporter<br/> Name" HtmlEncode="false" />
                                                <asp:BoundField DataField="Address" HeaderText="Address"
                                                    HtmlEncode="false" />
                                                <asp:BoundField DataField="Truck_Number" HeaderText="Truck<br/>Number"
                                                    HtmlEncode="false" />
                                                <asp:BoundField DataField="Axle_Config"
                                                    HeaderText="Axle<br/>Configuration" HtmlEncode="false" />

                                                <asp:BoundField DataField="Cargo" HeaderText="Cargo<br/>Name"
                                                    HtmlEncode="false" />
                                                <asp:BoundField DataField="Length" ItemStyle-HorizontalAlign="Right"
                                                    HeaderText="Length<br/>(M)" HtmlEncode="false" />
                                                <asp:BoundField DataField="Width" ItemStyle-HorizontalAlign="Right"
                                                    HeaderText="Width<br/>(M)" HtmlEncode="false" />
                                                <asp:BoundField DataField="Height" ItemStyle-HorizontalAlign="Right"
                                                    HeaderText="Height<br/>(M)" HtmlEncode="false" />

                                                <asp:BoundField DataField="GVM" DataFormatString="{0:N0}"
                                                    ItemStyle-HorizontalAlign="Right" HeaderText="GVM<br/>(Kg)"
                                                    HtmlEncode="false" />
                                                <asp:BoundField DataField="Route_From" HeaderText="Route<br/>From"
                                                    HtmlEncode="false" />
                                                <asp:BoundField DataField="Route_To" HeaderText="Route<br/>To"
                                                    HtmlEncode="false" />
                                                <asp:BoundField DataField="Route_Via" HeaderText="Route<br/>Via"
                                                    HtmlEncode="false" />
                                                <asp:BoundField DataField="Authorized" HeaderText="Authorized<br/>By"
                                                    HtmlEncode="false" />


                                            </Columns>
                                            <FooterStyle CssClass="Ftstyle" />
                                            <HeaderStyle
                                                CssClass="fw-bold fs-6 text-gray-800 border-bottom border-gray-200 table_header">
                                            </HeaderStyle>
                                            <PagerStyle CssClass="gridViewPager" />
                                            <AlternatingRowStyle CssClass="AlternateItemStyle">
                                            </AlternatingRowStyle>

                                        </asp:GridView>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </asp:Content>

        <asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
            <script src="/assets/dataTable/js/jquery.dataTables.min.js"></script>

            <script>
                (function () {
                    $(function () {
                        var table1 = $('table[id$=gvALPermit]');
                        var thead_row1 = $(table1).find($('.table_header'));
                        var thead1 = $("<thead/>").append($(thead_row1));
                        var table__responsive_Wrapper1 = $('#table__responsive_Wrapper1').children();
                        // var tfooter1 = $(table1).find($('.gridViewPager'));

                        // $(tfooter1).remove();

                        // Add required classes
                        $(table__responsive_Wrapper1).addClass('table-responsive mb-1');

                        //   Append thead to tables
                        $(table1).prepend($(thead1));

                        $(table1).DataTable({
                            "stateSave": true,
                            "stateDuration": 60 * 1,
                            "responsive": true,
                            "lengthMenu": [
                                [10, 20, 30, 50, -1],
                                [10, 20, 30, 50, "All"]
                            ],
                            "sPaginationType": "full_numbers"
                        });

                    });
                }());
            </script>

        </asp:Content>