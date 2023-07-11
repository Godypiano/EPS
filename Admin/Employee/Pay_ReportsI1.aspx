<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pay_ReportsI1.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.Pay_ReportsI1" %>

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
                            Payment Reports - Invoice
                        </h1>
                        <!--end::Title-->
                        <!--begin::Breadcrumb-->
                        <ul class="breadcrumb fw-bold fs-base my-1">
                            <li class="breadcrumb-item text-breadcrumbs">
                                <a href="Dashboard.aspx" class="text-breadcrumbs text-hover-primary">Home</a>
                            </li>
                            <li class="breadcrumb-item text-dark">Invoice Report</li>
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
                                        <asp:LinkButton ID="lnkViewTdetails" CssClass="btn btn-primary btn-sm"
                                            runat="server" CausesValidation="False" onclick="lnkViewTdetails_Click"> <i
                                                class="fa fa-eye" aria-hidden="true"></i> View Transporter Details
                                        </asp:LinkButton>
                                    </div>

                                    <div class="row">
                                        <div class="form-group row mx-0 mb-3 align-items-sm-center col-lg-6">
                                            <asp:Label CssClass="col-auto ps-0 label-80px" ID="invoicelbldatefrom"
                                                runat="server" Text="Date From"></asp:Label>
                                            <div class="col-sm-9 col-md-7 col-lg-12 col-xl-10 px-0">
                                                <div class="input-group">
                                                    <asp:TextBox ID="invoicetxtDateFrom" runat="server"
                                                        CssClass="form-control"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <asp:ImageButton class="input-group-text"
                                                            ID="invoiceImgBtnDateFrom" runat="server"
                                                            CausesValidation="false" ImageUrl="/images/calendar.png" />
                                                    </div>

                                                    <ajaxToolkit:CalendarExtender ID="invoiceCalendarExtender1"
                                                        runat="server" PopupButtonID="invoiceImgBtnDateFrom"
                                                        TargetControlID="invoicetxtDateFrom" Format="dd/MM/yyyy" />
                                                </div>

                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                                    ErrorMessage="Fill date from" ForeColor="Red"
                                                    CssClass="text-danger dynamic" Display="Dynamic"
                                                    ControlToValidate="invoicetxtDateFrom">
                                                </asp:RequiredFieldValidator>
                                            </div>

                                        </div>

                                        <div class="form-group row mx-0 mb-3 align-items-sm-center col-lg-6">
                                            <asp:Label CssClass="col-auto ps-0 label-80px" ID="invoicelbldateto"
                                                runat="server" Text="Date To">
                                            </asp:Label>
                                            <div class="col-sm-9 col-md-7 col-lg-12 col-xl-10 px-0">
                                                <div class="input-group ">
                                                    <asp:TextBox ID="invoicetxtDateTo" runat="server"
                                                        CssClass="form-control"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <asp:ImageButton class="input-group-text"
                                                            ID="invoiceImgBtnDateTo" runat="server"
                                                            CausesValidation="false" ImageUrl="/images/calendar.png" />
                                                    </div>

                                                    <ajaxToolkit:CalendarExtender ID="invoiceCalendarExtender2"
                                                        runat="server" PopupButtonID="invoiceImgBtnDateTo"
                                                        TargetControlID="invoicetxtDateTo" Format="dd/MM/yyyy" />

                                                </div>

                                                <asp:RequiredFieldValidator CssClass="dynamic text-danger"
                                                    ID="RequiredFieldValidator5" runat="server" Display="Dynamic"
                                                    ErrorMessage="Fill date to" ForeColor="Red"
                                                    ControlToValidate="invoicetxtDateTo">
                                                </asp:RequiredFieldValidator>
                                                <asp:CompareValidator ID="cmpVal" ControlToCompare="invoicetxtDateFrom"
                                                    ControlToValidate="invoicetxtDateTo" Display="Dynamic"
                                                    CssClass="text-danger dynamic" Type="Date"
                                                    Operator="GreaterThanEqual"
                                                    ErrorMessage="To Date should be greater than equal to From Date"
                                                    runat="server"></asp:CompareValidator>
                                            </div>
                                        </div>

                                        <div class="form-group row mx-0 mb-3 align-items-sm-center col-md-6">
                                            <asp:Label CssClass="col-auto ps-0 label-80px" ID="Ladateto2" runat="server"
                                                Text="Transpoter">
                                            </asp:Label>
                                            <asp:DropDownList
                                                CssClass="form-control col-sm-12 col-md-12 col-lg-12 col-xl-12"
                                                ID="DropDownTranspoterInvoice" runat="server">
                                                <asp:ListItem Selected="True">All</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>

                                        <div class="form-group row mx-0 mb-3 align-items-sm-center col-md-6">
                                            <label class="col-auto ps-0 label-80px mb-0 d-none d-xl-block"></label>
                                            <div class="input-group col-sm-12 px-0">
                                                <asp:TextBox CssClass="form-control" ID="SearchTransporterInvoice"
                                                    runat="server" ToolTip="Type Start letters or full name">
                                                </asp:TextBox>
                                                <div class="input-group-append rounded-left-0">
                                                    <asp:Button CssClass="input-group-text btn btn-primary"
                                                        ID="btnIPTsearch" runat="server" onclick="btnIPTsearch_Click"
                                                        Text="Search" />
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group mb-3 d-flex justify-content-end">
                                        <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                            ID="BtnRunInvoice" runat="server" Text="Run Invoice"
                                            onclick="BtnRunInvoice_Click" />
                                        <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                            ID="btnDonloadinvoice" runat="server" Text="Download Pdf"
                                            onclick="btnDonloadinvoice_Click" />
                                        <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap" ID="btnIExcel"
                                            runat="server" Text="Download Excel" onclick="btnIExcel_Click" />
                                    </div>


                                    <div id="table__responsive_Wrapper1" class="mb-6 table-responsive">
                                        <asp:GridView ID="GridViewInvoice"
                                            CssClass="table table-row-bordered table__bordered table__bordered_td_radio table-row-gray-300 border-0 gy-2 mb-1 display dataTable no-footer"
                                            runat="server" AllowPaging="true" Width="100%"
                                            EmptyDataText="No data exists." ShowHeaderWhenEmpty="True"
                                            HeaderStyle-CssClass="fw-bold fs-6 text-gray-800 border-bottom border-gray-200 table_header"
                                            AlternatingRowStyle-CssClass="AlternateItemStyle" ShowFooter="true"
                                            AutoGenerateColumns="False"
                                            onpageindexchanging="GridViewInvoice_PageIndexChanging"
                                            onrowdatabound="GridViewInvoice_RowDataBound">
                                            <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="SNo" ItemStyle-Width="2%"
                                                    ItemStyle-VerticalAlign="Top" HeaderStyle-HorizontalAlign="Left">
                                                    <ItemTemplate>
                                                        <%# Container.DataItemIndex + 1 %>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="Application_No" HeaderText="App No"
                                                    HtmlEncode="false" />
                                                <asp:BoundField DataField="Transporter_Name" HeaderText="Transporter"
                                                    HtmlEncode="false" />
                                                <asp:BoundField DataField="Invoice_No" HeaderText="Invoice No" />
                                                <asp:BoundField DataField="Invoice_Date" HeaderText="Invoice Date" />

                                                <asp:BoundField DataField="Permit_Fee" DataFormatString="{0:N2}"
                                                    ItemStyle-HorizontalAlign="Right" HeaderText="Fee (USD)"
                                                    HtmlEncode="false">
                                                    <ItemStyle HorizontalAlign="Right" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Surcharge_Fee" DataFormatString="{0:N2}"
                                                    ItemStyle-HorizontalAlign="Right" HeaderText="Surcharge (USD)"
                                                    HtmlEncode="false">
                                                    <ItemStyle HorizontalAlign="Right" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Amount" DataFormatString="{0:N2}"
                                                    ItemStyle-HorizontalAlign="Right" HeaderText="Amount (TZS)"
                                                    HtmlEncode="false" />
                                                <asp:BoundField DataField="Receipt_No" HeaderText="Receipt No" />
                                                <asp:BoundField DataField="Control_No" HeaderText="Control No."
                                                    HtmlEncode="false" />
                                                <asp:BoundField DataField="Payment_Date" HeaderText="Receipt Date" />
                                                <asp:BoundField DataField="Total_Weight" DataFormatString="{0:N2}"
                                                    ItemStyle-HorizontalAlign="Right" HeaderText="G. V. M (Kg)"
                                                    HtmlEncode="false">
                                                    <ItemStyle HorizontalAlign="Right" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Route_From" HeaderText="Route From" />
                                                <asp:BoundField DataField="Route_To" HeaderText="Route To" />
                                                <asp:BoundField DataField="Permit_No" HeaderText="Permit No"
                                                    HtmlEncode="false" />
                                                <asp:BoundField DataField="Permit_Date" HeaderText="Permit Date"
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
                /*(function () {
                    $(function () {
                        var table1 = $('table[id$=GridViewInvoice]');
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
                }());*/
            </script>

        </asp:Content>