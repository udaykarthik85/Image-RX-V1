﻿<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderPageV2.aspx.cs" Inherits="ImageRX.OrderPageV2" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
            
    <div style="width:auto">
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" SizeToReportContent="True" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="930px">
                <LocalReport ReportPath="Ordersummary.rdlc" EnableExternalImages="True" EnableHyperlinks="True">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByOID" TypeName="ImageRX.ImageOrthoDBDataSet2TableAdapters.RptViewTableAdapter">
                <SelectParameters>
                    <asp:QueryStringParameter Name="OID" QueryStringField="Id" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
</div>
</asp:Content>
