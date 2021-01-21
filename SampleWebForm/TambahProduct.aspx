<%@ Page Title="Form Tambah Product" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TambahProduct.aspx.cs" Inherits="SampleWebForm.TambahProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:ObjectDataSource ID="odsProduct" runat="server" />
    <asp:ObjectDataSource ID="odsSupplier" TypeName="SampleWebForm.DAL.SupplierDAL" SelectMethod="GetAll" runat="server" />
    <asp:ObjectDataSource ID="odsCategory" TypeName="SampleWebForm.DAL.CategoryDAL" SelectMethod="GetAll" runat="server" />

    <h3>Form Tambah Product</h3>
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="txtProductName">Product Name :</label>
                <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtSupplier">Supplier Name :</label>
                <asp:DropDownList ID="ddProduct" DataValueField="SupplierID"  
                    DataTextField="CompanyName" runat="server" CssClass="form-control" DataSourceID="odsSupplier" />
            </div>
            <div class="form-group">
                <label for="txtCategory">Category Name :</label>
                <asp:DropDownList ID="ddCategory" runat="server" CssClass="form-control" DataSourceID="odsCategory" DataTextField="CategoryName" DataValueField="CategoryID" />
            </div>
            <div class="form-group">
                <label for="txtQuantityPerUnit">Quantity Per Unit :</label>
                <asp:TextBox ID="txtQuantityPerUnit" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtUnitPrice">Unit Price :</label>
                <asp:TextBox ID="txtUnitPrice" runat="server" TextMode="Number" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtUnitsInStock">Units In Stock :</label>
                <asp:TextBox ID="txtUnitsInStock" runat="server" TextMode="Number" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtUnitsOnOrder">Units On Order :</label>
                <asp:TextBox ID="txtUnitsOnOrder" runat="server" TextMode="Number" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtReorderLevel">Reorder Level :</label>
                <asp:TextBox ID="txtReorderLevel" runat="server" TextMode="Number" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="chkDiscontinued">Reorder Level :</label>
                <asp:CheckBox ID="chkDiscontinued" Text="Discontinued" runat="server" />
            </div>
            <asp:Button ID="btnSubmit" Text="Submit" CssClass="btn btn-primary" runat="server" />
        </div>
    </div>
</asp:Content>
