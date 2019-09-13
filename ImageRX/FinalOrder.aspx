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
                    <strong>Client Number:</strong>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Patient Name: </strong>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
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
                <td style="width: 635px; font-size: medium;">
                    <strong>Order Summary</strong></td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: small;">
                    <strong>Orthotic Module Material:</strong>
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                            </td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: x-small;">
              
                
                    
              
                
                            <span style="font-size: small"><strong>Heel Cup Depth: </strong>
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp; Other:</strong><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    </span>
              
                
                            </td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: x-small;">
              
                
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: small;">
              
                
                    <strong>Rear Foot Posting: </strong>
                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
              
                
                            </td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: small;">
              
                
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
              
                
                            </td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: small;">
              
                
                    <strong>L: </strong>
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp; <strong>R: </strong>
                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
              
                
                            </td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: x-small;">
              
                
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: small;">
              
                
                    <strong>Fore Foot Posting: </strong>
                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
              
                
                            </td>
                        </tr>
                        <tr>
                <td style="width: 635px; font-size: small;">
              
                
                    <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
              
                
                            </td>
                        </tr>
                        <tr>
                <td style="width: 635px; font-size: small;">
              
                
                    <strong>L: </strong>
                    <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp; <strong>R: </strong>
                    <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
              
                
                            </td>
                        </tr>
                        <tr>
                <td style="width: 635px; font-size: x-small;">
              
                
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: small;">
              
                
                    <strong>Orthotic Module Shape: </strong>&nbsp;<asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
              
                
                            </td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: small;">
              
                
                    <strong>Orthotic Services:</strong>&nbsp;
                    <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
              
                
                            </td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: x-small;">
              
                
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: small;">
              
                
                    <strong>Cushion &amp; Cover Materials:</strong>
                    <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
              
                
                            </td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: small;">
              
                
                    <strong>Mid Layer Cushion: </strong>&nbsp;<asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
              
                
                            </td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: small;">
              
                
                    <strong>Top Cover Length:</strong>
                    <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                    <br />
                    Underlay Length:</strong>
                    <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Underlay Material:</strong>
                    <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
              
                
                            </td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: x-small;">
              
                
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: x-small;">
              
                
                    Image:</td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: x-small;">
              
                
                    <asp:Image ID="Image1"  ImageUrl="ImgHandler.ashx.cs" runat="server" style="width: 200px; height: 200px" /></td>
            </tr>
                        </table>
    </h3>
  <p>
                <asp:Button class="btn btn-default"  runat="server" aria-autocomplete="inline" Text="Submit the Order" OnClick="OrderSummary_Click" />
            &nbsp;
            </p>
</asp:Content>
