<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ImageRX._Home" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row" style="width:843px">
        <div class="col-md-4" style="left: 0px; top: 0px; height: 109px; width: 811px;">
            <p class="text-center" style="width: 825px">
                <br />
                <img alt="" src="Images/image.jpg" style="width: 144px; height: 79px" /></p>
        </div>
       
                <table style="width: 99%;">
                    <tr>
                        <td class="text-center">
                            <img alt="New Order" src="Images/NewOrder.png" style="width: 167px; height: 172px" /></td>
                        <td class="text-center">
                            <img alt="manage" src="Images/EditOrder.png" style="width: 169px; height: 172px" /></td>
                        <td class="text-center">
                            <img alt="Report" src="Images/Report.png" style="width: 166px; height: 172px" /></td>
                    </tr>
                    <tr>
                        <td class="text-center">
                            <asp:Button ID="Button1" runat="server" Text="New Order" Width="118px" OnClick="Button1_Click" />
                        </td>
                        <td class="text-center">
                            <asp:Button ID="Button2" runat="server" Text="Manage Orders" Width="122px" OnClick="Button2_Click" />
                        </td>
                        <td class="text-center">
                            <asp:Button ID="Button3" runat="server" Text="Reports" Width="121px" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
        </table>
            <br />
            <br />
       
    </div>

</asp:Content>
