<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AlternateHome.aspx.cs" Inherits="ImageRX._AlternateHome" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row" style="width:869px">
            <br />
                <table style="width: 100%; border-bottom-style: solid;">
                    <tr>
                        <td rowspan="3" style="width: 133px">
                            <img alt="img" src="Images/Image.jpg" style="width: 112px; height: 54px" /></td>
                        <td style="border-bottom-style: solid; border-bottom-width: 1px; padding: 1px 4px; font-size: 9pt;"><strong>*Cast #:</strong>
                            <asp:TextBox ID="TextBox1" runat="server" Width="174px" style="font-size: 9pt"></asp:TextBox>
                            <span style="font-size: 9pt">&nbsp;&nbsp;&nbsp; </span> <strong><span style="font-size: 9pt">PO #:</span></strong>
                            <asp:TextBox ID="TextBox14" runat="server" Width="154px" style="font-size: 9pt"></asp:TextBox>
                        </td>
                        <td style="border-bottom-style: solid; border-bottom-width: 1px; padding: 1px 4px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="border-bottom-style: solid; border-bottom-width: 1px; padding: 1px 4px; font-size: 9pt;"><strong>*# of Orthotics:&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="36px" Width="191px" style="font-size: 9pt">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>One Pair</asp:ListItem>
                                <asp:ListItem>2 Identical Pairs</asp:ListItem>
                                <asp:ListItem>3 Pairs</asp:ListItem>
                                <asp:ListItem>4 Pairs</asp:ListItem>
                            </asp:DropDownList>
                            <span style="font-size: 9pt">&nbsp;&nbsp;&nbsp; PreSelections:
                            </span>
                            <asp:DropDownList ID="DropDownList42" runat="server" Height="22px" OnSelectedIndexChanged="DropDownList42_SelectedIndexChanged" Width="183px" AutoPostBack ="true" style="font-size: 9pt">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>STANDARD - FUNCTIONAL</asp:ListItem>
                                <asp:ListItem>STANDARD - SPORT</asp:ListItem>
                                <asp:ListItem>STANDARD - DRESS</asp:ListItem>
                                <asp:ListItem>FLEXIBLE - STANDARD</asp:ListItem>
                                <asp:ListItem>MULTI-SPORT - SPORT</asp:ListItem>
                                <asp:ListItem>SOFT MOLD</asp:ListItem>
                                <asp:ListItem>FIRM MOLD</asp:ListItem>
                            </asp:DropDownList>
                            </strong></td>
                        <td style="border-bottom-style: solid; border-bottom-width: 1px; padding: 1px 4px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="border-bottom-style: solid; border-bottom-width: 1px; padding: 1px 4px; font-size: 9pt;"><strong>Type of Orthotic:</strong>
                            <asp:DropDownList ID="DropDownList43" runat="server" Height="21px" Width="182px" AutoPostBack ="true" OnSelectedIndexChanged="DropDownList43_SelectedIndexChanged" style="font-size: 9pt">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>Left Only Orthotic</asp:ListItem>
                                <asp:ListItem>Right Only Orthotic</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="border-bottom-style: solid; border-bottom-width: 1px; padding: 1px 4px">&nbsp;</td>
                    </tr>
        </table>
        <table style="width:100%;">
            <tr style="font-size: 9pt">
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><span style="font-size: 9pt">*Doctor:</span><asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SQD" DataTextField="CustomerName" DataValueField="CustomerName" Height="23px" Width="243px" style="font-size: 9pt">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SQD" runat="server" ConnectionString="<%$ ConnectionStrings:ImageOrthoDBConnectionString %>" SelectCommand="SELECT [CustomerName] FROM [tbl_Customer] ORDER BY [CustomerName]"></asp:SqlDataSource>
                </td>
                <td><span style="font-size: 9pt">*Factory:
                    </span>
                    <asp:DropDownList ID="DropDownList38" runat="server" Height="25px" Width="167px" AutoPostBack="true" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>iOrthotics - NYC</asp:ListItem>
                        <asp:ListItem>XYZ - NYC</asp:ListItem>
                        <asp:ListItem>XYZ - California</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td><span style="font-size: 9pt">Order Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                    <asp:TextBox ID="TextBox3" runat="server" Width="151px" style="font-size: 9pt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><span style="font-size: 9pt">*Pt. Last Name:
                    </span>
                    <asp:TextBox ID="TextBox4" runat="server" Width="181px" style="font-size: 9pt"></asp:TextBox>
                </td>
                <td><span style="font-size: 9pt">*First Name:</span><asp:TextBox ID="TextBox5" runat="server" Width="154px" style="font-size: 9pt"></asp:TextBox>
                </td>
                <td><span style="font-size: 9pt">Date Required:
                    </span>
                    <asp:TextBox ID="TextBox6" runat="server" Width="149px" style="font-size: 9pt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><span style="font-size: 9pt">Age:
                    </span>
                    <asp:TextBox ID="TextBox7" runat="server" Width="80px" Height="20px" style="font-size: 9pt"></asp:TextBox>
                    <span style="font-size: 9pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *Sex:
                    </span>
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="25px" Width="80px" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td><span style="font-size: 9pt">Weight:
                    </span>
                    <asp:TextBox ID="TextBox8" runat="server" Width="38px" style="font-size: 9pt"></asp:TextBox>
                    <span style="font-size: 9pt">lbs&nbsp;&nbsp;&nbsp; Height:</span><asp:TextBox ID="TextBox9" runat="server" Width="31px" style="font-size: 9pt"></asp:TextBox>
                    <span style="font-size: 9pt">in</td>
                <td>Shoe Size:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                    <asp:TextBox ID="TextBox10" runat="server" Width="29px" style="font-size: 9pt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 22px"><span style="font-size: 9pt">Shoe Type:
                    </span>
                    <asp:TextBox ID="TextBox11" runat="server" Width="196px" style="font-size: 9pt"></asp:TextBox>
                </td>
                <td colspan="2" style="height: 22px"><span style="font-size: 9pt">Ship to Patient:
                    </span>
                    <asp:TextBox ID="TextBox13" runat="server" Width="422px" style="font-size: 9pt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3"><span style="font-size: 9pt">Diagnosis:&nbsp;&nbsp;
                    </span>
                    <asp:TextBox ID="TextBox12" runat="server" Width="753px" style="font-size: 9pt"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="text-center" colspan="4" style="height: 39px; font-size: large; color: #FFFFFF; background-color: #000000"><strong>POSITIVE PRODUCTION / GRINDING / BASE SHELL INSTRUCTIONS</strong></td>
            </tr>
            <tr>
                <td class="text-center" colspan="2" style="font-size: 9pt"><strong>Negative Cast Balance</strong></td>
                <td class="text-center" colspan="2" style="font-size: 9pt"><strong>*Medial Plaster Arch Fill</strong></td>
            </tr>
            <tr>
                <td class="text-center" style="font-size: 9pt"><strong>Left:&nbsp;
                    <asp:DropDownList ID="DropDownList85" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Varus</asp:ListItem>
                        <asp:ListItem>Valgus</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;<asp:DropDownList ID="DropDownList4" runat="server"  style="font-size: 9pt" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
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
                    </strong></td>
                <td class="text-center"><strong><span style="font-size: 9pt">Right</span></strong>: <strong>
                    <asp:DropDownList ID="DropDownList86" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Varus</asp:ListItem>
                        <asp:ListItem>Valgus</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;<asp:DropDownList ID="DropDownList87" runat="server"  style="font-size: 9pt" OnSelectedIndexChanged="DropDownList87_SelectedIndexChanged">
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
                    </strong></td>
                <td colspan="2">
                    <asp:CheckBox ID="CheckBox5" runat="server"  AutoPostback="true" OnCheckedChanged="CheckBox5_CheckedChanged" />
                    Raise Arch&nbsp; </span> <strong><span style="font-size: 9pt">L: </span> </strong>&nbsp;<asp:DropDownList ID="DropDownList10" runat="server"  AutoPostBack="true" style="font-size: 9pt">
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
                &nbsp;<strong><span style="font-size: 9pt">R:
                    </span>
                    <asp:DropDownList ID="DropDownList11" runat="server"  AutoPostBack="true" style="font-size: 9pt">
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
                    </strong></td>
            </tr>
            <tr>
                <td colspan="2" style="font-size: 9pt">
                    <strong>*Heel Cup Depth: <asp:DropDownList ID="DropDownList8" runat="server" Height="24px" Width="123px" OnSelectedIndexChanged="DropDownList8_SelectedIndexChanged" AutoPostBack="true" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Low (5-7mm)</asp:ListItem>
                        <asp:ListItem>Med (10-12mm)</asp:ListItem>
                        <asp:ListItem>Deep (15-17mm)</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <span style="font-size: 9pt">&nbsp;
                    </span>
                    <asp:DropDownList ID="DropDownList37" runat="server" AutoPostBack="true" style="font-size: 9pt">
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
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                        <asp:ListItem>32</asp:ListItem>
                        <asp:ListItem>33</asp:ListItem>
                        <asp:ListItem>34</asp:ListItem>
                        <asp:ListItem>35</asp:ListItem>
                        <asp:ListItem>36</asp:ListItem>
                        <asp:ListItem>37</asp:ListItem>
                        <asp:ListItem>38</asp:ListItem>
                        <asp:ListItem>39</asp:ListItem>
                        <asp:ListItem>40</asp:ListItem>
                    </asp:DropDownList>
                    </strong>
                </td>
                <td colspan="2">
                    <asp:CheckBox ID="CheckBox6" runat="server"  AutoPostback="true" OnCheckedChanged="CheckBox6_CheckedChanged" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Lower Arch&nbsp; </span> <strong><span style="font-size: 9pt">L: </span> </strong>&nbsp;<asp:DropDownList ID="DropDownList12" runat="server" AutoPostBack="true" style="font-size: 9pt">
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
                &nbsp;<strong><span style="font-size: 9pt">R:
                    </span>
                    <asp:DropDownList ID="DropDownList13" runat="server" AutoPostBack="true" style="font-size: 9pt">
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
                    </strong></td>
            </tr>
            <tr>
                <td colspan="2" style="font-size: 9pt">
                    <strong>*Grinding:</strong>
                    <asp:DropDownList ID="DropDownList9" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Use Lab Discretion</asp:ListItem>
                        <asp:ListItem>Narrow</asp:ListItem>
                        <asp:ListItem>Normal-Narrow</asp:ListItem>
                        <asp:ListItem>Normal</asp:ListItem>
                        <asp:ListItem>Wide</asp:ListItem>
                        <asp:ListItem>Cobra Cut</asp:ListItem>
                        <asp:ListItem>See Diagram</asp:ListItem>
                        <asp:ListItem>Fit to shoes</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td colspan="2">
                    <asp:CheckBox ID="CheckBox7" runat="server"  AutoPostback="true" OnCheckedChanged="CheckBox7_CheckedChanged" style="font-size: 9pt" />
                    <span style="font-size: 9pt">
                    Same as Cast</span></td>
            </tr>
            <tr>
                <td colspan="2" style="font-size: 9pt" class="text-center">
                    <asp:CheckBox ID="CheckBox11" runat="server" />
                    <strong>Kirby Heel Skive</strong></td>
                <td colspan="2">
                    <asp:CheckBox ID="CheckBox8" runat="server"  AutoPostback="true" OnCheckedChanged="CheckBox8_CheckedChanged" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Image Scale&nbsp;</span><strong>
                    <asp:DropDownList ID="DropDownList17" runat="server" AutoPostBack="true"  style="font-size: 9pt" OnSelectedIndexChanged="DropDownList17_SelectedIndexChanged">
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
                    </strong></td>
            </tr>
            <tr>
                <td style="font-size: 9pt" class="text-center">Left:
                    <asp:DropDownList ID="DropDownList47" runat="server" OnSelectedIndexChanged="DropDownList47_SelectedIndexChanged" AutoPostBack ="true" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>2 mm</asp:ListItem>
                        <asp:ListItem>4 mm</asp:ListItem>
                        <asp:ListItem>6 mm</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<asp:TextBox ID="TextBox16" runat="server" Width="39px" Enabled="False" style="font-size: 9pt"></asp:TextBox>
                </td>
                <td style="font-size: 9pt" class="text-center">Right:
                    <asp:DropDownList ID="DropDownList48" runat="server"  AutoPostBack ="true" OnSelectedIndexChanged="DropDownList48_SelectedIndexChanged" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>2 mm</asp:ListItem>
                        <asp:ListItem>4 mm</asp:ListItem>
                        <asp:ListItem>6 mm</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<asp:TextBox ID="TextBox17" runat="server" Width="39px" Enabled="False" style="font-size: 9pt"></asp:TextBox>
                </td>
                <td class="text-center" colspan="2" style="font-size: 9pt"><strong>*Base Shell</strong></td>
            </tr>
            <tr>
                <td class="text-center" style="font-size: 9pt">
                    <strong>Accomodate Where Marked</strong></td>
                <td class="text-center" style="font-size: 9pt">
                    <strong>Modify for Full Length Shell</strong></td>
                <td class="text-center" colspan="2">
                    <asp:DropDownList ID="DropDownList18" runat="server" Height="19px" Width="294px" style="font-size: 9pt" OnSelectedIndexChanged="DropDownList18_SelectedIndexChanged">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>White Polypropylene - 3/16&quot; (semi-rigid)</asp:ListItem>
                        <asp:ListItem>White Polypropylene - 5/32&quot; (semi-flex)</asp:ListItem>
                        <asp:ListItem>White Polypropylene - 1/8&quot; (flex)</asp:ListItem>
                        <asp:ListItem>White Polypropylene  - 1/16&quot;</asp:ListItem>
                        <asp:ListItem>Flex Tweener</asp:ListItem>
                        <asp:ListItem>PRX Graphite (flex)</asp:ListItem>
                        <asp:ListItem>PRX Graphite (semi-rigid)</asp:ListItem>
                        <asp:ListItem>PRX Graphite (rigid)</asp:ListItem>
                        <asp:ListItem>PRX Graphite (ultra-rigid)</asp:ListItem>
                        <asp:ListItem>TL2100 Graphite (ultra-rigid)</asp:ListItem>
                        <asp:ListItem>TL2100 Graphite (rigid)</asp:ListItem>
                        <asp:ListItem>TL2100 Graphite (semi-rigid)</asp:ListItem>
                        <asp:ListItem>TL2100 Graphite (flex)</asp:ListItem>
                        <asp:ListItem>TLSilver Graphite (flex)</asp:ListItem>
                        <asp:ListItem>TLSilver Graphite (semi-rigid)</asp:ListItem>
                        <asp:ListItem>TLSilver Graphite (rigid)</asp:ListItem>
                        <asp:ListItem>TLSilver Graphite (ultra-rigid)</asp:ListItem>
                        <asp:ListItem>Thermocork (firm)</asp:ListItem>
                        <asp:ListItem>Birkcork (soft)</asp:ListItem>
                        <asp:ListItem>Diabetic (hard xpe 280 lbs+)</asp:ListItem>
                        <asp:ListItem>Diabetic (medium new foam 150 lbs to 180 lbs)</asp:ListItem>
                        <asp:ListItem>Diabetic (medium  crepe 180 lbs to 280 lbs)</asp:ListItem>
                        <asp:ListItem>Diabetic (soft trilam &lt; 150 lbs)</asp:ListItem>
                        <asp:ListItem>1/16&quot; Polypro with plantar fill (soft)</asp:ListItem>
                        <asp:ListItem>1/16&quot; Polypro with plantar fill (medium)</asp:ListItem>
                        <asp:ListItem>1/16&quot; Polypro with plantar fill (firm)</asp:ListItem>
                        <asp:ListItem>1/8&quot; Polypro with plantar fill (soft)</asp:ListItem>
                        <asp:ListItem>1/8&quot; Polypro with plantar fill (medium)</asp:ListItem>
                        <asp:ListItem>1/8&quot; Polypro with plantar fill (firm)</asp:ListItem>
                        <asp:ListItem>3/16&quot; Polypro with plantar fill (soft)</asp:ListItem>
                        <asp:ListItem>3/16&quot; Polypro with plantar fill (medium)</asp:ListItem>
                        <asp:ListItem>3/16&quot; Polypro with plantar fill (firm)</asp:ListItem>
                        <asp:ListItem>UCBL (promotes vertical gait)</asp:ListItem>
                        <asp:ListItem>Toe Out (promotes out-toeing)</asp:ListItem>
                        <asp:ListItem>Toe In (promotes in-toeing)</asp:ListItem>
                        <asp:ListItem>Cork and Leather Device</asp:ListItem>
                        <asp:ListItem>Cork</asp:ListItem>
                        <asp:ListItem>P-lite</asp:ListItem>
                        <asp:ListItem>10% Fill</asp:ListItem>
                        <asp:ListItem>20% Fill</asp:ListItem>
                        <asp:ListItem>Insoles (no shell)</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="text-center" style="font-size: 9pt">
                    <asp:CheckBox ID="CheckBox12" runat="server" />
                    <span style="font-size: 9pt">Left
                    <asp:CheckBox ID="CheckBox13" runat="server" />
                    Right</td>
                <td class="text-center">
                    <asp:CheckBox ID="CheckBox14" runat="server" style="font-size: 9pt" />
                    <span style="font-size: x-small"><span style="font-size: 9pt">Left
                    <asp:CheckBox ID="CheckBox15" runat="server" />
                    Right</span></span></td>
                <td class="text-left" style="width: 217px">
                    <asp:CheckBox ID="CheckBox73" runat="server" style="font-size: small" />
                    <span style="font-size: small">Full Foot Plate</span><asp:DropDownList ID="DropDownList104" runat="server" style="font-size: small">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="text-left" style="width: 218px">
                    </span>
                    <asp:CheckBox ID="CheckBox77" runat="server" style="font-size: small" />
                    <span style="font-size: small">ST Modification</span><asp:DropDownList ID="DropDownList110" runat="server" style="font-size: small">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                    </td>
            </tr>
            </table>
        <br />
        <table style="width:869px;">
            <tr>
                <td class="text-center" colspan="4" style="height: 39px; font-size: large; color: #FFFFFF; background-color: #000000"><strong>POSTING</strong></td>
            </tr>
            <tr>
                <td class="text-center" colspan="2" style="font-size: 9pt"><strong>*Post:<span style="font-size: 9pt">
                    <asp:DropDownList ID="DropDownList94" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                    </span></strong>
                </td>
                <td class="text-center" colspan="2"><span style="font-size: 9pt">&nbsp; </span> <strong><span style="font-size: 9pt">Material:
                    </span>
                    <asp:DropDownList ID="DropDownList19" runat="server" Height="21px" Width="104px" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Crepe</asp:ListItem>
                        <asp:ListItem>Acrylic</asp:ListItem>
                        <asp:ListItem>Unibody</asp:ListItem>
                    </asp:DropDownList>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="text-center" colspan="2" style="font-size: 9pt">
                    <span style="font-size: 9pt">
                    <asp:CheckBox ID="CheckBox9" runat="server" AutoPostBack="true" OnCheckedChanged="CheckBox9_CheckedChanged" />
                    </span>
                    <strong><span style="font-size: 9pt">Extrinsic Rearfoot Post</span><asp:DropDownList ID="DropDownList46" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Wide</asp:ListItem>
                        <asp:ListItem>Bevel In</asp:ListItem>
                    </asp:DropDownList>
                    </strong></td>
                <td class="text-center" colspan="2" style="font-size: 9pt">
                    <asp:CheckBox ID="CheckBox10" runat="server" AutoPostBack="true" OnCheckedChanged="CheckBox10_CheckedChanged" />
                    <strong>Extrinsic Forefoot Post</strong></td>
            </tr>
            <tr>
                <td class="text-center" style="height: 22px; width: 217px; font-size: 9pt;"><strong>Left:
                    <asp:DropDownList ID="DropDownList88" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Inv</asp:ListItem>
                        <asp:ListItem>Motion</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList20" runat="server" OnSelectedIndexChanged="DropDownList20_SelectedIndexChanged" AutoPostBack="true" style="font-size: 9pt">
                        <asp:ListItem>N/A</asp:ListItem>
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
                    </strong></td>
                <td class="text-center" style="height: 22px; width: 217px;"><strong><span style="font-size: 9pt">Right</span></strong>: <strong>
                    <asp:DropDownList ID="DropDownList89" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Inv</asp:ListItem>
                        <asp:ListItem>Motion</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList90" runat="server" OnSelectedIndexChanged="DropDownList20_SelectedIndexChanged" AutoPostBack="true" style="font-size: 9pt">
                        <asp:ListItem>N/A</asp:ListItem>
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
                    </strong></td>
                <td class="text-center" style="height: 22px; width: 217px"></span><strong><span style="font-size: 9pt">Left:
                    <asp:DropDownList ID="DropDownList91" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Varus</asp:ListItem>
                        <asp:ListItem>Valgus</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList24" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList24_SelectedIndexChanged" style="font-size: 9pt">
                         <asp:ListItem>N/A</asp:ListItem>
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
                    </span></strong></td>
                <td class="text-center" style="height: 22px; width: 218px; font-size: 9pt;"><strong>Right: <span style="font-size: 9pt">
                    <asp:DropDownList ID="DropDownList92" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Varus</asp:ListItem>
                        <asp:ListItem>Valgus</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList93" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList24_SelectedIndexChanged" style="font-size: 9pt">
                         <asp:ListItem>N/A</asp:ListItem>
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
                    </span></strong></td>
            </tr>
            <tr>
                <td style="height: 27px; font-size: 9pt;" class="text-center" colspan="2">
                    <strong>Wedge<asp:DropDownList ID="DropDownList50" runat="server" Height="16px" Width="85px" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Lateral</asp:ListItem>
                        <asp:ListItem>Medial</asp:ListItem>
                    </asp:DropDownList>
                    <span style="font-size: 9pt">&nbsp;Left </span><asp:DropDownList ID="DropDownList45" runat="server" Height="16px" Width="47px" AutoPostBack ="true" OnSelectedIndexChanged="DropDownList45_SelectedIndexChanged" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>1/16&quot;</asp:ListItem>
                        <asp:ListItem>1/8&quot;</asp:ListItem>
                        <asp:ListItem>3/16&quot;</asp:ListItem>
                        <asp:ListItem>1/4&quot;</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="TextBox15" runat="server" Width="37px" style="font-size: 9pt"></asp:TextBox>
                    <span style="font-size: 9pt">&nbsp;Right </span><asp:DropDownList ID="DropDownList49" runat="server" Height="16px" Width="43px" AutoPostBack ="true" OnSelectedIndexChanged="DropDownList49_SelectedIndexChanged" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>1/16&quot;</asp:ListItem>
                        <asp:ListItem>1/8&quot;</asp:ListItem>
                        <asp:ListItem>3/16&quot;</asp:ListItem>
                        <asp:ListItem>1/4&quot;</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="TextBox18" runat="server" Width="37px" style="font-size: 9pt"></asp:TextBox>
                    </strong>
                </td>
                <td style="height: 27px; width: 217px;" class="text-center">
                    &nbsp;</td>
                <td style="height: 27px; width: 218px;" class="text-center">
                    &nbsp;</td>
            </tr>
            </table>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="text-center" colspan="3" style="height: 39px; font-size: large; color: #FFFFFF; background-color: #000000"><strong>EXTENSIONS / TOP COVER / BOTTOM COVER</strong></td>
            </tr>
            <tr>
                <td class="text-center" style="width: 326px; font-size: 9pt;"><strong>Middle Material</strong></td>
                <td class="text-center" style="font-size: 9pt"><strong>Thickness</strong></td>
                <td class="text-center" style="font-size: 9pt"><strong>Length</strong></td>
            </tr>
            <tr>
                <td class="text-center" style="width: 326px">
                    <asp:DropDownList ID="DropDownList31" runat="server" OnSelectedIndexChanged="DropDownList31_SelectedIndexChanged" AutoPostBack="true" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Black Poron</asp:ListItem>
                        <asp:ListItem>Pink Plastizote</asp:ListItem>
                        <asp:ListItem>Soft EVA</asp:ListItem>
                        <asp:ListItem>Pcell</asp:ListItem>
                        <asp:ListItem>Sea Mist (Memory Foam)</asp:ListItem>
                        <asp:ListItem>Special Poron (slow recovery)</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="text-center">
                    <asp:DropDownList ID="DropDownList32" runat="server" Height="16px" Width="149px" AutoPostBack="true" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>1/16&quot;</asp:ListItem>
                        <asp:ListItem>1/8&quot;</asp:ListItem>
                        <asp:ListItem>3/16&quot;</asp:ListItem>
                        <asp:ListItem>1/4&quot;</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="text-center">
                    <asp:DropDownList ID="DropDownList33" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>On Device Only</asp:ListItem>
                        <asp:ListItem>Distal of Devices to Sulcus</asp:ListItem>
                        <asp:ListItem>Distal Of Devices To Toes</asp:ListItem>
                        <asp:ListItem>Cover Devices to Sulcus</asp:ListItem>
                        <asp:ListItem>Cover Devices to Toes</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="text-center" style="width: 326px; height: 22px; font-size: 9pt;"><strong>Additional Middle Material</strong></td>
                <td class="text-center" style="height: 22px; font-size: 9pt;"><strong>Thickness</strong></td>
                <td class="text-center" style="height: 22px; font-size: 9pt;"><strong>Length</strong></td>
            </tr>
            <tr>
                <td class="text-center" style="width: 326px">
                    <asp:DropDownList ID="DropDownList39" runat="server" OnSelectedIndexChanged="DropDownList39_SelectedIndexChanged" AutoPostBack="true" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Black Poron</asp:ListItem>
                        <asp:ListItem>Pink Plastazote</asp:ListItem>
                        <asp:ListItem>1/4" Plastazote</asp:ListItem>
                        <asp:ListItem>Soft EVA</asp:ListItem>
                        <asp:ListItem>Pcell</asp:ListItem>
                        <asp:ListItem>Sea Mist (Memory Foam)</asp:ListItem>
                        <asp:ListItem>Special Poron (slow recovery)</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="text-center">
                    <asp:DropDownList ID="DropDownList40" runat="server" Height="16px" Width="149px" AutoPostBack="true" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>1/16&quot;</asp:ListItem>
                        <asp:ListItem>1/8&quot;</asp:ListItem>
                        <asp:ListItem>3/16&quot;</asp:ListItem>
                        <asp:ListItem>1/4&quot;</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="text-center">
                    <asp:DropDownList ID="DropDownList41" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>On Device Only</asp:ListItem>
                        <asp:ListItem>Distal of Devices to Sulcus</asp:ListItem>
                        <asp:ListItem>Distal Of Devices To Toes</asp:ListItem>
                        <asp:ListItem>Cover Devices to Sulcus</asp:ListItem>
                        <asp:ListItem>Cover Devices to Toes</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="text-center" style="width: 326px; font-size: 9pt;"><strong>*Top Cover</strong></td>
                <td class="text-center">&nbsp;</td>
                <td class="text-center" style="font-size: 9pt"><strong>*Length</strong></td>
            </tr>
            <tr>
                <td class="text-center" style="width: 326px; height: 24px;">
                    <asp:DropDownList ID="DropDownList34" runat="server" Height="19px" Width="238px" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Vinyl</asp:ListItem>
                        <asp:ListItem>Leather (Perf)</asp:ListItem>
                        <asp:ListItem>Ultra Suede</asp:ListItem>
                        <asp:ListItem>Ultra Suede (Tan)</asp:ListItem>
                        <asp:ListItem>Ultra Suede (Black)</asp:ListItem>
                        <asp:ListItem>EVA Black (1/8")</asp:ListItem>
                        <asp:ListItem>EVA Black (1/16&quot;)</asp:ListItem>
                        <asp:ListItem>EVA Blue (1/16")</asp:ListItem>
                        <asp:ListItem>EVA Blue (1/8")</asp:ListItem>
                        <asp:ListItem>EVA Pink (1/16")</asp:ListItem>
                        <asp:ListItem>EVA Pink (1/8")</asp:ListItem>
                        <asp:ListItem>EVA Camo (1/16&quot;)</asp:ListItem>
                        <asp:ListItem>EVA Camo (1/8&quot;)</asp:ListItem>
                        <asp:ListItem>Perforated EVA Black (1/16")</asp:ListItem>
                        <asp:ListItem>Perforated EVA Black (1/8")</asp:ListItem>
                        <asp:ListItem>Perforated EVA Blue (1/16")</asp:ListItem>
                        <asp:ListItem>Perforated EVA Blue (1/8")</asp:ListItem>
                        <asp:ListItem>Plastazote (1/16")</asp:ListItem>
                        <asp:ListItem>Plastazote (1/8")</asp:ListItem>
                        <asp:ListItem>Topper (1/16")</asp:ListItem>
                        <asp:ListItem>Topper (1/8")</asp:ListItem>
                        <asp:ListItem>Neoprene (1/16")</asp:ListItem>
                        <asp:ListItem>Neoprene (1/8")</asp:ListItem>
                        <asp:ListItem>XStatic (1/16")</asp:ListItem>
                        <asp:ListItem>XStatic (1/8")</asp:ListItem>
                         <asp:ListItem>Blue Puff Trilam</asp:ListItem>
                        <asp:ListItem>P-Cell (1/16")</asp:ListItem>
                        <asp:ListItem>P-Cell (1/8")</asp:ListItem>
                        <asp:ListItem>Special P-Cell Trilam</asp:ListItem>
                         <asp:ListItem>3/8 Trilam</asp:ListItem>
                        <asp:ListItem>No Top Cover</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="text-center" style="height: 24px"></td>
                <td class="text-center" style="height: 24px">
                    <asp:DropDownList ID="DropDownList35" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>On Device Only</asp:ListItem>
                        <asp:ListItem>Cover Devices to Sulcus</asp:ListItem>
                        <asp:ListItem>Cover Devices to Toes</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="text-center" style="width: 326px; height: 22px; font-size: 9pt;"><strong>*Bottom Cover</strong></td>
                <td class="text-center" style="height: 22px"></td>
                <td class="text-center" style="height: 22px; font-size: 9pt;"><strong>*Length</strong></td>
            </tr>
            <tr>
                <td class="text-center" style="width: 326px">
                    <asp:DropDownList ID="DropDownList36" runat="server" Height="19px" Width="238px" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Regular</asp:ListItem>
                        <asp:ListItem>Spikey</asp:ListItem>
                        <asp:ListItem>Suede</asp:ListItem>
                        <asp:ListItem>No Bottom Cover</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="text-center" style="font-size: 9pt">&nbsp;</td>
                <td class="text-center">
                    <asp:DropDownList ID="DropDownList44" runat="server" Height="16px" Width="190px" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>N/A</asp:ListItem>
                        <asp:ListItem>Heel to Toe</asp:ListItem>
                        <asp:ListItem>Extension Only</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <table style="width:100%;" >
            <tr>
                <td class="text-center">
                    &nbsp;</td>
            </tr>
        </table>
        <table style="width:869px;">
            <tr>
                <td class="text-center" colspan="2" style="height: 39px; font-size: large; color: #FFFFFF; background-color: #000000"><strong>SHELL MODIFICATIONS</strong></td>
            </tr>
            <tr>
                <td class="text-left">
                    <asp:CheckBox ID="CheckBox16" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">1st Ray Cut Out </span>
                    <asp:DropDownList ID="DropDownList51" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="text-left">
                    <asp:CheckBox ID="CheckBox17" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">1st Met Cut Out </span>
                    <asp:DropDownList ID="DropDownList52" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="text-left">
                    <asp:CheckBox ID="CheckBox18" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Intrinsic Heel Hole Cut Out </span>
                    <asp:DropDownList ID="DropDownList53" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="text-left">
                    <asp:CheckBox ID="CheckBox19" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Lateral Clip </span>
                    <asp:DropDownList ID="DropDownList54" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="text-left">
                    <asp:CheckBox ID="CheckBox20" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Flange </span>
                    <asp:DropDownList ID="DropDownList56" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Medial</asp:ListItem>
                        <asp:ListItem>Lateral</asp:ListItem>
                        <asp:ListItem>Medial/Lateral</asp:ListItem>
                    </asp:DropDownList>
                    <span style="font-size: 9pt">&nbsp; </span>
                    <asp:DropDownList ID="DropDownList55" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="text-left">
                    <asp:CheckBox ID="CheckBox21" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Plantar Fascia Groove </span>
                    <asp:DropDownList ID="DropDownList57" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="text-left">
                    <asp:CheckBox ID="CheckBox71" runat="server" style="font-size: 9pt" />
                    C<span style="font-size: 9pt">arbon Shank </span>
                    <asp:DropDownList ID="DropDownList98" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="DropDownList99" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Full Length</asp:ListItem>
                        <asp:ListItem>Mortons Ext</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="text-left">
                    <asp:CheckBox ID="CheckBox72" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Rigid Ext&nbsp; </span>
                    <asp:DropDownList ID="DropDownList100" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="DropDownList101" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>End at IPJs</asp:ListItem>
                        <asp:ListItem>End at To Toes</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<asp:DropDownList ID="DropDownList103" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Mortons Ext</asp:ListItem>
                        <asp:ListItem>Mortons Ext under 2nd</asp:ListItem>
                        <asp:ListItem>Mortons Ext Under 3rd</asp:ListItem>
                        <asp:ListItem>Mortons Ext Under 4th</asp:ListItem>
                        <asp:ListItem>Mortons Ext Under 5th</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="text-left">
                    &nbsp;</td>
                <td class="text-left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="text-center" colspan="2">
                    &nbsp;</td>
            </tr>
            </table>
        <table style="width:869px;">
            <tr>
                <td class="text-center" colspan="2" style="height: 39px; font-size: large; color: #FFFFFF; background-color: #000000"><span style="font-weight: bold">SOFT MODIFICATIONS</span></td>
            </tr>
            <tr>
                <td class="text-left">
                    <asp:CheckBox ID="CheckBox22" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">1 to 5 Sulcus Pad&nbsp; </span>
                    <asp:DropDownList ID="DropDownList65" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>EVA 1/8&quot;</asp:ListItem>
                        <asp:ListItem>EVA 3/16&quot;</asp:ListItem>
                        <asp:ListItem>Slow Recovery 1/8&quot;</asp:ListItem>
                        <asp:ListItem>Slow Recovery 3/16&quot;</asp:ListItem>
                        <asp:ListItem>Black Poron 1/8&quot;</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<asp:DropDownList ID="DropDownList58" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="text-left">
                    <asp:CheckBox ID="CheckBox23" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Grind in </span>
&nbsp;<asp:DropDownList ID="DropDownList66" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Varus</asp:ListItem>
                        <asp:ListItem>Valgus</asp:ListItem>
                        <asp:ListItem>Neutral</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<asp:DropDownList ID="DropDownList67" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
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
                <td class="text-left">
                    <asp:CheckBox ID="CheckBox75" runat="server" style="font-size: 9pt" />
                    2<span style="font-size: 9pt"> to 5 Sulcus Pad&nbsp; </span>
                    <asp:DropDownList ID="DropDownList106" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>EVA 1/8&quot;</asp:ListItem>
                        <asp:ListItem>EVA 3/16&quot;</asp:ListItem>
                        <asp:ListItem>Slow Recovery 1/8&quot;</asp:ListItem>
                        <asp:ListItem>Slow Recovery 3/16&quot;</asp:ListItem>
                        <asp:ListItem>Black Poron 1/8&quot;</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<asp:DropDownList ID="DropDownList107" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="text-left">
                    <asp:CheckBox ID="CheckBox76" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Grind in </span>
&nbsp;<asp:DropDownList ID="DropDownList108" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Varus</asp:ListItem>
                        <asp:ListItem>Valgus</asp:ListItem>
                        <asp:ListItem>Neutral</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<asp:DropDownList ID="DropDownList109" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
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
                <td class="text-left" style="height: 27px">
                    <asp:CheckBox ID="CheckBox24" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Mortons Ext&nbsp;&nbsp; </span>
                    <asp:DropDownList ID="DropDownList60" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList68" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Black Poron To Toes</asp:ListItem>
                        <asp:ListItem>Black Poron To IPJ</asp:ListItem>
                        <asp:ListItem>Crepe To Toes</asp:ListItem>
                        <asp:ListItem>Crepe To IPJ</asp:ListItem>
                        <asp:ListItem>Rev. Mortons Ext</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="text-left" style="height: 27px">
                    <asp:CheckBox ID="CheckBox25" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Arch Pad </span>
                    <asp:DropDownList ID="DropDownList61" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="text-left">
                    <asp:CheckBox ID="CheckBox26" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Flanges </span>
                    <asp:DropDownList ID="DropDownList62" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Medial</asp:ListItem>
                        <asp:ListItem>Lateral</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<asp:DropDownList ID="DropDownList69" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Cork Reinforced with Spikey</asp:ListItem>
                        <asp:ListItem>Cork Reinforced with Regular</asp:ListItem>
                        <asp:ListItem>Eva Reinforced with Spikey</asp:ListItem>
                        <asp:ListItem>EVA reinforced with Regular</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<asp:DropDownList ID="DropDownList63" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="text-left">
                    <asp:CheckBox ID="CheckBox27" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Heel Pad </span>
                    <asp:DropDownList ID="DropDownList64" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="text-left" style="height: 22px">
                    <asp:CheckBox ID="CheckBox31" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Kinetic Wedge </span>
                    <asp:DropDownList ID="DropDownList73" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="text-left" style="height: 22px">
                    <asp:CheckBox ID="CheckBox28" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Heel Spur Pad </span>
                    <asp:DropDownList ID="DropDownList70" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="text-left" style="height: 22px">
                    <asp:CheckBox ID="CheckBox32" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Neuroma Pad </span>
                    <asp:DropDownList ID="DropDownList74" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="text-left" style="height: 22px">
                    <asp:CheckBox ID="CheckBox29" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Cuboid Support Pad </span>
                    <asp:DropDownList ID="DropDownList71" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="text-left" style="height: 22px">
                    <asp:CheckBox ID="CheckBox33" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Plantar Fascia Groove </span>
                    <asp:DropDownList ID="DropDownList75" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="text-left" style="height: 22px">
                    <asp:CheckBox ID="CheckBox30" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Metatarsal Raise </span>
                    <asp:DropDownList ID="DropDownList72" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="text-left">
                    <asp:CheckBox ID="CheckBox34" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Runners Wedge </span>
                    <asp:DropDownList ID="DropDownList76" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                    <span style="font-size: 9pt">&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList96" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Varus</asp:ListItem>
                        <asp:ListItem>Valgus</asp:ListItem>
                    </asp:DropDownList>
&nbsp; </span>
                    <asp:DropDownList ID="DropDownList78" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
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
                <td class="text-left">
                    <asp:CheckBox ID="CheckBox35" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Dancers Pad </span>
                    <asp:DropDownList ID="DropDownList79" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="text-left">
                    <asp:CheckBox ID="CheckBox36" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Met Bar </span>
                    <asp:DropDownList ID="DropDownList80" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                    <span style="font-size: 9pt">&nbsp; </span>
                    <asp:DropDownList ID="DropDownList81" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>1/16&quot;</asp:ListItem>
                        <asp:ListItem>1/8&quot;</asp:ListItem>
                        <asp:ListItem>3/16&quot;</asp:ListItem>
                        <asp:ListItem>1/4&quot;</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="text-left">
                    <asp:CheckBox ID="CheckBox37" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Met Pad </span>
                    <asp:DropDownList ID="DropDownList82" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
                    <span style="font-size: 9pt">&nbsp; </span>
                    <asp:DropDownList ID="DropDownList83" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>1/16&quot;</asp:ListItem>
                        <asp:ListItem>1/8&quot;</asp:ListItem>
                        <asp:ListItem>3/16&quot;</asp:ListItem>
                        <asp:ListItem>1/4&quot;</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<asp:DropDownList ID="DropDownList84" runat="server" style="font-size: 9pt; height: 21px;" AutoPostBack="true" OnSelectedIndexChanged="DropDownList84_SelectedIndexChanged">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Distal</asp:ListItem>
                        <asp:ListItem>Proximal</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList97" runat="server" AutoPostBack ="true">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>3/16</asp:ListItem>
                        <asp:ListItem>1/4</asp:ListItem>
                        <asp:ListItem>5/16</asp:ListItem>
                        <asp:ListItem>3/8</asp:ListItem>
                        <asp:ListItem>1/2</asp:ListItem>
                        <asp:ListItem>1st</asp:ListItem>
                        <asp:ListItem>1/16</asp:ListItem>
                        <asp:ListItem>1/8</asp:ListItem>
                        <asp:ListItem>2nd</asp:ListItem>
                        <asp:ListItem>3rd</asp:ListItem>
                        <asp:ListItem>4th</asp:ListItem>
                        <asp:ListItem>5th</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<asp:DropDownList ID="DropDownList95" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Small</asp:ListItem>
                        <asp:ListItem>Medium</asp:ListItem>
                        <asp:ListItem>Large</asp:ListItem>
                        <asp:ListItem>Extra Large</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="text-left" style="height: 29px">
                    <asp:CheckBox ID="CheckBox74" runat="server" style="font-size: 9pt" />
                    <span style="font-size: 9pt">Toe Fill </span>
                    <asp:DropDownList ID="DropDownList105" runat="server" style="font-size: 9pt">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Bilateral</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                        <asp:ListItem>Right</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<asp:TextBox ID="TextBox20" runat="server" style="font-size: 9pt" Width="165px"></asp:TextBox>
                </td>
                <td class="text-left" style="font-size: 9pt; height: 29px">
                </td>
            </tr>
            <tr style="font-size: x-small">
                <td class="text-left" style="font-size: 9pt">
                    &nbsp;</td>
                <td class="text-left" style="font-size: 9pt">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="text-left" style="font-size: 9pt">
                    <strong>Logo: </strong>
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" style="font-size: small">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="text-left">
                    <strong><span style="font-size: 9pt">Return Positive Cast: </span></strong>
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" style="font-size: small">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="text-center" style="font-size: 9pt">
                    &nbsp;</td>
                <td class="text-left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="text-center" style="font-size: 9pt" colspan="2">
                    <asp:CheckBox ID="CheckBox60" runat="server" />
                    SUB-U Accomodation
                    <asp:RadioButton ID="RadioButton3" runat="server" />
                    Channel
                    <asp:RadioButton ID="RadioButton4" runat="server" />
                    Pocket<br />
                    <asp:CheckBox ID="CheckBox61" runat="server" />
                    R1<asp:CheckBox ID="CheckBox62" runat="server" />
                    R2<asp:CheckBox ID="CheckBox63" runat="server" />
                    R3<asp:CheckBox ID="CheckBox64" runat="server" />
                    R4<asp:CheckBox ID="CheckBox65" runat="server" />
                    R5
                    <asp:CheckBox ID="CheckBox66" runat="server" />
                    L1<asp:CheckBox ID="CheckBox67" runat="server" />
                    L2<asp:CheckBox ID="CheckBox68" runat="server" />
                    L3<asp:CheckBox ID="CheckBox69" runat="server" />
                    L4<asp:CheckBox ID="CheckBox70" runat="server" />
                    L5<br />
                    &nbsp;
                    <img alt="" src="Images/rp.jpg" style="width: 77px; height: 216px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img alt="" src="Images/fp.jpg" style="width: 77px; height: 216px" />&nbsp;&nbsp; 
                </td>
            </tr>
            <tr>
                <td class="text-center" style="font-size: 9pt" colspan="2">
                    <asp:TextBox ID="TextBox19" runat="server" Height="74px" TextMode="MultiLine" Width="609px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-center" colspan="2">
                    <asp:Label ID="Label1" runat="server" style="color: #FF0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="text-center" colspan="2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Review the Final Order" />
                </td>
            </tr>
            </table>
            <br />
       
    </div>

</asp:Content>
