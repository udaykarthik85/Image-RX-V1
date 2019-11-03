<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ImageRX._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row" style="width:auto">
        <div class="col-md-4" style="left: 0px; top: 0px; height: 121px">
            <p>
                <br />
                <img alt="" src="Images/image.jpg" style="width: 226px; height: 83px" /></p>
            <p>
                <br />
            </p>
            <p>
                <%--<a class="btn btn-default"  runat="server" aria-autocomplete="inline" >Patient Info &raquo;</a>--%>
            </p>
        </div>
       
                <table style="width:100%;">
                    <tr>
                        <td style="font-size: x-large;" colspan="2"><strong>Client &amp; Patient Information</strong></td>
                    </tr>
                    <tr>
                        <td style="width: 108px">Cast Number</td>
                        <td>
                            <input id="Text1" runat="server" style="width: 427px" type="text" /></td>
                    </tr>
                    <tr>
                        <td style="width: 108px">Patient Name</td>
                        <td>
                            <input id="Text2" runat="server" style="width: 426px" type="text" /></td>
                    </tr>
                    <tr>
                        <td style="width: 108px">Height</td>
                        <td>
                            <input id="Text3" runat="server" style="width: 135px" type="text" /></td>
                    </tr>
                    <tr>
                        <td style="width: 108px">Weight</td>
                        <td>
                            <input id="Text4" runat="server" style="width: 135px" type="text" /></td>
                    </tr>
                    <tr>
                        <td style="width: 108px">Shoe Size</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Width="135px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 108px">Shoe Type</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Width="135px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 108px">Age</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Width="135px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 108px"># of Orthotics</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="18px" Width="218px">
                                <asp:ListItem>One Pair</asp:ListItem>
                                <asp:ListItem>2 Identical Pairs</asp:ListItem>
                                <asp:ListItem>2 Different Pairs</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 108px">Foot Impression</td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="215px">
                                <asp:ListItem>Foam</asp:ListItem>
                                <asp:ListItem>Cast</asp:ListItem>
                                <asp:ListItem>Electronic(Scanned Images)</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr> 
                        <td style="width: 108px; height: 46px;">Gender</td>
                        <td style="height: 46px">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="135px">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr> 
                        <td style="width: 108px">Diagnosis</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Width="417px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr> 
                        <td style="width: 108px">Customer Name<br />
                            (Doctor Name)</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Width="416px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr> 
                        <td style="width: 108px">Date Required:</td>
                        <td>
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="118px" NextPrevFormat="FullMonth" Width="375px">
                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                <TodayDayStyle BackColor="#CCCCCC" />
                            </asp:Calendar>
                        </td>
                    </tr>
                </table>
            <br />
                <asp:Button class="btn btn-default"  runat="server" aria-autocomplete="inline" Text="Submit and proceed to fill Orthotic Device Material" OnClick="Unnamed1_Click" />
            <br />
       
    </div>

</asp:Content>
