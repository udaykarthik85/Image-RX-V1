<%@ Page Title="CUSHION & COVER MATERIALS" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CushonCover.aspx.cs" Inherits="ImageRX.CushonCover" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-left" style="font-size: large; margin-left: 0px;"><strong>CUSHION &amp; COVER MATERIALS</strong></h2>
    <h3>
        <table style="width:92%; font-size: xx-small; border-color: black" class="nav-justified">
                        <tr>
                <td style="font-size: x-small; " colspan="2">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>BIO-VINYL (BLACK)</asp:ListItem>
                        <asp:ListItem>BIO-VINYL (TAN)</asp:ListItem>
                        <asp:ListItem>BIO-SUEDE (BLACK)</asp:ListItem>
                        <asp:ListItem>BIO-SUEDE (TAN)</asp:ListItem>
                        <asp:ListItem>LEATHER (BLACK)</asp:ListItem>
                        <asp:ListItem>LEATHER (TAN)</asp:ListItem>
                        <asp:ListItem>SPENCO (BLACK 1/8 CUSHION)</asp:ListItem>
                        <asp:ListItem>SPENCO (BLACK 1/16 CUSHION)</asp:ListItem>
                        <asp:ListItem>SPENCO (BLUE 1/8 CUSHION)</asp:ListItem>
                        <asp:ListItem>BAMBOOLON (GRAY - 1/8 CUSHION)</asp:ListItem>
                        <asp:ListItem>BAMBOOLON (GRAY - 1/16 CUSHION)</asp:ListItem>
                        <asp:ListItem>PLASTAZOTE: (BLACK / TAN) 1/8</asp:ListItem>
                        <asp:ListItem>PLASTAZOTE: (BLACK / TAN) 1/16</asp:ListItem>
                        <asp:ListItem>PERFORATED EVA: BLACK - 1/8</asp:ListItem>
                        <asp:ListItem>PERFORATED EVA: BLACK - 1/16</asp:ListItem>
                        <asp:ListItem>PERFORATED EVA: BLUE - 1/8</asp:ListItem>
                        <asp:ListItem>PERFORATED EVA: BLUE - 1/16</asp:ListItem>
                        <asp:ListItem>PERFORATED EVA: RED - 1/8</asp:ListItem>
                        <asp:ListItem>PERFORATED EVA: RED - 1/16</asp:ListItem>
                        <asp:ListItem>MICROCELL PUFF: GREEN CONFETTI - 1/8</asp:ListItem>
                        <asp:ListItem>MICROCELL PUFF: GREEN CONFETTI - 1/16</asp:ListItem>
                        <asp:ListItem>MICROCELL PUFF: PINK CONFETTI - 1/8</asp:ListItem>
                        <asp:ListItem>MICROCELL PUFF: PINK CONFETTI - 1/16</asp:ListItem>
                        <asp:ListItem>MICROCELL PUFF: BLACK CONFETTI - 1/8</asp:ListItem>
                        <asp:ListItem>MICROCELL PUFF: BLACK CONFETTI - 1/16</asp:ListItem>
                        <asp:ListItem>MICROCELL PUFF: CIRCUS CONFETTI - 1/8</asp:ListItem>
                        <asp:ListItem>MICROCELL PUFF: CIRCUS CONFETTI - 1/16</asp:ListItem>
                        <asp:ListItem>MICROCELL PUFF: BLACK - 1/8</asp:ListItem>
                        <asp:ListItem>MICROCELL PUFF: BLACK - 1/16</asp:ListItem>
                        <asp:ListItem>MICROCELL PUFF: BLUE - 1/8</asp:ListItem>
                        <asp:ListItem>MICROCELL PUFF: BLUE - 1/16</asp:ListItem>
                    </asp:RadioButtonList>
                            </td>
                <td style="font-size: x-small;">
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="font-size: x-small; height: 16px;" colspan="2">
                            </td>
                <td style="font-size: x-small; height: 16px;">
                            </td>
            </tr>
                        <tr>
                <td style="font-size: medium; " colspan="2">
                    <strong>MID LAYER CUSION:</strong></td>
                <td style="font-size: x-small;">
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="font-size: x-small; width: 378px;" class="text-left">
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                        <asp:ListItem>NONE</asp:ListItem>
                        <asp:ListItem>1/16</asp:ListItem>
                        <asp:ListItem>1/8</asp:ListItem>
                        <asp:ListItem>NYPLEX</asp:ListItem>
                        <asp:ListItem>PORON</asp:ListItem>
                        <asp:ListItem>S/R PORON</asp:ListItem>
                        <asp:ListItem>45D EVA</asp:ListItem>
                    </asp:RadioButtonList>
                            </td>
                <td style="font-size: x-small; " class="text-left" colspan="2">
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="font-size: x-small; " class="text-center" colspan="2">
                    &nbsp;</td>
                <td style="font-size: x-small;" class="text-center">
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="font-size: x-small; " class="text-left" colspan="2">
                    &nbsp;</td>
                <td style="font-size: x-small;" class="text-center">
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="font-size: large; font-weight: bold; background-color: #FFFFFF;" class="text-left" colspan="3">
                    TOP COVER / UNDERLAY</td>
            </tr>
                        <tr>
                <td style="font-size: small; height: 16px; width: 378px;">
                    <strong>TOP COVER LENGTH:</strong></td>
                <td style="font-size: small; height: 16px; width: 219px;">
                    <strong>UNDERLAY LENGTH:</strong></td>
                <td style="font-size: small; height: 16px;">
                    <strong>UNDERLAY MATERIAL:</strong></td>
            </tr>
                        <tr>
                <td style="font-size: x-small; width: 378px;">
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                        <asp:ListItem>3/4</asp:ListItem>
                        <asp:ListItem>3/4+</asp:ListItem>
                        <asp:ListItem>SULCUS</asp:ListItem>
                        <asp:ListItem>FULL LENGTH</asp:ListItem>
                    </asp:RadioButtonList>
                            </td>
                <td style="font-size: x-small; width: 219px;">
                    <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                        <asp:ListItem>NONE</asp:ListItem>
                        <asp:ListItem>FOREFOOT ONLY</asp:ListItem>
                        <asp:ListItem>FULL LENGTH</asp:ListItem>
                    </asp:RadioButtonList>
                            </td>
                <td style="font-size: x-small;">
                    <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                        <asp:ListItem>BIO CUSHION</asp:ListItem>
                        <asp:ListItem>BIO SUEDE</asp:ListItem>
                        <asp:ListItem>VINYL</asp:ListItem>
                    </asp:RadioButtonList>
                            </td>
            </tr>
                        <tr>
                <td style="font-size: x-small; width: 378px;">
                    &nbsp;</td>
                <td style="font-size: x-small; width: 219px;">
                    &nbsp;</td>
                <td style="font-size: x-small;">
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="font-size: x-small; width: 378px;">
                    &nbsp;</td>
                <td style="font-size: x-small; width: 219px;">
                    &nbsp;</td>
                <td style="font-size: x-small;">
                    &nbsp;</td>
            </tr>
                        </table>
    </h3>
    <p>
        <asp:Button class="btn btn-default"  runat="server" aria-autocomplete="inline" Text="Submit & Proceed to Enter Shell Modifications" OnClick="smods_Click" />

    </p>
</asp:Content>
