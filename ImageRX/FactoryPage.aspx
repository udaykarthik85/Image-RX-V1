<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FactoryPage.aspx.cs" Inherits="ImageRX.FactoryPage" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
            
    <div style="width:auto">
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1403px" Height="1380px" HyperlinkTarget="_blank">
                <LocalReport ReportPath="ImageOrderMgmt.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="Dashboard" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData" TypeName="ImageRX.DashboarddataSetTableAdapters.DashboardTableAdapter"></asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="ImageRX.ImageOrthoDBDataSet2TableAdapters.RptViewTableAdapter"></asp:ObjectDataSource>
</div>
</asp:Content>
