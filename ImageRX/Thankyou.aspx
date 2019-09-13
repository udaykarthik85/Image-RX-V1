<%@ Page Title="Thank You" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Thankyou.aspx.cs" Inherits="ImageRX.Thankyou" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3 style="width: 640px">
        <table style="width:635px; font-size: xx-small; border-color: black">
                        <tr>
                <td style="width: 635px; font-size: small;" class="text-center">
                    <img alt="" src="Images/image.jpg" style="width: 209px; height: 102px" /></td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: medium;" class="text-center">
                    <span style="font-weight: bold">Thank you for your Order</span></td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: x-small;" class="text-center">
              
                
                    Here is your Order ID Number: <strong>
                    <asp:Label ID="Label1" runat="server" style="font-size: small" Text="Label"></asp:Label>
                    </strong>
                    <br />
                    Status: <strong>
                    <asp:Label ID="Label2" runat="server" style="font-size: small" Text="Label"></asp:Label>
                    </strong></td>
            </tr>
                        </table>
    </h3>
  <p>
            &nbsp;
            </p>
</asp:Content>
