<%@ Page Title="POSTING" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Posting.aspx.cs" Inherits="ImageRX.Posting" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-left">Posting Instructions</h2>
    <h3>
        <table style="width:100%; font-size: xx-small; border-color: black">
                        <tr>
                <td style="width: 635px; font-size: medium;" class="text-left">
                    EXTRINSIC REAR FOOT POST</td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: x-small; height: 32px;" class="text-left">
                    <asp:RadioButton ID="RadioButton7" runat="server"   AutoPostBack="true" OnCheckedChanged="RadioButton7_CheckedChanged" style="font-size: small"/>
                    <span style="font-size: small">EXTRINSIC REARFOOT POSTING</span></td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: small; height: 32px;" class="text-left">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList19" Enabled="false"  runat="server" Height="16px" Width="283px">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>Crepe</asp:ListItem>
                        <asp:ListItem>Acrylic</asp:ListItem>
                        <asp:ListItem>Unibody</asp:ListItem>
                    </asp:DropDownList>
                            </td>
            </tr>
                        <tr>
                <td style="width: 907px; font-size: xx-small; height: 32px;" class="text-left">
                    <span style="font-size: small">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Left Foot Option:&nbsp;&nbsp; </span><span style="font-size: x-small"><asp:DropDownList ID="DropDownList7" runat="server" Enabled="False" style="font-size: small" Height="18px" Width="130px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>INVERSION</asp:ListItem>
                        <asp:ListItem>MOTION</asp:ListItem>
                    </asp:DropDownList>
                    </span>
                    <span style="font-size: small">&nbsp;&nbsp; L:&nbsp;</span><span style="font-size: x-small"><asp:DropDownList ID="DropDownList8" runat="server" Enabled="False" style="font-size: small">
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
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                    </asp:DropDownList>
                    </span></td>
            </tr>
                        <tr>
                <td style="width: 907px; font-size: xx-small; height: 32px;" class="text-left">
                    <span style="font-size: small">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Right Foot Option:&nbsp;</span><span style="font-size: x-small"><asp:DropDownList ID="DropDownList9" runat="server" Enabled="False" style="font-size: small" Height="18px" Width="129px">
                       <asp:ListItem></asp:ListItem>
                         <asp:ListItem>INVERSION</asp:ListItem>
                        <asp:ListItem>MOTION</asp:ListItem>
                    </asp:DropDownList>
                    </span>
                    <span style="font-size: small">&nbsp;&nbsp; R:&nbsp;</span><span style="font-size: x-small"><asp:DropDownList ID="DropDownList10" runat="server" Enabled="False" style="font-size: small">
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
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                    </asp:DropDownList>
                    </span></td>
            </tr>
                        <tr>
                <td style="width: 907px; font-size: xx-small;" class="text-left">&nbsp;</td>
            </tr>
                        <tr>
                <td style="width: 907px; font-size: medium;" class="text-left">EXTRINSIC FORE FOOT POSTING</td>
            </tr>
                        <tr>
                <td style="width: 635px; font-size: x-small; height: 32px;" class="text-left">
                    <asp:RadioButton ID="RadioButton12" runat="server" AutoPostBack="true"  style="font-size: small" OnCheckedChanged="RadioButton12_CheckedChanged" />
                    <span style="font-size: small">EXTRINSIC FOREOOT POSTING</span></td>
            </tr>
                        <tr>
                <td style="width: 907px; font-size: xx-small; height: 32px;" class="text-left">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size: small">&nbsp;&nbsp; Left Foot Option: &nbsp;<span style="font-size: x-small">&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList15" runat="server" Enabled="False" style="font-size: small" Height="16px" Width="120px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>VARUS</asp:ListItem>
                        <asp:ListItem>VALGUS</asp:ListItem>
                    </asp:DropDownList>
                    </span>&nbsp;&nbsp; L:&nbsp;<span style="font-size: x-small"><asp:DropDownList ID="DropDownList16" runat="server" Enabled="False" style="font-size: small">
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
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                    </asp:DropDownList>
                    </span></span><span style="font-size: x-small"><span style="font-size: small">&nbsp;</span></span></td>
            </tr>
                        <tr>
                <td style="width: 907px; font-size: xx-small; height: 32px;" class="text-left">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: small">&nbsp;&nbsp; Right Foot Option:&nbsp;<span style="font-size: x-small">&nbsp; <asp:DropDownList ID="DropDownList17" runat="server" Enabled="False" style="font-size: small" Height="18px" Width="120px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>VARUS</asp:ListItem>
                        <asp:ListItem>VALGUS</asp:ListItem>
                    </asp:DropDownList>
                    </span>&nbsp;&nbsp; R:&nbsp;<span style="font-size: x-small"><asp:DropDownList ID="DropDownList18" runat="server" Enabled="False" style="font-size: small">
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
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                    </asp:DropDownList>
                    </span>
                    </span></td>
            </tr>
                        <tr>
                <td style="width: 907px; font-size: xx-small; height: 32px;" class="text-left">
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="width: 907px; font-size: small; height: 32px;" class="text-left">
                    Grinding Instructions:&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList20" runat="server" Height="16px" Width="193px">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>Use Lab Discretion</asp:ListItem>
                        <asp:ListItem>Narrow</asp:ListItem>
                        <asp:ListItem>Normal</asp:ListItem>
                        <asp:ListItem>Wide</asp:ListItem>
                    </asp:DropDownList>
                            </td>
            </tr>
                        <tr>
                <td style="width: 907px; font-size: small; height: 32px;" class="text-left">
                    Heel Cup Depth:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList21" runat="server" Height="19px" Width="184px">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>Low: (5-7mm)</asp:ListItem>
                        <asp:ListItem>Med: (10-12mm)</asp:ListItem>
                        <asp:ListItem>Deep: (15-17mm)</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="110px"></asp:TextBox>
                            </td>
            </tr>
                        <tr>
                <td style="width: 907px; font-size: medium; height: 32px;" class="text-left">
                    Extensions / Top Covers: </td>
            </tr>
                        <tr>
                <td style="width: 907px; font-size: small; height: 32px;" class="text-left">
                    Material:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList22" runat="server" Height="19px" style="font-size: small" Width="211px">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>Black Poron</asp:ListItem>
                        <asp:ListItem>Pink Plastizote</asp:ListItem>
                        <asp:ListItem>Special Poron</asp:ListItem>
                        <asp:ListItem>Soft EVA</asp:ListItem>
                    </asp:DropDownList>
                            </td>
            </tr>
                        <tr>
                <td style="width: 907px; font-size: medium; height: 32px;" class="text-left">
                    <span style="font-size: small">Thickness:&nbsp;&nbsp; </span>
                    <asp:DropDownList ID="DropDownList23" runat="server" style="font-size: small" Width="90px">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>1/16&quot;</asp:ListItem>
                        <asp:ListItem>1/8&quot;</asp:ListItem>
                        <asp:ListItem>3/16&quot;</asp:ListItem>
                        <asp:ListItem>1/4&quot;</asp:ListItem>
                    </asp:DropDownList>
                            </td>
            </tr>
                        <tr>
                <td style="width: 907px; font-size: medium; height: 32px;" class="text-left">
                    <span style="font-size: small">Top Covers:
                    <asp:DropDownList ID="DropDownList24" runat="server" Height="22px" Width="212px">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>Vinyl</asp:ListItem>
                        <asp:ListItem>Leather (perf)</asp:ListItem>
                        <asp:ListItem>Ultra Suede</asp:ListItem>
                        <asp:ListItem>Topper</asp:ListItem>
                        <asp:ListItem>Neoprene</asp:ListItem>
                        <asp:ListItem>X-static</asp:ListItem>
                    </asp:DropDownList>
                    </span></td>
            </tr>
                        <tr>
                <td style="width: 907px; font-size: xx-small; height: 32px;" class="text-left">
                    <span style="font-size: small">Length:&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </span>&nbsp;<asp:DropDownList ID="DropDownList25" runat="server" Height="16px" style="font-size: small" Width="212px">
                        <asp:ListItem> </asp:ListItem>
                        <asp:ListItem>On Device Only</asp:ListItem>
                        <asp:ListItem>Distal of Device to Sulcus</asp:ListItem>
                        <asp:ListItem>Distal of Device to Toes</asp:ListItem>
                        <asp:ListItem>Cover Device to Sulcus</asp:ListItem>
                        <asp:ListItem>Cover Device to Toes</asp:ListItem>
                        <asp:ListItem>No Top Cover</asp:ListItem>
                    </asp:DropDownList>
                            &nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox1" runat="server" style="font-size: small" />
                    <span style="font-size: small">Add Bottom Cover</span></td>
            </tr>
                        <tr>
                <td style="width: 907px; font-size: xx-small; height: 32px;" class="text-left">
                    &nbsp;</td>
            </tr>
                        <tr>
                <td style="width: 907px; font-size: xx-small; height: 10px;" class="text-left"></td>
            </tr>
                        </table>
    </h3>
  <p>
                <asp:Button class="btn btn-default"  runat="server" aria-autocomplete="inline" Text="Submit & Proceed to Enter Orthotic Module Shape" OnClick="OMS_Click" />
            </p>
</asp:Content>
