<%@ Page Title="SHELL MODIFICATIONS" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShellModifications.aspx.cs" Inherits="ImageRX.ShellModifications" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-left" style="font-size: large; margin-left: 0px; width: 781px;"><span style="font-weight: bold">SHELL MODIFICATIONS</span></h2>
    <h3>
        <table style="width:106%;">
            <tr style="font-size: x-small">
                <td class="text-center" style="font-size: medium; width: 261px;">
                    <strong>Left</strong></td>
                <td class="text-center" style="font-size: medium; width: 260px;">
                    <strong>Right</strong></td>
            </tr>
            <tr style="font-size: x-small">
                <td class="text-left" style="font-size: small; width: 261px;">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" style="font-size: x-small">
                        <asp:ListItem>1st Ray Cut Out</asp:ListItem>
                        <asp:ListItem>Intrinsic Heel Hole Cut Out</asp:ListItem>
                        <asp:ListItem>1st  Met Cut Out</asp:ListItem>
                        <asp:ListItem>Medial Flange</asp:ListItem>
                        <asp:ListItem>Lateral Flange</asp:ListItem>
                        <asp:ListItem>Lateral Clip</asp:ListItem>
                        <asp:ListItem>Plantar Fascia Groove</asp:ListItem>
                        <asp:ListItem>Rigid Mortons Ext - End at IPJ</asp:ListItem>
                        <asp:ListItem>Rigid Mortons Ext - End of Toes</asp:ListItem>
                        <asp:ListItem>Rigid Extension - under 2nd </asp:ListItem>
                        <asp:ListItem>Rigid Extension - under 3rd</asp:ListItem>
                        <asp:ListItem>Rigid Extension - under 4th</asp:ListItem>
                        <asp:ListItem>Rigid Extension - under 5th</asp:ListItem>
                        <asp:ListItem>Full Length Shell</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td class="text-left" style="font-size: small; width: 260px;">
                    <asp:CheckBoxList ID="CheckBoxList2" runat="server" Height="203px" style="font-size: x-small">
                        <asp:ListItem>Intrinsic Heel Hole Cut Out</asp:ListItem>
                        <asp:ListItem>1st Ray Cut Out</asp:ListItem>
                        <asp:ListItem>1st  Met Cut Out</asp:ListItem>
                        <asp:ListItem>Medial Flange</asp:ListItem>
                        <asp:ListItem>Lateral Flange</asp:ListItem>
                        <asp:ListItem>Lateral Clip</asp:ListItem>
                        <asp:ListItem>Plantar Fascia Groove</asp:ListItem>
                        <asp:ListItem>Rigid Mortons Ext - End at IPJ</asp:ListItem>
                        <asp:ListItem>Rigid Mortons Ext - End of Toes</asp:ListItem>
                        <asp:ListItem>Rigid Extension - under 2nd</asp:ListItem>
                        <asp:ListItem>Rigid Extension - under 3rd</asp:ListItem>
                        <asp:ListItem>Rigid Extension - under 4th</asp:ListItem>
                        <asp:ListItem>Rigid Extension - under 5th</asp:ListItem>
                        <asp:ListItem>Full Length Shell</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            </table>
    </h3>

    <h2 class="text-left" style="font-size: large; margin-left: 0px; width: 779px;"><span style="font-weight: bold">SOFT MODIFICATIONS</span></h2>
    <h3>
        <table style="width:106%;">
            <tr style="font-size: x-small">
                <td class="text-center" style="font-size: medium; width: 260px;">
                    <strong>Left</strong></td>
                <td class="text-center" style="font-size: medium; width: 260px;">
                    <strong>Right</strong></td>
            </tr>
            <tr style="font-size: x-small">
                <td class="text-left" style="font-size: medium; width: 260px;">
                    <span style="font-size: small">1 to 5 Sulcus Pad </span>
                    <asp:DropDownList ID="DropDownList7" runat="server" style="font-size: small">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>EVA 1/8&quot;</asp:ListItem>
                        <asp:ListItem>EVA 3/16&quot;</asp:ListItem>
                        <asp:ListItem>Slow Recovery 1/8&quot;</asp:ListItem>
                        <asp:ListItem>Slow Recovery 3/16&quot;</asp:ListItem>
                        <asp:ListItem>Black Poron 1/8&quot;</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="text-left" style="font-size: medium; width: 260px;">
                    <span style="font-size: small">1 to 5 Sulcus Pad </span>
                    <asp:DropDownList ID="DropDownList12" runat="server" style="font-size: small">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>EVA 1/8&quot;</asp:ListItem>
                        <asp:ListItem>EVA 3/16&quot;</asp:ListItem>
                        <asp:ListItem>Slow Recovery 1/8&quot;</asp:ListItem>
                        <asp:ListItem>Slow Recovery 3/16&quot;</asp:ListItem>
                        <asp:ListItem>Black Poron 1/8&quot;</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr style="font-size: x-small">
                <td class="text-left" style="font-size: medium; width: 260px;">
                    <span style="font-size: small">Grind In: </span>
                    <asp:DropDownList ID="DropDownList8" runat="server" style="font-size: small">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Varus</asp:ListItem>
                        <asp:ListItem>Valgus</asp:ListItem>
                        <asp:ListItem>Neutral</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList9" runat="server" style="font-size: small">
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
                <td class="text-left" style="font-size: medium; width: 260px;">
                    <span style="font-size: small">Grind In: </span>
                    <asp:DropDownList ID="DropDownList10" runat="server" style="font-size: small">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Varus</asp:ListItem>
                        <asp:ListItem>Valgus</asp:ListItem>
                        <asp:ListItem>Neutral</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList11" runat="server" style="font-size: small">
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
            <tr style="font-size: x-small">
                <td class="text-left" style="font-size: small; ">
                    <asp:CheckBoxList ID="CheckBoxList3" runat="server" style="font-size: x-small" AutoPostBack ="true" OnSelectedIndexChanged="CheckBoxList3_SelectedIndexChanged">
                        <asp:ListItem>Mortons Ext - Black Poron To Toes</asp:ListItem>
                        <asp:ListItem>Mortons Ext - Black Poron To IPJ</asp:ListItem>
                        <asp:ListItem>Mortons Ext - Crepe To Toes</asp:ListItem>
                        <asp:ListItem>Mortons Ext - Crepe To IPJ</asp:ListItem>
                        <asp:ListItem>Rev. Mortons Ext</asp:ListItem>
                        <asp:ListItem>Arch Pad</asp:ListItem>
                        <asp:ListItem>Medial Flange - Cork Reinforced with Spikey</asp:ListItem>
                        <asp:ListItem>Medial Flange - Cork Reinforced with Regular</asp:ListItem>
                        <asp:ListItem>Medial Flange - EVA Reinforced with Spikey</asp:ListItem>
                        <asp:ListItem>Medial Flange - EVA Reinforced with Regular</asp:ListItem>
                        <asp:ListItem>Lateral Flange</asp:ListItem>
                        <asp:ListItem>Heel Pad</asp:ListItem>
                        <asp:ListItem>Heel Cushion</asp:ListItem>
                        <asp:ListItem>Cuboid Support Pad</asp:ListItem>
                        <asp:ListItem>Metatarsal Raise</asp:ListItem>
                        <asp:ListItem>Kinetic Wedge</asp:ListItem>
                        <asp:ListItem>Neuroma Pad</asp:ListItem>
                        <asp:ListItem>Plantar Fascia Groove</asp:ListItem>
                        <asp:ListItem>Runners Wedge 1/16&quot;</asp:ListItem>
                        <asp:ListItem>Runners Wedge 1/8&quot;</asp:ListItem>
                        <asp:ListItem>Runners Wedge 3/16&quot;</asp:ListItem>
                        <asp:ListItem>Runners Wedge 1/4&quot;</asp:ListItem>
                        <asp:ListItem>Dancers Pad</asp:ListItem>
                        <asp:ListItem Value="Met Bar">Met Bar</asp:ListItem>
                        <asp:ListItem>Met Pad</asp:ListItem>
                    </asp:CheckBoxList>
                    Met Pad Thickness:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>1/16&quot;</asp:ListItem>
                        <asp:ListItem>1/8&quot;</asp:ListItem>
                        <asp:ListItem>3/16&quot;</asp:ListItem>
                        <asp:ListItem>1/4&quot;</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;<asp:TextBox ID="TextBox2" runat="server" Enabled="False" Width="48px"></asp:TextBox>
                    <br />
                    Met Pad Placement:<asp:DropDownList ID="DropDownList13" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList13_SelectedIndexChanged">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>1/16&quot;</asp:ListItem>
                        <asp:ListItem>1/8&quot;</asp:ListItem>
                        <asp:ListItem>3/16&quot;</asp:ListItem>
                        <asp:ListItem>1/4&quot;</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;<asp:TextBox ID="TextBox6" runat="server" Enabled="False" Width="48px"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList14" runat="server" AutoPostBack="true" >
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Distal</asp:ListItem>
                        <asp:ListItem>Proximal</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    Met Bar:<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Height="16px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>1/16&quot;</asp:ListItem>
                        <asp:ListItem>1/8&quot;</asp:ListItem>
                        <asp:ListItem>3/16&quot;</asp:ListItem>
                        <asp:ListItem>1/4&quot;</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;<asp:TextBox ID="TextBox3" runat="server" Enabled="False" Width="48px"></asp:TextBox>
                </td>
                <td class="text-left" style="font-size: small; width: 260px;">
                    <asp:CheckBoxList ID="CheckBoxList4" runat="server" style="font-size: x-small" OnSelectedIndexChanged="CheckBoxList4_SelectedIndexChanged" AutoPostBack ="true">
                        <asp:ListItem>Mortons Ext - Black Poron To Toes</asp:ListItem>
                        <asp:ListItem>Mortons Ext - Black Poron To IPJ</asp:ListItem>
                        <asp:ListItem>Mortons Ext - Crepe To Toes</asp:ListItem>
                        <asp:ListItem>Mortons Ext - Crepe To IPJ</asp:ListItem>
                        <asp:ListItem>Rev. Mortons Ext</asp:ListItem>
                        <asp:ListItem>Arch Pad</asp:ListItem>
                        <asp:ListItem>Medial Flange - Cork Reinforced with Spikey</asp:ListItem>
                        <asp:ListItem>Medial Flange - Cork Reinforced with Regular</asp:ListItem>
                        <asp:ListItem>Medial Flange - EVA Reinforced with Spikey</asp:ListItem>
                        <asp:ListItem>Medial Flange - EVA Reinforced with Regular</asp:ListItem>
                        <asp:ListItem>Lateral Flange</asp:ListItem>
                        <asp:ListItem>Heel Pad</asp:ListItem>
                        <asp:ListItem>Heel Cushion</asp:ListItem>
                        <asp:ListItem>Cuboid Support Pad</asp:ListItem>
                        <asp:ListItem>Metatarsal Raise</asp:ListItem>
                        <asp:ListItem>Kinetic Wedge</asp:ListItem>
                        <asp:ListItem>Neuroma Pad</asp:ListItem>
                        <asp:ListItem>Plantar Fascia Groove</asp:ListItem>
                        <asp:ListItem>Runners Wedge 1/16&quot;</asp:ListItem>
                        <asp:ListItem>Runners Wedge 1/8&quot;</asp:ListItem>
                        <asp:ListItem>Runners Wedge 3/16&quot;</asp:ListItem>
                        <asp:ListItem>Runners Wedge 1/4&quot;</asp:ListItem>
                        <asp:ListItem>Dancers Pad</asp:ListItem>
                        <asp:ListItem>Met Bar</asp:ListItem>
                        <asp:ListItem>Met Pad</asp:ListItem>
                    </asp:CheckBoxList>
                    Met Pad Thickness:<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>1/16&quot;</asp:ListItem>
                        <asp:ListItem>1/8&quot;</asp:ListItem>
                        <asp:ListItem>3/16&quot;</asp:ListItem>
                        <asp:ListItem>1/4&quot;</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;<asp:TextBox ID="TextBox4" runat="server" Enabled="False" Width="48px"></asp:TextBox>
                    <br />
                    Met Pad Placement:<asp:DropDownList ID="DropDownList15" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList15_SelectedIndexChanged">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>1/16&quot;</asp:ListItem>
                        <asp:ListItem>1/8&quot;</asp:ListItem>
                        <asp:ListItem>3/16&quot;</asp:ListItem>
                        <asp:ListItem>1/4&quot;</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;<asp:TextBox ID="TextBox7" runat="server" Enabled="False" Width="48px"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList16" runat="server" AutoPostBack="true" >
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Distal</asp:ListItem>
                        <asp:ListItem>Proximal</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    Met Bar:<asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>1/16&quot;</asp:ListItem>
                        <asp:ListItem>1/8&quot;</asp:ListItem>
                        <asp:ListItem>3/16&quot;</asp:ListItem>
                        <asp:ListItem>1/4&quot;</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;<asp:TextBox ID="TextBox5" runat="server" Enabled="False" Width="48px"></asp:TextBox>
                </td>
            </tr>
            <tr style="font-size: x-small">
                <td class="text-left" style="font-size: small; width: 260px;">
                    &nbsp;</td>
                <td class="text-left" style="font-size: small; width: 260px;">
                    &nbsp;</td>
            </tr>
            </table>
    </h3>
    <h3>
         <table  style="width:106%;">
            <tr style="font-size: x-small">
                <td class="text-center" colspan="3" style="font-size: xx-small">
                    &nbsp;</td>
                <td class="text-center" style="font-size: xx-small">
                    <asp:CheckBox ID="CheckBox49" runat="server" autopostback="true" OnCheckedChanged="CheckBox49_CheckedChanged"/>
                    SUB-U CUT OUT
                    <asp:RadioButton ID="RadioButton1" runat="server" autopostback="true" Enabled="False" OnCheckedChanged="RadioButton1_CheckedChanged"/>
                    Channel
                    <asp:RadioButton ID="RadioButton2" runat="server" autopostback="true" Enabled="False" OnCheckedChanged="RadioButton2_CheckedChanged"/>
                    Pocket<br />
                    <asp:CheckBox ID="CheckBox50" runat="server" />
                    R1<asp:CheckBox ID="CheckBox51" runat="server" />
                    R2<asp:CheckBox ID="CheckBox52" runat="server" />
                    R3<asp:CheckBox ID="CheckBox53" runat="server" />
                    R4<asp:CheckBox ID="CheckBox54" runat="server" />
                    R5
                    <asp:CheckBox ID="CheckBox55" runat="server" />
                    L1<asp:CheckBox ID="CheckBox56" runat="server" />
                    L2<asp:CheckBox ID="CheckBox57" runat="server" />
                    L3<asp:CheckBox ID="CheckBox58" runat="server" />
                    L4<asp:CheckBox ID="CheckBox59" runat="server" />
                    L5<br />
                    &nbsp;
                    <img alt="" src="Images/rp.jpg" style="width: 77px; height: 216px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img alt="" src="Images/fp.jpg" style="width: 77px; height: 216px" />&nbsp;&nbsp; </td>
            </tr>
            <tr style="font-size: x-small">
                <td class="text-center" style="font-size: xx-small" colspan="4">
                    <asp:TextBox ID="TextBox1" runat="server" Height="223px" Width="679px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr style="font-size: x-small">
                <td class="text-center" style="font-size: xx-small">&nbsp;</td>
                <td class="text-center" style="font-size: xx-small">&nbsp;</td>
                <td class="text-center" colspan="2" style="font-size: xx-small">
                    <asp:Button ID="Button1" runat="server" Height="31px" OnClick="Button1_Click" style="font-size: medium" Text="Go to File Uploads" Width="177px" />
                </td>
            </tr>
        </table>

    </h3>
    <p>
         &nbsp;</p>
</asp:Content>
