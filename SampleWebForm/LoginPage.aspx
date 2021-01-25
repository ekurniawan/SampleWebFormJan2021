<%@ Page Title="Login Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="SampleWebForm.LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group">
        <label for="txtUsername">Username :</label>
        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" />
    </div>
    <div class="form-group">
        <label for="txtPassword">Password :</label>
        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control" />
    </div>
    <asp:Button ID="btnLogin" Text="Login" CssClass="btn btn-success" runat="server" OnClick="btnLogin_Click"  />
    <br /><br />
    <asp:Literal ID="ltKeterangan" runat="server" />
</asp:Content>
