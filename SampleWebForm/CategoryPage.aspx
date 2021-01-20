<%@ Page Title="Setup Category" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CategoryPage.aspx.cs" Inherits="SampleWebForm.CategoryPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ObjectDataSource ID="odsCategory" TypeName="SampleWebForm.DAL.CategoryDAL" runat="server"  
        SelectMethod="GetAll" />

    <div class="row">
        <h2>Setup Category</h2>
        <div class="col-md-3">
            <h3>Form Tambah Category</h3>
        </div>
        <div class="col-md-9">
            <asp:GridView ID="gvCategory" runat="server" AutoGenerateColumns="False" 
                DataSourceID="odsCategory" CssClass="table table-striped" PageSize="5" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="CategoryID" HeaderText="Category ID" SortExpression="CategoryID" />
                    <asp:BoundField DataField="CategoryName" HeaderText="Category Name" SortExpression="CategoryName" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
