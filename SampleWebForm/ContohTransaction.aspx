<%@ Page Title="Contoh Transaction" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContohTransaction.aspx.cs" Inherits="SampleWebForm.ContohTransaction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Literal ID="ltKeterangan" runat="server" /><br /><br />
    <asp:Button ID="btnProses" Text="Proses" CssClass="btn btn-success" runat="server" OnClick="btnProses_Click" />
</asp:Content>
