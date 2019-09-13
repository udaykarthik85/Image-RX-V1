<%@ Page Title="Orthotic Device Material" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrthoticMM.aspx.cs" Inherits="ImageRX.OrthoticMM" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>
        <table style="width:100%; font-size: xx-small; border-color: black">
            <tr>
                <td style="width: 351px; border-color: black; font-size: medium;">
                    <strong>ORTHOTIC DEVICE MATERIAL</strong></td>
            </tr>
            <tr>
                <td style="width: 351px; border-color: black">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Height="66px" Width="426px">
                        <asp:ListItem>3/16” Polypropylene (Semi-rigid)</asp:ListItem>
                        <asp:ListItem>5/32” Polypropylene (Semi-flex)</asp:ListItem>
                        <asp:ListItem>1/8” Polypropylene (Flex)</asp:ListItem>
                        <asp:ListItem>Graphite</asp:ListItem>
                        <asp:ListItem>Flex</asp:ListItem>
                        <asp:ListItem>Rigid</asp:ListItem>
                        <asp:ListItem>Semi-Rigid</asp:ListItem>
                        <asp:ListItem>Ultra-Rigid</asp:ListItem>
                        <asp:ListItem>Thermo Cork (firm)</asp:ListItem>
                        <asp:ListItem>Birk Cork (soft)</asp:ListItem>
                        <asp:ListItem>Plastizote Diabetic Devices: Hard</asp:ListItem>
                        <asp:ListItem>Plastizote Diabetic Devices: Medium</asp:ListItem>
                        <asp:ListItem>Plastizote Diabetic Devices: Soft</asp:ListItem>
                        <asp:ListItem>Polypro with Shell: 1/16 "Poly</asp:ListItem>
                        <asp:ListItem>Polypro with Shell: 1/8 "Poly</asp:ListItem>
                        <asp:ListItem>Polypro with Shell: 3/16 "Poly</asp:ListItem>
                        <asp:ListItem>Polypro with Plantar Fill: Soft</asp:ListItem>
                        <asp:ListItem>Polypro with Plantar Fill: Medium</asp:ListItem>
                        <asp:ListItem>Polypro with Plantar Fill: Firm</asp:ListItem>
                        <asp:ListItem>Cork & Leather Device: Leather and Cork Arch Fill</asp:ListItem>
                        
                    </asp:RadioButtonList>
                </td>
            </tr>
                        <tr>
                <td style="width: 351px; border-color: black">
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="width: 351px; height: 29px; border-color: black; font-size: medium;">
                    <strong>HEEL CUP DEPTH:</span></strong></td>
            </tr>
                        <tr>
                <td style="width: 351px; border-color: black">
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem>LOW: (5-7mm)</asp:ListItem>
                        <asp:ListItem>MED: (10-12mm)</asp:ListItem>
                        <asp:ListItem>DEEP: (15-17mm)</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:RadioButtonList>
                            </td>
            </tr>
                        <tr>
                <td style="width: 351px; border-color: black">
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="153px"></asp:TextBox>
                            </td>
            </tr>
                        <tr>
                <td style="width: 907px; font-size: x-small;">*Heel Cup depth measured from inside without any soft additions.<br />
                    Additions may change overall depth of heel counter on finished device.</span></td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
    </h3>
       <p>
                <asp:Button class="btn btn-default"  runat="server" aria-autocomplete="inline" Text="Submit & Proceed to Posting" OnClick="Posting_Click" />
            </p>
</asp:Content>
