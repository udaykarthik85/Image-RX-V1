<%@ Page Title="Order Action" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderAction.aspx.cs" Inherits="ImageRX.OrderAction" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Order Action</h2>
    <Div>
        <table style="width:844px; font-size: xx-small; border-color: black;">
                        <tr>
                <td style="font-size: small;" class="text-center">
                    <img alt="" src="Images/image.jpg" style="width: 215px; height: 73px" /></td>
            </tr>
                        <tr>
                <td style="width: 1493px; font-size: medium;">
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="width: 1493px; font-size: small;">
                    New Order:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" style="font-size: small"></asp:TextBox>
                            </td>
            </tr>
                        <tr>
                <td style="width: 1493px; font-size: small;">
                    Lab Received:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" style="font-size: small"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                <td style="width: 1493px; font-size: small;">
                    Design Ready:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label37" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox13" runat="server" style="font-size: small"></asp:TextBox>
                            &nbsp;
              
                
                    <asp:Button ID="Button3" runat="server" Text="Upload Designs" Width="242px" OnClick="Upload_Click" />
                            </td>
                        </tr>
                        <tr>
                <td style="width: 1493px; font-size: small;">
                    Lab Ready:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label ID="Label38" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox14" runat="server" style="font-size: small"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                <td style="width: 1493px; font-size: medium;">
                    M<span style="font-size: small">anufacturing Start:&nbsp;
                    <asp:Label ID="Label27" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:TextBox ID="TextBox3" runat="server" style="font-size: small"></asp:TextBox>
                            </td>
            </tr>
                        <tr>
                <td style="width: 1493px; font-size: small;">
                    Station 1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label28" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" style="font-size: small"></asp:TextBox>
                            </td>
            </tr>
                        <tr>
                <td style="width: 1493px; font-size: x-small;">
              
                
                    
              
                
                            <span style="font-size: small">Station 2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label34" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </span>
                            <asp:TextBox ID="TextBox10" runat="server" style="font-size: small"></asp:TextBox>
                            </td>
            </tr>
                        <tr>
                <td style="width: 1493px; font-size: x-small;">
              
                
                    <span style="font-size: small">Station 3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label35" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:TextBox ID="TextBox11" runat="server" style="font-size: small"></asp:TextBox>
                            </td>
            </tr>
                        <tr>
                <td style="width: 1493px; font-size: small;">
              
                
                    Station 4:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label36" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox12" runat="server" style="font-size: small"></asp:TextBox>
                            </td>
            </tr>
                        <tr>
                <td style="width: 1493px; font-size: small;">
              
                
                    Manufacturer Quality:&nbsp;<asp:Label ID="Label32" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox8" runat="server" style="font-size: small"></asp:TextBox>
                            </td>
            </tr>
                        <tr>
                <td style="width: 1493px; font-size: small;">
              
                
                    Ship by Manufracture:<asp:Label ID="Label33" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox9" runat="server" style="font-size: small"></asp:TextBox>
                            </td>
            </tr>
                        <tr>
                <td style="width: 1493px; font-size: x-small;">
              
                
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="width: 1493px; font-size: small;" class="text-center">
              
                
                    <asp:Button ID="Button1" runat="server" Text="Move to Next Stage" Width="242px" OnClick="Button1_Click" />
                            &nbsp;
              
                
                    <asp:Button ID="Button2" runat="server" Text="Go to Order Summmary" Width="242px" OnClick="Button2_Click" />
                            </td>
                        </tr>
                        </table>
    </Div>
  <p>
            &nbsp;
            </p>
</asp:Content>
