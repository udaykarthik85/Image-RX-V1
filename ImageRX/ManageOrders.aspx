<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageOrders.aspx.cs" Inherits="ImageRX.ManageOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 189px;
            height: 81px;
        }
        .auto-style3 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <div class="auto-style1">
            <br />
            <img alt="" class="auto-style2" src="Images/IOLLogo%20-%20Smaller.jpg" /></div>
    
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="MDset" HorizontalAlign="Center" CssClass="auto-style3">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="CreatedDate" HeaderText="CreatedDate" SortExpression="CreatedDate" />
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" SortExpression="OrderID" />
                <asp:BoundField DataField="Cast_Number" HeaderText="Cast_Number" SortExpression="Cast_Number" />
                <asp:BoundField DataField="Status" HeaderText="Status" ReadOnly="True" SortExpression="Status" />
                <asp:BoundField DataField="Physician" HeaderText="Physician" ReadOnly="True" SortExpression="Physician" />
                <asp:BoundField DataField="patient_Name" HeaderText="patient_Name" ReadOnly="True" SortExpression="patient_Name" />
                <asp:BoundField DataField="Daterequired" HeaderText="Daterequired" SortExpression="Daterequired" />
                <asp:HyperLinkField DataNavigateUrlFields="OrderID" DataNavigateUrlFormatString="http://imagerx.azurewebsites.net/ReportPage?id={0}" Text="Print" />
                <asp:HyperLinkField DataNavigateUrlFields="OrderID" DataNavigateUrlFormatString="http://imagerx.azurewebsites.net/OrderAction?id={0}" Text="Process" />
                <asp:HyperLinkField DataNavigateUrlFields="OrderID" DataNavigateUrlFormatString="https://imagerx.azurewebsites.net/Invoice?id={0}" Text="Invoice" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    
        <asp:SqlDataSource ID="MDset" runat="server" ConnectionString="<%$ ConnectionStrings:ImageOrthoDBConnectionString %>" SelectCommand="SELECT [CreatedDate], [OrderID], [Cast_Number], [Status], [Physician], [patient_Name], [Daterequired] FROM [Dashboard] ORDER BY [OrderID]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
