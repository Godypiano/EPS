<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OptReportsAB3.aspx.cs" MasterPageFile="~/Default_admin.Master"
    Inherits="PresentationLayer.Admin.OptReportsAB3" %>

    <%@ MasterType VirtualPath="~/Default_admin.master" %>
        <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <link href="/Styles/styles_reports.css" rel="stylesheet" type="text/css" />

            <link rel="stylesheet" href="/assets/dataTable/css/jquery.dataTables.min.css">
        </asp:Content>

        <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           

            <!--begin::Toolbar-->
            <div class="toolbar" id="kt_toolbar">
                <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
                    <!--begin::Info-->
                    <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
                        <!--begin::Title-->
                        <h1 class="text-dark fw-bolder my-1 fs-2">
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
                                                Text="Date From">
                                            </asp:Label>
                                            <div class="col-sm-9 col-md-7 col-lg-12 col-xl-10 px-0">
                                                <div class="input-group">
                                                    <asp:TextBox ID="ALPTextBox1" runat="server" ClientIDMode="Static"
                                                        CssClass="form-control"></asp:TextBox>
                                                    <div class="input-group-append rounded-left-0">
                                                        <asp:ImageButton class="input-group-text" ID="ALPImageButton1"
                                                            runat="server" CausesValidation="false"
                                                            ImageUrl="/images/calendar.png" />
                                                    </div>
                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server"
                                                        Format="dd/MM/yyyy" PopupButtonID="ALPImageButton1"
                                                        TargetControlID="ALPTextBox1" />
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                                                        runat="server" ErrorMessage="Fill date from" ForeColor="Red"
                                                        ControlToValidate="ALPTextBox1" Display="Dynamic">
                                                    </asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group row mx-0 mb-3 align-items-sm-center col-lg-6">
                                            <asp:Label CssClass="col-auto ps-0 label-80px" ID="Label3" runat="server"
                                                Text="Date To">
                                            </asp:Label>
                                            <div class="col-sm-9 col-md-7 col-lg-12 col-xl-10 px-0">
                                                <div class="input-group">
                                                    <asp:TextBox CssClass="form-control" ID="ALPTextBox2" ClientIDMode="Static"
                                                        runat="server"></asp:TextBox>

                                                    <div class="input-group-append rounded-left-0">
                                                        <asp:ImageButton class="input-group-text" ID="ALPImageButton2"
                                                            runat="server" CausesValidation="false"
                                                            ImageUrl="/images/calendar.png" />
                                                    </div>
                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server"
                                                        PopupButtonID="ALPImageButton2" TargetControlID="ALPTextBox2"
                                                        Format="dd/MM/yyyy" />
                                                </div>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                                    ErrorMessage="Fill date to" ForeColor="Red"
                                                    ControlToValidate="ALPTextBox2" Display="Dynamic">
                                                </asp:RequiredFieldValidator>
                                                <asp:CompareValidator ID="cmpVal" ControlToCompare="ALPTextBox1"
                                                    ControlToValidate="ALPTextBox2" Display="Dynamic"
                                                    CssClass="text-danger" Type="Date" Operator="GreaterThanEqual"
                                                    ErrorMessage="To Date should be greater than equal to From Date"
                                                    runat="server"></asp:CompareValidator>
                                            </div>
                                        </div>

                                        <div class="form-group row mx-0 mb-3 align-items-sm-center col-md-6">
                                            <asp:Label CssClass="col-auto ps-0 label-80px" ID="lblAbnormalLoad"
                                                runat="server" Text="Transporter">
                                            </asp:Label>
                                            <asp:DropDownList
                                                CssClass="form-control col-sm-12 col-md-12 col-lg-12 col-xl-12"
                                                ID="DrpAbnormalLoad" ClientIDMode="Static" runat="server" AppendDataBoundItems="True"
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
                                        <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1" ClientIDMode="Static"
                                            ID="btnRunPermit" runat="server" Text="Run Report"
                                             />
                                        <button type="button" class="btn btn-success btn-sm btn-biz_logic" id="btnSubmit">Save</button>
                                        <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap me-1"
                                            ID="tntDownloadPermit" runat="server" Text="Download Pdf"
                                            onclick="tntDownloadPermit_Click" />

                                        <asp:Button CssClass="btn btn-primary btn-sm white-space-wrap" ID="btnAExcel"
                                            runat="server" Text="Download Excel" onclick="btnAExcel_Click" />
                                    </div>

                                    <asp:Label ID="lblALP" runat="server" ForeColor="Red">
                                    </asp:Label>

                                    <div class="table-responsive">
                                    <table id="datatable" class="table table-bordered table-hover display">
                                        <thead>
                                            <tr>
                                                <!--<th>Sno</th>-->
                                                <th>Permit<br/>Number</th>
                                                <th>Truck<br/>Number</th>
                                                <th >Permit<br/>Dates</th>
                                                <th>Application<br/>Date</th>
                                                <th>Transporter<br/> Name</th>
                                                <th>Address</th>
                                                <th>Axle<br/>Configuration</th>
                                                <th>Cargo<br/>Name</th>
                                                <th>Length<br/>(M)</th>
                                                <th>Width<br/>(M)</th>
                                                <th>Height<br/>(M)</th>
                                                <th>GVM<br/>(Kg)</th>
                                                <th>Route<br/>From</th>
                                                <th>Route<br/>To</th>
                                                <th>Route<br/>Via</th>
                                                <th>Authorized<br/>By</th>
                                            </tr>
                                        </thead>

                                    </table>
                                </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </asp:Content>
       

<asp:Content ID="Content5" ContentPlaceHolderID="script" runat="Server">
    <script src="jquery-1.11.2.js"></script>
    <script src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>

    <script src="/Scripts/moments.js"></script>

    <script type="text/javascript">
        $("#btnSubmit").click(function () {
            var result = '';
            var fdate = $("#ALPTextBox1").val();
            var tdate = $("#ALPTextBox2").val();
            if (fdate == "") {
                result += 'From Date is Required .\n';
            }
            if (tdate == "") {
                result += 'To Date is Required .';
            }
            if (result.length > 0) {
                alert(result);
            }
            else
            {
                /*$.ajax({
                    type: "POST",
                    url: 'OptReportsAB2.aspx/TestMethod',
                    data: '{message: "HAI" }',
                    contentType: "application/json; charset=utf-8",
                    success: function (data) {
                        alert(data.d);
                    },
                    failure: function (response) {
                        alert(response.d);
                    }
                });*/
                var dataT = {

                    dt1: $("#ALPTextBox1").val(),
                    dt2: $("#ALPTextBox2").val(),
                    sno: $("#DrpAbnormalLoad option:selected").val()

                }
                $.ajax({
                    //url: '/getOptAbnormal.asmx/GetAbnormal',
                    url: 'WS.aspx/GetAbnormal',
                    method: 'post',
                    //contentType: "application/json; charset=utf-8",
                    //processData:false,
                    dataType: 'json',
                    /*data: {
                        'dt1': $("#ALPTextBox1").val(),
                        'dt2': $("#ALPTextBox2").val(),
                        'sno': $("#DrpAbnormalLoad option:selected").val()
                    },*/
                    //data: JSON.stringify(dataT),
                    success: function (data) {
                        alert("In Success");
                        //alert(data);
                        //alert(data.d);
                        
                        /*var json = $.parseJSON(data.d);
                        alert(json.length);
                        for (var i = 0; i < json.length; ++i) {
                            //alert(json.length);
                            //alert(json[i].Permit_No);
                            $("#datatable").append("<tr><td>" + json[i].Permit_No + "</td><td>" + json[i].Truck_Number + "</td><td>" +
                                json[i].Permit_Date + "</td></tr>");
                        }*/
                        $("#datatable tbody").empty();
                        if ($.fn.DataTable.isDataTable("#datatable")) {
                            $('#datatable').DataTable().clear().destroy();
                        }
                        var dataTable = $('#datatable').dataTable({
                            paging: true,
                            sort: true,
                            searching: true,
                            deferRender: true,
                            "lengthMenu": [
                                [10, 20, 30, 50, 100, 250, 500],
                                [10, 20, 30, 50, 100, 250, 500]
                            ],

                            data: data,
                            columns: [
                                //{ 'data': 'SNO' },
                                { 'data': 'Permit_No' },
                                { 'data': 'Truck_Number' },
                                { 'data': 'Permit_Date' },
                                { 'data': 'Application_Date' },
                                { 'data': 'Transporter_Name' },
                                { 'data': 'Address' },
                                { 'data': 'Axle_Config' },
                                { 'data': 'Cargo' },
                                { 'data': 'Length' },
                                { 'data': 'Width' },
                                { 'data': 'Height' },
                                { 'data': 'GVM' },
                                { 'data': 'Route_From' },
                                { 'data': 'Route_To' },
                                { 'data': 'Route_Via' },
                                { 'data': 'Authorized' },
                            
                            ]
                        });
                        //alert(data.length);
                        //alert(data.d);
                    } 
                    ,
                    error: function (err) {
                        //alert("In Error");
                        alert(err.responseText);
                        $("#datatable tbody").empty();
                        if ($.fn.DataTable.isDataTable("#datatable")) {
                            $('#datatable').DataTable().clear().destroy();
                        }
                        alert("No records found");
                    }
                    
                });
                
        }
        });
    </script>
</asp:Content>
       