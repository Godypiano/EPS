<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Intigration.aspx.cs" Inherits="PresentationLayer.Intigration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="gvOLP" Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
            PageSize="10" AllowPaging="true" OnPageIndexChanging="gvOLP_PageIndexChanging"
            runat="server" EmptyDataText="No data exists." ShowHeaderWhenEmpty="true" AutoGenerateColumns="false" Width="100%">
            <RowStyle HorizontalAlign="Left" />
            <Columns>
                <asp:BoundField DataField="PermitID" HeaderText="PermitID" />                                                   
                <asp:BoundField DataField="SerialNO" HeaderText="SerialNO" />
                <asp:BoundField DataField="MS" HeaderText="MS" />
                <asp:BoundField DataField="POBOXNO" HeaderText="POBOXNO" />
                <asp:BoundField DataField="LetterNO" HeaderText="LetterNO" />

                <asp:BoundField DataField="LetterOF" HeaderText="LetterOF" />                                                   
                <asp:BoundField DataField="EquipmentFrom" HeaderText="EquipmentFrom" />
                <asp:BoundField DataField="EquipmentTO" HeaderText="EquipmentTO" />
                <asp:BoundField DataField="EquipmentVia" HeaderText="EquipmentVia" />
                <asp:BoundField DataField="ValidDays" HeaderText="ValidDays" />

                <asp:BoundField DataField="Trips" HeaderText="Trips" />                                                   
                <asp:BoundField DataField="OriginatingOfficer" HeaderText="OriginatingOfficer" />
                <asp:BoundField DataField="AuthorizingOfficer" HeaderText="AuthorizingOfficer" />
                <asp:BoundField DataField="TruckRegNo" HeaderText="TruckRegNo" />
                <asp:BoundField DataField="Cargo" HeaderText="Cargo" />

                 <asp:BoundField DataField="AxleConfiguration" HeaderText="AxleConfiguration" />                                                   
                <asp:BoundField DataField="Dimensions" HeaderText="Dimensions" />
                <asp:BoundField DataField="GrossWeight" HeaderText="GrossWeight" />
               
            </Columns>
        </asp:GridView>
        <br /><br />
        <asp:GridView ID="gvOLPC" Style="border-width: 0px; border-style: None; width: 100%; border-collapse: collapse;"
            PageSize="10" AllowPaging="true" OnPageIndexChanging="gvOLPC_PageIndexChanging"
            runat="server" EmptyDataText="No data exists." ShowHeaderWhenEmpty="true" AutoGenerateColumns="false" Width="100%">
            <RowStyle HorizontalAlign="Left" />
            <Columns>
                <asp:BoundField DataField="PermitID" HeaderText="PermitID" />                                                   
                <asp:BoundField DataField="TrafficPolice" HeaderText="TrafficPolice" />
                <asp:BoundField DataField="Vehicles" HeaderText="Vehicles" />
                <asp:BoundField DataField="VehicleRegNo" HeaderText="VehicleRegNo" />
                
                <asp:BoundField DataField="USD" HeaderText="USD" />                                                   
                <asp:BoundField DataField="TZS" HeaderText="TZS" />
                <asp:BoundField DataField="ERVNO" HeaderText="ERVNO" />
                <asp:BoundField DataField="ERVDate" HeaderText="ERVDate" />
                
               
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
