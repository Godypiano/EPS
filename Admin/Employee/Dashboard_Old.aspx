<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard_Old.aspx.cs" MasterPageFile="~/Default_custom.Master" Inherits="PresentationLayer.Admin.Employee.Dashboard_Old" %>

<%@ MasterType VirtualPath="~/Default_custom.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #dashoboard__chart img {
            max-width: 100% !important;
            height: auto !important;
        }

        .dashboard__links {
            display: flex;
        }

        .dashboard__link-item {
            /* max-width: 90px; */
            text-align: center;
            font-weight: 700;
            font-size: 1rem;
            /* margin: 0 4px; */
            padding-bottom: .5rem;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        @media screen and (min-width: 348px) {
            .col-6 {
                width: 33.3333%;
            }
        }

        @media screen and (min-width: 460px) {
            .col-6 {
                width: 24%;
            }
        }

        @media screen and (min-width: 550px) {
            .col-6 {
                width: 20%;
            }
        }

        @media screen and (min-width: 660px) {
            .col-6 {
                width: 16%;
            }
        }

        .counter_link {
            width: 90px;
            text-align: center;
            height: 65px;
            color: white;
            font-weight: bold;
            font-size: 25px;
            border-radius: 0.5rem;
            line-height: 65px;
        }

        .counter_link span>a,
        .counter_link span {
            display: inline-block;
            width: 100%;
            color: #fff;
            text-shadow: 1px 0px 1px rgba(0, 0, 0, 0.25),
                -1px 0px 1px rgba(0, 0, 0, 0.25),
                0px -1px 1px rgba(0, 0, 0, 0.25),
                0px 1px 1px rgba(0, 0, 0, 0.25);
        }

        .counter_blue {
            background-color: blue;
        }

        .counter_orange {
            background-color: orange;
        }

        .counter_khaki {
            background-color: khaki;
        }

        .counter_brown {
            background-color: brown;
        }

        .counter_lightblue {
            background-color: lightblue;
        }

        .counter_green {
            background-color: green;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div>
        <asp:UpdatePanel ID="upRegister" runat="server">
            <ContentTemplate>

  <!--begin::Toolbar-->
  <div class="toolbar mb-5" id="kt_toolbar">
    <div class="container-fluid d-flex flex-stack flex-wrap flex-sm-nowrap px-4">
        <!--begin::Info-->
        <div class="d-flex flex-column align-items-start justify-content-center flex-wrap me-2">
            <!--begin::Title-->
            <h1 class="text-dark fw-bolder my-1 fs-2">
                <asp:Label runat="server" ID="lbldesi" CssClass="hd1"></asp:Label>
                <asp:Label CssClass="hd1">
                    Dashboard - View All Applications Status Count</asp:Label>
            </h1>
            <!--end::Title-->
            <!--begin::Breadcrumb-->
            <ul class="breadcrumb fw-bold fs-base my-1">
                <li class="breadcrumb-item text-dark">Home</li>
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
                      

                        <div id="dashoboard__chart" class="mb-5">
                            <asp:CHART id="chEmp" runat="server" Palette="BrightPastel" BackColor="#D3DFF0" Height="396px" Width="712px" BorderlineDashStyle="Solid" BackGradientStyle="TopBottom" BorderWidth="2" BorderColor="26, 59, 105" IsSoftShadows="False" >
							<legends>
								<asp:Legend TitleFont="Microsoft Sans Serif, 8pt, style=Bold" BackColor="Transparent" IsEquallySpacedItems="True" Font="Trebuchet MS, 8pt, style=Bold" IsTextAutoFit="False" Name="Default"></asp:Legend>
							</legends>
							<borderskin SkinStyle="Emboss"></borderskin>
							<series>
								<asp:Series ChartArea="Area1" XValueType="Double" Name="Series1" ChartType="Pie" Font="Trebuchet MS, 8.25pt, style=Bold" CustomProperties="DoughnutRadius=25, PieDrawingStyle=Concave, CollectedLabel=Other, MinimumRelativePieSize=20" MarkerStyle="Circle" BorderColor="64, 64, 64, 64" Color="180, 65, 140, 240" YValueType="Double">
									<points>
										<asp:DataPoint LegendText="Incoming" CustomProperties="OriginalPointIndex=1"  />
										<asp:DataPoint LegendText="Outgoing" CustomProperties="OriginalPointIndex=2"  />
									</points>
								</asp:Series>
							</series>
							<chartareas>
								<asp:ChartArea Name="Area1" BorderColor="64, 64, 64, 64" BackSecondaryColor="Transparent" BackColor="Transparent" ShadowColor="Transparent" BackGradientStyle="TopBottom">
									<axisy2>
										<MajorGrid Enabled="False" />
										<MajorTickMark Enabled="False" />
									</axisy2>
									<axisx2>
										<MajorGrid Enabled="False" />
										<MajorTickMark Enabled="False" />
									</axisx2>
									<area3dstyle PointGapDepth="900" Rotation="162" IsRightAngleAxes="False" WallWidth="25" IsClustered="False" />
									<axisy LineColor="64, 64, 64, 64">
										<LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
										<MajorGrid LineColor="64, 64, 64, 64" Enabled="False" />
										<MajorTickMark Enabled="False" />
									</axisy>
									<axisx LineColor="64, 64, 64, 64">
										<LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
										<MajorGrid LineColor="64, 64, 64, 64" Enabled="False" />
										<MajorTickMark Enabled="False" />
									</axisx>
								</asp:ChartArea>
							</chartareas>
						</asp:CHART>
                        </div>

                        <div class="dashboard__links row">
                            <div class="dashboard__link-item col-4 col-md-4">
                                <div class="counter_link counter_blue">
                                    <asp:Label runat="server" ID="lblinc"></asp:Label>
                                </div>
                                <div class="counter_title">
                                    <Label>Incoming</Label>
                                </div>
                            </div>

                                <div class="dashboard__link-item col-4 col-md-4">
                                    <div class="counter_link counter_orange">
                                        <asp:Label runat="server" ID="lblout"></asp:Label>
                                    </td>
                                    </div>
                                    <div class="counter_title">
                                        <Label>Outgoing</Label>
                                    </div>
                                </div>

                                <div class="dashboard__link-item col-4 col-md-4">
                                    <tr>
                                    <td runat="server" id="tddse" visible="false" valign="middle" >
                                                <div class="counter_link counter_green">
                                                    <asp:Label runat="server" ID="lblpi"></asp:Label>
                                                </div>
                                </td>
                                </tr>
                                <tr>
                                <td runat="server" id="lbltdwpi" visible="false" valign="middle" >
                                        <div class="counter_title">
                                            <asp:Label runat="server" ID="lblwpi">Waiting for Permit Issuing</asp:Label>
                                        </div>
                                </td>
                            </tr>
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
    </div>
</asp:Content>
