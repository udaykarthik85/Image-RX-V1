<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="ImageRX.UserProfile" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row" style="width:869px">
            <br />
                <table style="width: 100%; border-bottom-style: solid;">
                    <tr>
                        <td style="width: 133px">
                            <img alt="img" src="Images/Image.jpg" style="width: 112px; height: 54px" /></td>
                    </tr>
                    </table>
        <table style="width:100%;">
            <tr style="font-size: 9pt">
                <td class="text-center" colspan="3">Welcome @Username! Please complete your Profile to move forward with Ordering Process. </td>
            </tr>
            <tr>
                <td style="width: 340px">Do you work for registered Practice:<asp:RadioButton ID="RadioButton1" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" />
                    Yes
                    <asp:RadioButton ID="RadioButton2" runat="server" />
                    No</td>
                <td colspan="2">If Yes Select your Practice:
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="customerDS" DataTextField="DisplayName" DataValueField="DisplayName" Enabled="False" Visible="False">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="customerDS" runat="server" ConnectionString="<%$ ConnectionStrings:ImageOrthoDBConnectionString %>" SelectCommand="SELECT [DisplayName] FROM [QBO_Customer]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 340px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </table>
        <table style="width:100%;">
            <tr>
                <td class="text-center" style="height: 39px; font-size: large; color: #FFFFFF; background-color: #000000"><strong>PRACTICE INFORMATION</strong></td>
            </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td>Practice Name:<asp:TextBox ID="TextBox1" runat="server" Width="263px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Address:
                        <asp:TextBox ID="TextBox2" runat="server" Width="306px"></asp:TextBox>
                    </td>
                    <td>City:
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        State:
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>AL</asp:ListItem>
                            <asp:ListItem>GA</asp:ListItem>
                            <asp:ListItem>CA</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>Zip:<asp:TextBox ID="TextBox4" runat="server" Width="100px"></asp:TextBox>
&nbsp;</td>
                </tr>
                <tr>
                    <td>Email:&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 20" Width="302px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Phone:&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox6" runat="server" Width="305px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        <br />
        <table style="width:869px;">
            <tr>
                <td class="text-center" style="height: 39px; font-size: large; color: #FFFFFF; background-color: #000000"><strong>USER PERSONAL INFORMATION</strong></td>
            </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td>User Type:
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem>Practice Contact</asp:ListItem>
                            <asp:ListItem>Physician</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>First Name:<asp:TextBox ID="TextBox7" runat="server" Width="268px"></asp:TextBox>
                    </td>
                    <td>Last Name:<asp:TextBox ID="TextBox8" runat="server" Width="268px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Middle&nbsp; Name:<asp:TextBox ID="TextBox9" runat="server" Width="268px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Phone:<asp:TextBox ID="TextBox10" runat="server" Width="268px"></asp:TextBox>
                    </td>
                    <td>Email:<asp:TextBox ID="TextBox11" runat="server" Width="268px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        <br />
        <table style="width:100%;" >
            <tr>
                <td class="text-center">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add FavTemplate" />
                </td>
            </tr>
        </table>
            <br />
       
    </div>

</asp:Content>
