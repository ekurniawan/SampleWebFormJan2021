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
            <asp:ValidationSummary runat="server" 
                ShowSummary="true" ShowMessageBox="true" ForeColor="Red"  />
            <hr />
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

            Usia :<br />
            <asp:TextBox ID="txtUsia" runat="server" TextMode="Number" />
            <asp:RangeValidator ErrorMessage="Batasan umur 18-59" 
                ControlToValidate="txtUsia" MinimumValue="18" 
                MaximumValue="59" runat="server" Type="Integer" ForeColor="Red" />
            <br /><br />

            <asp:CheckBox ID="chkSetuju" 
                Text="Cek disini jika anda setuju?" runat="server" /><br /><br />

            Gender :<br />
            <asp:RadioButton ID="rdMale" Text="Male" GroupName="groupGender" 
                runat="server" />
            <asp:RadioButton ID="rdFemale" Text="Female" GroupName="groupGender" 
                runat="server" /><br /><br />

            Email:<br />
            <asp:TextBox ID="txtEmail" TextMode="Email" runat="server" />
            <asp:RegularExpressionValidator runat="server" 
                ControlToValidate="txtEmail" 
                ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" 
                ErrorMessage="Format Email Tidak Sesuai" ForeColor="Red" />
            <br /><br />

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
