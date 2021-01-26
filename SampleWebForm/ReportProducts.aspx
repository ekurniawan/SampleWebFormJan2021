<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportProducts.aspx.cs" Inherits="SampleWebForm.ReportProducts" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report Product</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <rsweb:ReportViewer ID="rvProducts" Width="100%" Height="600px" runat="server"></rsweb:ReportViewer>
        </div>
    </form>
</body>
</html>
