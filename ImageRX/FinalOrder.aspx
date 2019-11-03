<%@ Page Title="Final Order Summary" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FinalOrder.aspx.cs" Inherits="ImageRX.FinalOrder" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Final Order Summary</h2>
    <h3>
        <table style="width:635px; font-size: xx-small; border-color: black">
                        <tr>
                <td style="width: 635px; font-size: small;" class="text-center">
                    <img alt="" src="Images/image.jpg" style="width: 215px; height: 73px" /></td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: medium;">
                    <strong>Patient Information</strong></td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: small;">
                    <strong>Cast Number:</strong>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Patient Name: </strong>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            </td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: small;">
                    <strong>Customer Name:</strong><asp:Label ID="Label28" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>DateRequired:</strong><asp:Label ID="Label29" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: small;">
                    <strong>Show Size:</strong><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Height:</strong>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Weight:</strong>
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Gender</strong>:<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                <td style="width: 635px; font-size: small;">
                    <strong>Show Type:</strong><asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong># of Orthotics:</strong>
                    <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        </tr>
                        <tr>
                <td style="width: 635px; font-size: small;">
                    <strong>Foot Impression:</strong>
                    <asp:Label ID="Label30" runat="server" Text="Label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        </tr>
                        <tr>
                <td style="width: 635px; font-size: small; height: 102px;">
                    <strong>Diagnosis:</strong><asp:Label ID="Label27" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            </td>
                        </tr>
                        <tr>
                <td style="width: 635px; font-size: small;">
                    &nbsp;</td>
                        </tr>
                        </table>
    </h3>
  <p>
                <asp:Button class="btn btn-default"  runat="server" aria-autocomplete="inline" Text="Submit the Order" OnClick="OrderSummary_Click" />
            &nbsp;
            </p>
</asp:Content>
