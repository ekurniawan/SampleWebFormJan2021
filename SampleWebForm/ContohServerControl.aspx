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
             First Name :<br />
            <asp:TextBox ID="txtFirstName" runat="server" /><br /><br />

             Last Name :<br />
            <asp:TextBox ID="txtLastName" runat="server" /><br /><br />

            <asp:CheckBox ID="chkSetuju" 
                Text="Cek disini jika anda setuju?" runat="server" /><br /><br />

            Gender :<br />
            <asp:RadioButton ID="chkMale" Text="Male" GroupName="groupGender" runat="server" />
            <asp:RadioButton ID="chkFemale" Text="Female" GroupName="groupGender" runat="server" /><br /><br />
            
            <asp:Button ID="btnSubmit" Text="Submit" runat="server" BackColor="#99CCFF" 
                OnClick="btnSubmit_Click" />
            <hr />
            <asp:Label ID="lblBiodata" runat="server" />
        </div>
    </form>
</body>
</html>
