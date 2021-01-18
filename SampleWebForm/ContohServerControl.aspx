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
            <asp:TextBox ID="txtFirstName" runat="server" />
            <asp:RequiredFieldValidator runat="server" 
               ControlToValidate="txtFirstName" ForeColor="Red" 
                ErrorMessage="Data FirstName tidak boleh kosong" />
            <br /><br />

             Last Name :<br />
            <asp:TextBox ID="txtLastName" runat="server" />
            <asp:RequiredFieldValidator 
                ErrorMessage="Data LastName tidak boleh kosong" ForeColor="Red"
                ControlToValidate="txtLastName" runat="server" />
            <br /><br />

            Password: <br />
            <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" />
            <br /><br />

            Repassword: <br />
            <asp:TextBox runat="server" ID="txtRepassword" TextMode="Password" />
            <asp:CompareValidator runat="server" ControlToValidate="txtRepassword"
                ControlToCompare="txtPassword" ForeColor="Red"
                ErrorMessage="Password dan Repassword harus sama" />
            <br /><br />

            <asp:CheckBox ID="chkSetuju" 
                Text="Cek disini jika anda setuju?" runat="server" /><br /><br />

            Gender :<br />
            <asp:RadioButton ID="rdMale" Text="Male" GroupName="groupGender" 
                runat="server" />
            <asp:RadioButton ID="rdFemale" Text="Female" GroupName="groupGender" 
                runat="server" /><br /><br />

            Kota: <br />
            <asp:DropDownList ID="ddKota" runat="server">
                <asp:ListItem Text="Yogyakarta" Selected="True" />
                <asp:ListItem Text="Surabaya" />
                <asp:ListItem Text="Jakarta" />
            </asp:DropDownList><br /><br />
            
            <asp:Button ID="btnSubmit" Text="Submit" runat="server" BackColor="#99CCFF" 
                OnClick="btnSubmit_Click" />
            <hr />
            <asp:Label ID="lblBiodata" runat="server" />
        </div>
    </form>
</body>
</html>
