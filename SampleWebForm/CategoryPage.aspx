<%@ Page Title="Setup Category" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="CategoryPage.aspx.cs" Inherits="SampleWebForm.CategoryPage"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ObjectDataSource ID="odsCategory" TypeName="SampleWebForm.DAL.CategoryDAL" runat="server"
        SelectMethod="GetAll" InsertMethod="Insert">
        <InsertParameters>
            <asp:Parameter Name="CategoryName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>

    <div class="row">
        <h2>Setup Category</h2><hr />
         <asp:Literal ID="ltKeterangan" runat="server" />
        <hr />
        <div class="col-md-3">
            <div class="form-group">
                <label for="txtCategoryName">Category Name :</label>
                <asp:TextBox ID="txtCategoryName" runat="server"  CssClass="form-control" />
                <asp:RequiredFieldValidator ErrorMessage="Category Name Required" 
                    ControlToValidate="txtCategoryName" CssClass="text text-danger" runat="server" />
            </div>
            <div class="form-group">
                <label for="txtDescription">Description :</label>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" CssClass="form-control" />
            </div>
            <asp:Button ID="btnAdd" Text="Add" runat="server" OnClick="btnAdd_Click" /><br /><br />
           
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
