﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SampleReport.aspx.cs" Inherits="SampleWebForm.SampleReport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <asp:ScriptManager runat="server"></asp:ScriptManager>
            <rsweb:ReportViewer ID="rvLaporan" Width="100%" Height="600px" runat="server">
            </rsweb:ReportViewer>
        </div>
    </form>
</body>
</html>
