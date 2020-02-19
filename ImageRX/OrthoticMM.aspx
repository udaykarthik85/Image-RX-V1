﻿<%@ Page Title="Orthotic Device Material" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrthoticMM.aspx.cs" Inherits="ImageRX.OrthoticMM" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="width: 840px">Orthotic Device Material</h2>
    <h3>
        <table style="width:61%; font-size: xx-small; border-color: black">
            <tr>
                <td style="width: 178px; border-color: black; height: 30px; font-size: small;">
                    Select the Material:</td>
                <td style="width: 351px; border-color: black; height: 30px;">
                    &nbsp;<asp:DropDownList ID="DropDownList19" runat="server" AutoPostBack="true" style="font-size: small" Width="381px" OnSelectedIndexChanged="DropDownList19_SelectedIndexChanged">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>White Polypropylene</asp:ListItem>
                        <asp:ListItem>Graphite</asp:ListItem>
                        <asp:ListItem>Cork</asp:ListItem>
                        <asp:ListItem>Plastizote Diabetic Devices</asp:ListItem>
                        <asp:ListItem>Polypro with Plantar Fill</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 178px; border-color: black; height: 30px; font-size: small;">
                    White Polypropylene:</td>
                <td style="width: 351px; border-color: black; height: 30px;">
                    <asp:DropDownList ID="DropDownList1" runat="server" Enables="False" style="font-size: small" Width="381px">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>3/16&quot; Polypropylene (semi-rigid)</asp:ListItem>
                        <asp:ListItem>5/32&quot; Polypropylene (semi-flex)</asp:ListItem>
                        <asp:ListItem>Flex-Tweener</asp:ListItem>
                        <asp:ListItem>1/8&quot; Polypropylene (Flex)</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
                        <tr>
                <td style="width: 178px; border-color: black; height: 30px; font-size: small;">
                    Graphite:</td>
                <td style="width: 351px; border-color: black; height: 30px;">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Enables="False" style="font-size: small" Width="138px">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>Flex</asp:ListItem>
                        <asp:ListItem>Semi-Rigid</asp:ListItem>
                        <asp:ListItem>Rigid</asp:ListItem>
                        <asp:ListItem>Ultr-Rigid</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList21" runat="server" Height="16px" Enables="False" style="font-size: small" Width="123px" OnSelectedIndexChanged="DropDownList21_SelectedIndexChanged">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>PRX</asp:ListItem>
                        <asp:ListItem>TL 2100</asp:ListItem>
                        <asp:ListItem>TL Silver</asp:ListItem>
                    </asp:DropDownList>
                            </td>
            </tr>
                        <tr>
                <td style="width: 178px; border-color: black; height: 30px; font-size: small;">
                    Dress Device:</td>
                <td style="width: 351px; border-color: black; height: 30px;">
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="27px" style="font-size: small" Width="191px">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>1&quot;-2&quot; Heel Height</asp:ListItem>
                        <asp:ListItem>2&quot; or Higher Heel</asp:ListItem>
                    </asp:DropDownList>
&nbsp;
                            </td>
            </tr>
                        <tr>
                <td style="width: 178px; border-color: black; height: 30px; font-size: small;">
                    &nbsp;</td>
                <td style="width: 351px; border-color: black; height: 30px;">
                    <asp:DropDownList ID="DropDownList5" runat="server" Height="16px" style="font-size: small" Width="185px">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>Rigid</asp:ListItem>
                        <asp:ListItem>Semi-Rigid</asp:ListItem>
                        <asp:ListItem>Flex</asp:ListItem>
                    </asp:DropDownList>
                            </td>
            </tr>
                        <tr>
                <td style="width: 178px; border-color: black; height: 30px; font-size: small;">
                    Cork:</td>
                <td style="width: 351px; border-color: black; height: 30px;">
                    <asp:DropDownList ID="DropDownList6" runat="server" Height="19px" style="font-size: small" Width="185px">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>Thermo Cork (firm)</asp:ListItem>
                        <asp:ListItem>Birk. Cork (soft)</asp:ListItem>
                    </asp:DropDownList>
                            </td>
            </tr>
                        <tr>
                <td style="width: 178px; border-color: black; height: 30px; font-size: small;">
                    Plastizote Diabetic Devices:</td>
                <td style="width: 351px; border-color: black; height: 30px;">
                    <asp:DropDownList ID="DropDownList7" runat="server" Height="19px" style="font-size: small" Width="183px">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>Hard</asp:ListItem>
                        <asp:ListItem>Medium</asp:ListItem>
                        <asp:ListItem>Soft</asp:ListItem>
                    </asp:DropDownList>
                            </td>
            </tr>
                        <tr>
                <td style="width: 178px; border-color: black; height: 30px; font-size: small;">
                    Polypro with Plantar Fill:</td>
                <td style="width: 351px; border-color: black; height: 30px; font-size: small;">
                    Shell:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList8" runat="server" Width="143px">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>1/16&quot; Poly</asp:ListItem>
                        <asp:ListItem>1/8&quot; Poly</asp:ListItem>
                        <asp:ListItem>3/16&quot; Poly</asp:ListItem>
                    </asp:DropDownList>
                            </td>
            </tr>
                        <tr>
                <td style="width: 178px; border-color: black; height: 30px; font-size: small;">
                    &nbsp;</td>
                <td style="width: 351px; border-color: black; height: 30px; font-size: small;">
                    Plantar fill:&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList9" runat="server" Height="22px" Width="140px">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>Soft</asp:ListItem>
                        <asp:ListItem>Medium</asp:ListItem>
                        <asp:ListItem>Firm</asp:ListItem>
                    </asp:DropDownList>
                            </td>
            </tr>
                        <tr>
                <td style="width: 178px; border-color: black; height: 30px; font-size: small;">
                    Children&#39;s Devices:</td>
                <td style="width: 351px; border-color: black; height: 30px;">
                    <asp:DropDownList ID="DropDownList10" runat="server" Height="16px" style="font-size: small" Width="384px">
                        <asp:ListItem> None</asp:ListItem>
                        <asp:ListItem>UCBL (Promotes Vertical Gait)</asp:ListItem>
                        <asp:ListItem>Toe Out (Promotes Out-Toeing)</asp:ListItem>
                        <asp:ListItem>Toe In (Promotes In-Toeing)</asp:ListItem>
                    </asp:DropDownList>
                            </td>
            </tr>
                        <tr>
                <td style="width: 178px; border-color: black; height: 30px; font-size: small;">
                    Cork &amp; Leather Device:</td>
                <td style="width: 351px; border-color: black; height: 30px;">
                    <asp:CheckBox ID="CheckBox1" runat="server" style="font-size: small" />
&nbsp;<span style="font-size: small">Leather and Cork Arch Fill</span></td>
            </tr>
                        <tr>
                <td style="width: 178px; border-color: black; height: 30px; font-size: small; " class="text-left">
                    Unless Specified, All Negative Cast Balanced to Perpendicular:</td>
                <td style="width: 351px; border-color: black; height: 30px;" class="text-left">
                    <span style="font-size: small">Left Foot Option:&nbsp; </span><asp:DropDownList ID="DropDownList11" runat="server" style="font-size: small" Height="22px" Width="107px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Varus</asp:ListItem>
                        <asp:ListItem>Valgus</asp:ListItem>
                    </asp:DropDownList>
                    <span style="font-size: small">&nbsp;L: </span>
                    <asp:DropDownList ID="DropDownList13" runat="server"  style="font-size: small">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                            </td>
            </tr>
                        <tr>
                <td style="width: 178px; border-color: black; height: 31px; font-size: small; text-align: justify;">
                            </td>
                <td style="width: 351px; border-color: black; height: 31px;">
                    <span style="font-size: small">Right Foot Option:</span><asp:DropDownList ID="DropDownList12"  runat="server" style="font-size: small" Height="26px" Width="105px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Varus</asp:ListItem>
                        <asp:ListItem>Valgus</asp:ListItem>
                    </asp:DropDownList>
                    <span style="font-size: small">&nbsp;R: </span>
                    <asp:DropDownList ID="DropDownList14"  runat="server" style="font-size: small">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                            </td>
            </tr>
                        <tr>
                <td style="width: 178px; height: 29px; border-color: black; font-size: small;">
                    *Medial Plaster Arch Fill:</td>
                <td style="width: 351px; border-color: black; height: 30px;">
                    <asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack =true  style="font-size: small" OnCheckedChanged="RadioButton3_CheckedChanged" />
&nbsp;<span style="font-size: small">Raise Arch L:</span><asp:DropDownList ID="DropDownList15" Enabled="false" runat="server" style="font-size: small">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                    <span style="font-size: small">&nbsp;R: </span>
                    <asp:DropDownList ID="DropDownList16" Enabled="false" runat="server" style="font-size: small">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                            </td>
            </tr>
                        <tr>
                <td style="width: 178px; border-color: black; height: 39px;">
                            </td>
                <td style="width: 351px; border-color: black; height: 39px;">
                    <asp:RadioButton ID="RadioButton4" AutoPostBack =true  runat="server" style="font-size: small" OnCheckedChanged="RadioButton4_CheckedChanged" />
&nbsp;<span style="font-size: small">Lower Arch L:</span><asp:DropDownList ID="DropDownList17" Enabled="false" runat="server" style="font-size: small">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                    <span style="font-size: small">&nbsp;R: </span>
                    <asp:DropDownList ID="DropDownList18" Enabled="false" runat="server" style="font-size: small">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                            </td>
            </tr>
                        <tr>
                <td style="width: 178px; border-color: black; height: 39px;">
                            &nbsp;</td>
                <td style="width: 351px; border-color: black; height: 39px;">
                    <asp:RadioButton ID="RadioButton5" AutoPostBack =true  runat="server" style="font-size: small" OnCheckedChanged="RadioButton5_CheckedChanged" />
&nbsp;<span style="font-size: small">Same as Cast&nbsp; </span>
                            </td>
            </tr>
                        <tr>
                <td style="width: 178px; border-color: black; height: 39px;">
                            &nbsp;</td>
                <td style="width: 351px; border-color: black; height: 39px;">
                    <asp:RadioButton ID="RadioButton6" AutoPostBack =true  runat="server" style="font-size: small" OnCheckedChanged="RadioButton6_CheckedChanged" />
&nbsp;<span style="font-size: small">Image Scale:</span><asp:DropDownList ID="DropDownList20" Enabled="false" runat="server" style="font-size: small">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                            </td>
            </tr>
                        </table>
    </h3>
       <p>
                <asp:Button class="btn btn-default"  runat="server" aria-autocomplete="inline" Text="Submit & Proceed to Posting" OnClick="Posting_Click" />
            </p>
</asp:Content>
