<%@ Page Title="Order Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="ImageRX.OrderPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Final Order Summary</h2>
    <Div>
        <table style="width:auto; font-size: xx-small; border-color: black;">
                        <tr>
                <td style="font-size: small;" class="text-center" colspan="2">
                    <img alt="" src="Images/image.jpg" style="width: 215px; height: 73px" /></td>
            </tr>
                        <tr>
                <td style="width: 1383px; font-size: medium;">
                    <strong>Patient Information</strong></td>
                <td style="width: 1493px; font-size: medium;">
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="width: 1383px; font-size: small;">
                    <strong>Client Number:</strong>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Patient Name: </strong>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            </td>
                <td style="width: 1493px; font-size: small;">
                    New Order:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" style="font-size: small"></asp:TextBox>
                            </td>
            </tr>
                        <tr>
                <td style="width: 1383px; font-size: small;">
                    <strong>Show Size:</strong><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    &nbsp;&nbsp;<strong>Height:</strong>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
&nbsp; &nbsp;<strong>Weight:</strong>
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<strong>Gender</strong>:<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                            </td>
                <td style="width: 1493px; font-size: small;">
                    Lab Received:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" style="font-size: small"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                <td style="width: 1383px; font-size: medium;">
                    <strong>Order Summary</strong></td>
                <td style="width: 1493px; font-size: medium;">
                    M<span style="font-size: small">anufacturing Start:&nbsp;&nbsp;
                    <asp:Label ID="Label27" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:TextBox ID="TextBox3" runat="server" style="font-size: small"></asp:TextBox>
                            </td>
            </tr>
                        <tr>
                <td style="width: 1383px; font-size: small;">
                    <strong>Orthotic Module Material: </strong>
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                            </td>
                <td style="width: 1493px; font-size: small;">
                    Station 1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label28" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" style="font-size: small"></asp:TextBox>
                            </td>
            </tr>
                        <tr>
                <td style="width: 1383px; font-size: x-small;">
              
                
                    
              
                
                            <span style="font-size: small"><strong>Heel Cup Depth: </strong>
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp; Other:</strong><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    </span>
              
                
                            </td>
                <td style="width: 1493px; font-size: x-small;">
              
                
                    
              
                
                            <span style="font-size: small">Station 2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label34" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </span>
                            <asp:TextBox ID="TextBox10" runat="server" style="font-size: small"></asp:TextBox>
                            </td>
            </tr>
                        <tr>
                <td style="width: 1383px; font-size: x-small;">
              
                
                    &nbsp;</td>
                <td style="width: 1493px; font-size: x-small;">
              
                
                    <span style="font-size: small">Station 3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label35" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:TextBox ID="TextBox11" runat="server" style="font-size: small"></asp:TextBox>
                            </td>
            </tr>
                        <tr>
                <td style="width: 1383px; font-size: small;">
              
                
                    <strong>Rear Foot Posting: </strong>
                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
              
                
                            </td>
                <td style="width: 1493px; font-size: small;">
              
                
                    Station 4:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label36" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox12" runat="server" style="font-size: small"></asp:TextBox>
                            </td>
            </tr>
                        <tr>
                <td style="width: 1383px; font-size: small;">
              
                
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
              
                
                            </td>
                <td style="width: 1493px; font-size: small;">
              
                
                    Manufacturer Quality:&nbsp;
                    <asp:Label ID="Label32" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox8" runat="server" style="font-size: small"></asp:TextBox>
                            </td>
            </tr>
                        <tr>
                <td style="width: 1383px; font-size: small;">
              
                
                    <strong>L: 
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>R: </strong>
                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
              
                
                            </td>
                <td style="width: 1493px; font-size: small;">
              
                
                    Ship by Manufracture:
                    <asp:Label ID="Label33" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox9" runat="server" style="font-size: small"></asp:TextBox>
                            </td>
            </tr>
                        <tr>
                <td style="width: 1383px; font-size: x-small;">
              
                
                    &nbsp;</td>
                <td style="width: 1493px; font-size: x-small;">
              
                
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="width: 1383px; font-size: small;">
              
                
                    <strong>Fore Foot Posting: </strong>
                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
              
                
                            </td>
                <td style="width: 1493px; font-size: small;" class="text-center">
              
                
                    <asp:Button ID="Button1" runat="server" Text="Move to Next Stage" Width="242px" OnClick="Button1_Click" />
                            </td>
                        </tr>
                        <tr>
                <td style="width: 1383px; font-size: small;">
              
                
                    <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
              
                
                            </td>
                <td style="width: 1493px; font-size: small;">
              
                
                    &nbsp;</td>
                        </tr>
                        <tr>
                <td style="width: 1383px; font-size: small;">
              
                
                    <strong>L: 
                    <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp; <strong>R: </strong>
                    <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
              
                
                            </td>
                <td style="width: 1493px; font-size: small;">
              
                
                    &nbsp;</td>
                        </tr>
                        <tr>
                <td style="width: 1383px; font-size: x-small;">
              
                
                    &nbsp;</td>
                <td style="width: 1493px; font-size: x-small;">
              
                
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="width: 1383px; font-size: small;">
              
                
                    <strong>Orthotic Module Shape: </strong>&nbsp;<asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
              
                
                            </td>
                <td style="width: 1493px; font-size: small;">
              
                
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="width: 1383px; font-size: small;">
              
                
                    <strong>Orthotic Services:</strong>&nbsp;
                    <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
              
                
                            </td>
                <td style="width: 1493px; font-size: small;">
              
                
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="width: 1383px; font-size: x-small;">
              
                
                    &nbsp;</td>
                <td style="width: 1493px; font-size: x-small;">
              
                
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="width: 1383px; font-size: small;">
              
                
                    <strong>Cushion &amp; Cover Materials:</strong>
                    <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
              
                
                            </td>
                <td style="width: 1493px; font-size: small;">
              
                
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="width: 1383px; font-size: small;">
              
                
                    <strong>Mid Layer Cushion: </strong>&nbsp;<asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
              
                
                            </td>
                <td style="width: 1493px; font-size: small;">
              
                
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="width: 1383px; font-size: small;">
              
                
                    <strong>Top Cover Length:</strong>
                    <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                    <br />
                    Underlay Length:</strong>
                    <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Underlay Material:</strong>
                    <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
              
                
                            </td>
                <td style="width: 1493px; font-size: small;">
              
                
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="width: 1383px; font-size: x-small;">
              
                
                    &nbsp;</td>
                <td style="width: 1493px; font-size: x-small;">
              
                
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="width: 1383px; font-size: x-small;">
              
                
                    Image:</td>
                <td style="width: 1493px; font-size: x-small;">
              
                
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="width: 1383px; font-size: x-small;">
              
                
                    <img alt="httphandler"  src="ImgHandler.ashx" runat="server" style="width: 200px; height: 200px" ></td>
                <td style="width: 1493px; font-size: x-small;">
              
                
                    &nbsp;</td>
            </tr>
                        </table>
    </Div>
  <p>
            &nbsp;
            </p>
</asp:Content>
