<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContohServerControl.aspx.cs" Inherits="SampleWebForm.ContohServerControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contoh Server Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Halaman Web Saya</h2>
            <br />
            <label for="txtFirstName">First Name :</label><br />
            <asp:TextBox ID="txtFirstName" runat="server" /><br /><br />
            <label>Last Name :</label><br />
            <asp:TextBox ID="txtLastName" runat="server" /><br /><br />
            <asp:Button ID="btnSubmit" Text="Submit" runat="server" />
            <hr />
            <asp:Label ID="lblBiodata" runat="server" />
        </div>
    </form>
</body>
</html>
