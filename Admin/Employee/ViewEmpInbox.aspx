<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewEmpInbox.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.ViewEmpInbox" %>

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
                        Application Number: <asp:Label runat="server" ID="lblapp"></asp:Label></label>
                    </h1>
                    <!--end::Title-->
                    <!--begin::Breadcrumb-->
                    <ul class="breadcrumb fw-bold fs-base my-1">
                        <li class="breadcrumb-item text-breadcrumbs">
                            <a
                                href="Dashboard.aspx"
                                class="text-breadcrumbs text-hover-primary">Home</a>
                                <asp:Label runat="server" ID="lblview"></asp:Label>
                                <asp:Label runat="server" ID="lblview1"></asp:Label>
                        </li>
                        <li class="breadcrumb-item text-dark">Employees Inbox</li>
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
                                    <div class="col-md-6 col-lg-6">
                                        <div>
                                            <h4 class="col-auto ps-0 label-165px">
                                                Vehicle & Cargo Details:</h4>
                                        </div>
                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                           
                                                
                                                <asp:Label CssClass="col-auto ps-0 label-165px" runat="server" ID="lblCargo">Type of Vehicle(Truck)</asp:Label>
                                            <div class="input-group col-md-12 col-lg-12  px-0">
                                                <asp:Label  runat="server" ID="lblCtype" Visible="false"></asp:Label>
                                                <asp:TextBox CssClass="form-control col-md-12 col-lg-12" runat="server" Enabled="false" ID="lblVN"></asp:TextBox>

                                            </div>
                                        </div>

                                        <tr runat="server" id="tr2">
                                            <td></td>
                                        </tr>


                                        <div class="form-group row mx-0 mb-3 align-items-md-center col-md-12 col-lg-12">
                                            <asp:Label CssClass="col-auto ps-0 label-165px" runat="server" ID="Label1">Cargo Name</asp:Label>
                                            <div class="input-group col-md-12 col-lg-12  px-0">
                                                <asp:TextBox CssClass="form-control" runat="server" Enabled="false"  ID="lblCName">
                                                </asp:TextBox>
                                                <!-- <div class="input-group-append rounded-left-0">
                                                </div> -->
                                            </div>
                                        </div>



                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label class="col-auto ps-0 label-165px">
                                             Cargo Details:</label>
                                            <div class="input-group col-md-12 col-lg-12  px-0">
                                                <asp:TextBox CssClass="form-control" runat="server" Enabled="false"  ID="lblCDetails">
                                                </asp:TextBox>
                                                <!-- <div class="input-group-append rounded-left-0">
                                                </div> -->
                                            </div>
                                        </div>

                                        <asp:PlaceHolder runat="server" ID="phAxel">
                                        </asp:PlaceHolder>


                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label class="col-auto ps-0 label-165px">
                                                Axle Configuration</label>
                                            <div class="input-group col-md-12 col-lg-12  px-0">
                                                <asp:TextBox CssClass="form-control" runat="server" Enabled="false"  ID="lblAC"></asp:TextBox>
                                                <!-- <div class="input-group-append rounded-left-0">
                                                </div> -->
                                            </div>
                                        </div>



                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label class="col-auto ps-0 label-165px">
                                            Weight of Axles</label>
                                            <div class="input-group col-md-12 col-lg-12  px-0">
                                                <asp:PlaceHolder runat="server" ID="phPermit">
                                                    </asp:PlaceHolder>
                                                <!-- <div class="input-group-append rounded-left-0">
                                                </div> -->
                                            </div>
                                        </div>


                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label class="col-auto ps-0 label-165px">
                                               Total Weight</label>
                                            <div class="input-group col-md-12 col-lg-12  px-0">
                                                <asp:TextBox CssClass="form-control" runat="server" Enabled="false" ID="lblWT"></asp:TextBox>
                                                <div class="input-group-append rounded-left-0">
                                                        <span class="input-group-text">Kg</span>
                                                </div>
                                            </div>
                                        </div>



                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label class="col-auto ps-0 label-165px">
                                                Application Date and Time</label>
                                            <div class="input-group col-md-12 col-lg-12  px-0">
                                                <asp:TextBox CssClass="form-control" runat="server" Enabled="false" ID="lblADate"></asp:TextBox>
                                                <!-- <div class="input-group-append rounded-left-0">
                                                </div> -->
                                            </div>
                                        </div>

                                        
                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label class="col-auto ps-0 label-165px">
                                                Journey Date</label>
                                            <div class="input-group col-md-12 col-lg-12  px-0">
                                                <asp:TextBox CssClass="form-control" runat="server" Enabled="false"  ID="lblJDate"></asp:TextBox>
                                                <!-- <div class="input-group-append rounded-left-0">
                                                </div> -->
                                            </div>
                                        </div>


                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label class="col-auto ps-0 label-165px">
                                                Dimension:Height (Ex:4.55)</label>
                                            <div class="input-group col-md-12 col-lg-12  px-0">
                                                <asp:TextBox CssClass="form-control" runat="server" Enabled="false"  ID="lblHeight"></asp:TextBox>
                                                <div class="input-group-append rounded-left-0">
                                                    <span class="input-group-text">M</span>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label class="col-auto ps-0 label-165px">
                                                Dimension:Width (Ex:2.85)</label>
                                            <div class="input-group col-md-12 col-lg-12  px-0">
                                                <asp:TextBox CssClass="form-control" runat="server" Enabled="false"  ID="lblWidth"></asp:TextBox>
                                                <div class="input-group-append rounded-left-0">
                                                    <span class="input-group-text">M</span>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label class="col-auto ps-0 label-165px">
                                                Dimension:Length (Ex:11.85)</label>
                                            <div class="input-group col-md-12 col-lg-12  px-0">
                                                <asp:TextBox CssClass="form-control" runat="server" Enabled="false" ID="lblLength"></asp:TextBox>
                                                <div class="input-group-append rounded-left-0">
                                                    <span class="input-group-text">M</span>
                                                </div>
                                            </div>
                                        </div>

                                        <tr runat="server" id="trnop" visible="false">
                                            <td>
                                                <div class="form-group row mx-0 mb-3 align-items-md-center">
                                                    <label class="col-auto ps-0 label-165px">
                                                        Number of Police</label>
                                                    <div class="input-group col-md-12 col-lg-12  px-0">
                                                        <asp:TextBox CssClass="form-control" runat="server" ID="lblNOP" Enabled="false" MaxLength="5"></asp:TextBox>
                                                        <!-- <div class="input-group-append rounded-left-0">
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>


                                        <tr runat="server" id="trgnop" visible="false">
                                            <td></td>
                                        </tr>

                                        <tr runat="server" id="trnov" visible="false">
                                            <td>
                                                <div class="form-group row mx-0 mb-3 align-items-md-center">
                                                    <label class="col-auto ps-0 label-165px">
                                                        Number of Vehicles</label>
                                                    <div class="input-group col-md-12 col-lg-12  px-0">
                                                        <asp:TextBox CssClass="form-control" runat="server" ID="lblNOV" Enabled="false" MaxLength="5"></asp:TextBox>
                                                        <!-- <div class="input-group-append rounded-left-0">
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr runat="server" id="trgnov" visible="false">
                                            <td></td>
                                        </tr>
                                    </div>




                                    <div class="col-md-6 col-lg-6">
                                        <div>
                                            <label class="col-auto ps-0 label-165px">
                                               Route</label>
                                        </div>



                                        <div class="form-group row mx-0 mb-3 align-items-md-center">

                                            <div class="col-md-4 col-lg-4">
                                                <label class="col-auto ps-0 label-165px">
                                                From</label>
                                             <div class="input-group">
                                                <asp:TextBox CssClass="form-control" runat="server" Enabled="false"  ID="lblFrom">
                                                </asp:TextBox>
                                                 <!-- <div class="input-group-append rounded-left-0">
                                                 </div> -->
                                             </div>
                                            </div>

                                            <div class="col-md-4 col-lg-4">
                                                <label class="col-auto ps-0 label-165px">
                                                To</label>
                                             <div class="input-group  px-0">
                                                <asp:TextBox CssClass="form-control" runat="server" Enabled="false"  ID="lblTo">
                                                </asp:TextBox>
                                                 <!-- <div class="input-group-append rounded-left-0">
                                                 </div> -->
                                             </div>
                                            
                                            </div>

                                            <div class="col-md-4 col-lg-4">
                                                <label class="col-auto ps-0 label-165px">
                                                Via</label>
                                             <div class="input-group  px-0">
                                                <asp:TextBox CssClass="form-control" runat="server" Enabled="false"  ID="lblVia">
                                                </asp:TextBox>
                                                 <!-- <div class="input-group-append rounded-left-0">
                                                 </div> -->
                                             </div>
                                            </div>
                                        </div>

                                            <fieldset runat="server" id="fsEscort" visible="false">
                                                <div>
                                                    <h4 class="col-auto ps-0 label-165px">
                                                    Escort Vehicle:</h4>
                                                </div>
                                            

                                            <div class="form-group row mx-0 mb-3 align-items-md-center">
                                                <!-- <label class="col-auto ps-0 label-165px">
                                                </label> -->
                                                <div class="input-group col-md-12 col-lg-12  px-0">
                                                    <asp:PlaceHolder runat="server" Visible="false" ID="phEscort">
                                                    </asp:PlaceHolder>      
                                                </div>

                                            </div>





                                        </fieldset>
                                        <fieldset runat="server" id="fsAttach" visible="false">
                                            <div>
                                                <h4  class="col-auto ps-0 label-165px">Attachments:</h4>
                                            </div>

                                            <tr runat="server" id="trDraw" visible="false">
                                                <td>
                                                <div class="form-group row mx-0 mb-3 align-items-md-center">
                                                    <label  class="col-auto ps-0 label-200px">Cargo Images & Drawings</label>
                                                    <div class="col-md-12 col-lg-12  px-0">
                                                    <asp:LinkButton CssClass="form-control" runat="server" ID="lnkImages" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkImages_Click"></asp:LinkButton>
                                                    </div>
                                                </div>
                                            </td>  
                                            </tr>


                                            <tr runat="server" id="trgDraw" visible="false">
                                                <td></td>
                                            </tr>

                                            <tr runat="server" id="trWeight" visible="false">
                                                <td>
                                                    <div class="form-group row mx-0 mb-3 align-items-md-center">
                                                        <label  class="col-auto ps-0 label-200px">Weigh Ticket from TANROADS</label>
                                                        <div class="col-md-12 col-lg-12  px-0">
                                                            <asp:LinkButton CssClass="form-control" runat="server" ID="lnkTan" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkTan_Click"></asp:LinkButton>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>


                                            <tr runat="server" id="trPolice" visible="false">
                                                <td>
                                                    <div class="form-group row mx-0 mb-3 align-items-md-center">
                                                        <label  class="col-auto ps-0 label-200px">Confirmation Letter from Police</label>
                                                        <div class="col-md-12 col-lg-12  px-0">
                                                            <asp:LinkButton runat="server" ID="lnkPolice" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkPolice_Click" />
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr runat="server" id="trgPolice" visible="false">
                                                <td></td>
                                            </tr>

                                            <tr runat="server" id="trTanesco" visible="false">
                                                <td>
                                                    <div class="form-group row mx-0 mb-3 align-items-md-center">
                                                        <label  class="col-auto ps-0 label-200px">Confirmation Letter from TANESCO</label>
                                                        <div class="col-md-12 col-lg-12  px-0">
                                                            <asp:LinkButton runat="server" ID="lnkTanesco" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkTanesco_Click" />
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>


                                            <tr runat="server" id="trgTanesco" visible="false">
                                                <td></td>
                                            </tr>

                                            <tr runat="server" id="trRoute" visible="false">
                                                <td>
                                                    <div class="form-group row mx-0 mb-3 align-items-md-center">
                                                        <label  class="col-auto ps-0 label-165px">Route Survey</label>
                                                        <div class="col-md-12 col-lg-12  px-0">
                                                            <asp:LinkButton runat="server" ID="lnkRoute" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkRoute_Click" />
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr runat="server" id="trgRoute" visible="false">
                                                <td></td>
                                            </tr>

                                            <tr runat="server" id="trAdvg" visible="false">
                                                <td>
                                                    <div class="form-group row mx-0 mb-3 align-items-md-center">
                                                        <label  class="col-auto ps-0 label-165px">Advertisement</label>
                                                        <div class="col-md-12 col-lg-12  px-0">
                                                            <asp:LinkButton runat="server" ID="lnkAdvg" OnClientClick="window.document.forms[0].target='_blank';" OnClick="lnkAdvg_Click" />
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr runat="server" id="trgAdvg" visible="false">
                                                <td></td>
                                            </tr>

                                        </fieldset>


                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label  class="col-auto ps-0 label-165px">Travel Schedule:</label>
                                            <div class="col-md-12 col-lg-12  px-0">
                                                <asp:LinkButton runat="server" ID="lnkAddSch" CausesValidation="false" OnClick="lnkAddSch_Click">Add/View/Edit Travel Schedule</asp:LinkButton>
                                            </div>
                                        </div>


                                    </div>

                               
                            </div>
                                <fieldset runat="server" id="fsFee" visible="false">
                                    <div>
                                        <h4>Permit Fee & Surcharge Details:</h4>
                                        </div>
                                        <div class="table-responsive mb-1">
                                            <asp:GridView ID="gvSurcharge" CssClass="table table-row-bordered table-row-gray-300 border-0 gy-2 mb-1"
                                            runat="server" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                            HeaderStyle-CssClass="HeaderDatagrid" OnRowDataBound="schRowDataBound" PageSize="10" AllowPaging="true">
                                            <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                            <PagerStyle CssClass="gridViewPager" />
                                            <Columns>
                                                <asp:BoundField DataField="Axel_No" HeaderText="Axle" />
                                                <asp:BoundField DataField="Axel_Actual_Weight" HeaderText="Actual Weight KG" />
                                                <asp:BoundField DataField="Axel_Allowed_Weight" HeaderText="Allowed Weight KG" />
                                                <asp:BoundField DataField="Overload_Weight" HeaderText="Over Weight KG" />
                                                <asp:BoundField DataField="Fees" HeaderText="Fees" />
                                                <asp:BoundField DataField="Axel_Surcharge_Amount" HeaderText="Axle Surcharge" />
            
                                            </Columns>
                                        </asp:GridView>  
                                        </div>

                                        <div class="table-responsive mb-1">
                                            <asp:GridView ID="gvGVM" CssClass="table table-row-bordered table-row-gray-300 border-0 gy-2 mb-1"
                                                runat="server" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                                HeaderStyle-CssClass="HeaderDatagrid" OnRowDataBound="gvmRowDataBound" PageSize="10" AllowPaging="true">
                                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                                <PagerStyle CssClass="gridViewPager" />
                                                <Columns>
                                                    <asp:BoundField DataField="Axel_Configuration" HeaderText="Axle Configuration" />
                                                    <asp:BoundField DataField="GVM_Actual_Weight" HeaderText="Actual GVM KG" />
                                                    <asp:BoundField DataField="GVM_Allowed_Weight" HeaderText="Allowed GVM KG" />
                                                    <asp:BoundField DataField="Overload_GVM_Weight" HeaderText="Over Weight KG" />
                                                    <asp:BoundField DataField="Overload_GVM_Fee" HeaderText="Fees" />
                                                    <asp:BoundField DataField="GVM_Surcharge_Amount" HeaderText="GVM Surcharge" />
                                                </Columns>
                                            </asp:GridView>
                                        </div>

                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label  class="col-auto ps-0 label-165px">Permit Fee (Permit Fee + Surcharge Fee:</label>
                                            <div class="col-md-12 col-lg-12  px-0">
                                                => Permit Fee: <asp:Label  CssClass="col-auto ps-0 label-165px"  runat="server" ID="lblPFee"></asp:Label>
                                            </div>
                                        </div>


                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <!-- <label  class="col-auto ps-0 label-165px">Permit Fee (Permit Fee + Surcharge Fee:</label> -->
                                            <div class="col-md-12 col-lg-12  px-0">
                                                => Surcharge Fee: <asp:Label CssClass="col-auto ps-0 label-165px" runat="server" ID="lblSF"></asp:Label>
                                            </div>
                                        </div>

                                        <div class="form-group row mx-0 mb-3 align-items-md-center">
                                            <label  class="col-auto ps-0 label-165px">Total Permit Fee:</label>
                                            <div class="col-md-12 col-lg-12  px-0">
                                                <asp:Label CssClass="col-auto ps-0 label-165px"  runat="server" ID="lblTF"></asp:Label>
                                            </div>
                                        </div>

                                    </fieldset>

                                        <div>
                                           <h4>Comments :</h4>
                                        </div>
                                        <tr runat="server" id="trgrid" visible="true">
                                            <td>
                                        <div class="table-responsive mb-1">
                                            <asp:GridView ID="gvComments" CssClass="table table-row-bordered table-row-gray-300 border-0 gy-2 mb-1" 
                                            runat="server" AutoGenerateColumns="false" Width="100%" EmptyDataText="No comments exists"  GridLines="None"
                                            AllowPaging="true" PageSize="10" OnPageIndexChanging="gvComments_PageIndexChanging" ShowHeader="false">
                                            <PagerStyle CssClass="gridViewPager" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="Commentd On" ItemStyle-VerticalAlign="Top" ItemStyle-Width="60px">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblCD" runat="server"><br />Commented By:<br />Commented Date:<br />Comment:<br /></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Commented By" ItemStyle-VerticalAlign="Top" ItemStyle-Width="200px">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblCB" runat="server"><br /><%# Eval("FullName") %><br /><%# Eval("Comments_Date") %><br /><%# Eval("Comments") %><br /></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>    
                                            </Columns>
                                        </asp:GridView>
                                        </div>
                                        </td>
                                    </tr>

                                    <tr runat="server" id="trgv" visible="false">
                                        <td></td>
                                    </tr>


                            
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
