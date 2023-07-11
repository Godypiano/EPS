<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inbox_old.aspx.cs" MasterPageFile="~/Default.Master" Inherits="PresentationLayer.Permit.Inbox_old" %>

<%@ MasterType VirtualPath="~/Default.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:UpdatePanel ID="upRegister" runat="server">
            <ContentTemplate>




                
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
      class="card-body d-flex justify-content-between flex-column"
    >
      <div class="row">
    
      <div class="table-responsive mb-1">
         <asp:GridView ID="gvPermit" Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
                                runat="server" EmptyDataText="No data exists." ShowHeaderWhenEmpty="true" OnPageIndexChanging="gvPermit_PageIndexChanging" AutoGenerateColumns="false" Width="100%" AlternatingRowStyle-CssClass="AlternateItemStyle"
                                HeaderStyle-CssClass="HeaderDatagrid" PageSize="10" AllowPaging="true">
                                <RowStyle HorizontalAlign="Left" CssClass="FirstItemStyle" />
                                <PagerStyle CssClass="gridViewPager" />
                                <Columns>
                                    <asp:TemplateField HeaderText="Application No">
                                        <ItemTemplate>
                                            <asp:LinkButton runat="server" ID="lnkView" Text='<%#Eval("Permit_Application_No")%>' OnClick="lnkView_Click"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="ID" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="lblID" Text='<%#Eval("Application_No") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:BoundField DataField="Cargo_Details" HeaderText="Cargo Details" />
                                    <asp:BoundField DataField="Route_From" HeaderText="Route:From" />
                                    <asp:BoundField DataField="Route_To" HeaderText="Route:To" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />

                                </Columns>
                            </asp:GridView>
      </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    <!--End::Post-->
    
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
