<%@ Page Title="Final Order Summary" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="ImageRX.Invoice" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;</h2>
    <h3>
        &nbsp;<table style="width:635px; font-size: xx-small; border-color: black">
                        <tr>
                <td style="width: 635px; font-size: small;" class="text-right">
                    <img alt="" src="Images/image.jpg" style="width: 133px; height: 73px" class="float-left" /><br />
                    <br />
                    <strong><span style="font-size: large; font-family: Calibri;">Invoice&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size: large">&nbsp;</span></strong><span style="font-size: large"><br />
                    </span>
                    <br />
                            </td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: small; font-family: Calibri;" class="text-left">
                    Image Orthopedics</td>
            </tr>
                        <tr>
                <td style="border-style: solid; border-width: 1px; padding: 1px 4px; width: 635px; font-size: small; height: 23px; font-family: 'Calibri Light';">
                    Cast Number:<strong><span style="font-size: medium">&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong> 
                    <br />
                    Patient Name:<strong>
                    <asp:Label ID="Label2" runat="server" Text="Label" style="font-size: medium"></asp:Label>
                            <br />
                            </strong>
                            </td>
            </tr>
                        <tr>
                <td style="border-style: solid; border-width: 1px; padding: 1px 4px; width: 635px; font-size: small;">
                    Customer Name:<strong> <asp:Label ID="Label28" runat="server" Text="Label" style="font-size: medium"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </strong>
                            </td>
            </tr>
                        <tr>
                <td style="border-style: solid; border-width: 1px; padding: 1px 4px; width: 635px; font-size: small;">
                    Billing Address:<strong><br />
                    <asp:Label ID="Label3" runat="server" Text="Label" style="font-size: medium"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                            </td>
                        </tr>
                        <tr>
                <td style="width: 635px; font-size: small;" class="text-center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="630px">
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" ReadOnly="True" />
                            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ImageOrthoDBConnectionString %>" SelectCommand="Select 
OS.CustomerName,
C.[BillAddr Line1] +', ' + C.[BillAddr City]+', '+C.[BillAddr CountrySubDivisionCode]+', '+C.[BillAddr PostalCode] as 'Billing Address',
C.ID as CustomerRefID,
Case when OS.No_of_Orthotics = 'One Pair' then 1 
when OS.No_of_Orthotics = '2 Identical Pairs' then 2 
else 0 end as qty,
Case when OS.BaseShell like '%Graphite%' then 1 else 0 end as BS_Graphite,
case when len(OS.Post_Material ) &gt;1 then 1 else 0 end as ChargePosting,
QBI.[Name], QBI.ID, QBI.UnitPrice
from OrderSummary OS
join [price by customer] p on P.Client_Account = OS.CustomerName 
join QBO_Items QBI on QBI.[Description] = P.Item_Description and QBI.UnitPrice = convert(nvarchar,P.Sales_Price) 
join QBO_Customer C on C.CompanyName = OS.CustomerName
where OS.Order_ID = @OID
">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="OID" QueryStringField="ID" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                <td style="width: 635px; font-size: small; height: 102px;">
                    &nbsp;</td>
                        </tr>
                        <tr>
                <td style="width: 635px; font-size: small; height: 17px;" class="text-center">
                    <asp:Button ID="Button1" runat="server" Text="Add to Quick Books" Width="165px" OnClick="Button1_Click" />
                            </td>
                        </tr>
                        </table>
    </h3>
  <p>
            &nbsp;
            </p>
</asp:Content>
