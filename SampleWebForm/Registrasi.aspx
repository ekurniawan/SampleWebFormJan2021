<%@ Page Title="Registrasi" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registrasi.aspx.cs" Inherits="SampleWebForm.Registrasi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <h3>Registrasi</h3>
        <div class="form-group">
            <label for="txtUsername">Username :</label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" />
        </div>
        <div class="form-group">
            <label for="txtPassword">Password :</label>
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control" />
        </div>
        <div class="form-group">
            <label for="txtRepassword">Repassword :</label>
            <asp:TextBox ID="txtRepassword" TextMode="Password" runat="server" CssClass="form-control" />
            <asp:CompareValidator ErrorMessage="Password dan Repassword harus sama" 
                ControlToValidate="txtRepassword" ControlToCompare="txtPassword" ForeColor="Red" runat="server" />
        </div>
        <div class="form-group">
            <label for="txtAturan">Aturan :</label>
            <asp:TextBox ID="txtAturan" runat="server" CssClass="form-control" />
        </div>
        <asp:Button ID="btnRegistrasi" Text="Registrasi" CssClass="btn btn-success" runat="server" OnClick="btnRegistrasi_Click" />
        <br />
        <asp:Literal ID="ltKeterangan" runat="server" />
    </div>
</asp:Content>
