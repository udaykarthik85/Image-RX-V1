<%@ Page Title="File Uploads" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FileUploads.aspx.cs" Inherits="ImageRX.FileUploads" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>Please upload scanned images</h2>
    <h3>
        <table style="width:100%; font-size: xx-small; border-color: black">
                        <tr>
                <td style="width: 635px; font-size: small;">
                    <strong>Image 1 Upload:</strong></td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: x-small;">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="403px" />
                            </td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: x-small;">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: small;">
              
                
                  
              
                
                            <strong>Image 2 Upload:</strong></td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: x-small;">
              
                
                  
              
                
                            <asp:FileUpload ID="FileUpload2" runat="server" Width="403px" />
              
                
                  
              
                
                            </td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: x-small;">
              
                
                  
              
                
                            <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
              
                
                  
              
                
                            </td>
            </tr>
                        </table>
    </h3>
  <p>
                <asp:Button class="btn btn-default"  runat="server" aria-autocomplete="inline" Text="Upload & Prepare the Order" OnClick="OrderSummary_Click" />
            &nbsp;
            </p>
    <p>
                &nbsp;</p>
</asp:Content>
