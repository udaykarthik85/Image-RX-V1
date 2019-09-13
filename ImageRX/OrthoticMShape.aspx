<%@ Page Title="ORTHOTIC MODULE SHAPE" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrthoticMShape.aspx.cs" Inherits="ImageRX.OrthoticMShape" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-left" style="font-size: large"><strong>ORTHOTIC MODULE SHAPE</strong></h2>
    <h3>
        <table style="width:100%; font-size: xx-small; border-color: black">
                        <tr>
                <td style="font-size: x-small;" class="text-left">
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                        <asp:ListItem Value="DRESS-STANDARD">DRESS-STANDARD: A Narrow device. Narrower through the medial and lateral aspect of the module with a narrower heel counter.</asp:ListItem>
                        <asp:ListItem Value="DRESS-Cobra">DRESS-Cobra: A Narrow device. Narrower through the medial and lateral aspect of the module with a narrower heel counter.</asp:ListItem>
                        <asp:ListItem Value="DRESS-High Heel">DRESS-High Heel: A Narrow device. Narrower through the medial and lateral aspect of the module with a narrower heel counter.</asp:ListItem>
                        <asp:ListItem Value="STANDARD">STANDARD: Medium width orthotic with a general shapeto fit into most casual / running shoes.</asp:ListItem>
                        <asp:ListItem Value="MARATHON">MARATHON: Medium width orthotic shaped for wider casual shoes or boots. A heel hole and plug comes standard.</asp:ListItem>
                        <asp:ListItem Value="SPORT">SPORT: Wider shape with a low medial flange and EVA rearfoot post. Built to support active patients providing lateral and medial support.</asp:ListItem>
                        <asp:ListItem Value="NARROW SPORT">NARROW SPORT: A unique narrow shape with a low medial flange and EVA rearfoot post. Designed for shoes as sports cleats.</asp:ListItem>
                        <asp:ListItem Value="DIABETIC">DIABETIC: Wider shape, flexible shell with soft arch fill. Built to fit into wider casual or orthopedic footwear.</asp:ListItem>
                        <asp:ListItem Value="UCBL">UCBL: Medium width orthotic device. Standard with a depp heelp-cup with high medial and high lateral flanges. EVA rear-foot posting.</asp:ListItem>
                        <asp:ListItem Value="GAIT PLATE: Induce In-Toe">GAIT PLATE: Induce In-Toe: Wider shapewith a deep heel cup and a rigid forefoot extension. EVA rearfoot post.</asp:ListItem>
                        <asp:ListItem Value="GAIT PLATE: Induce Out-Toe">GAIT PLATE: Induce Out-Toe: Wider shapewith a deep heel cup and a rigid forefoot extension. EVA rearfoot post.</asp:ListItem>
                    </asp:RadioButtonList>
                            </td>
            </tr>
                        <tr>
                <td style="font-size: x-small;" class="text-center">
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="font-size: large;" class="text-left">
                    <strong><span style="background-color: #FFFFFF">ORTHOTIC SERVICES</span></strong></td>
            </tr>
                        <tr>
                <td style="font-size: x-small;">
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                        <asp:ListItem Value="REFURBISH DEVICE">REFURBISH DEVICE: Replace cover(s) and/or add accommodation(s). Refer to price-list for prices associated with refurbishing service.</asp:ListItem>
                        <asp:ListItem Value="FIT TO SANDAL">FIT TO SANDAL: Fit orthotic to sandal - call for quote.</asp:ListItem>
                    </asp:RadioButtonList>
                            </td>
            </tr>
                        </table>
    </h3>
    <p>

         <asp:Button class="btn btn-default"  runat="server" aria-autocomplete="inline" Text="Submit & Proceed to Enter Cushion and Cover Details" OnClick="CC_Click" />
    </p>
</asp:Content>
