<%@ Page Title="Product Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductPage.aspx.cs" Inherits="SampleWebForm.ProductPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ObjectDataSource ID="odsProduct" TypeName="SampleWebForm.DAL.ProductWithCategoryDAL" runat="server"
        SelectMethod="GetAll" />
    <asp:Label ID="lblDate" runat="server" />
    <div class="row">
        <h2>List Of Product</h2>
        <br />


        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <asp:Literal ID="ltKeterangan" runat="server" />
                <br />
                <div class="col-md-8">
                    <asp:GridView ID="gvProduct" runat="server" AutoGenerateColumns="False"
                        DataSourceID="odsProduct" CssClass="table table-striped" AllowPaging="true" PageSize="5">
                        <Columns>
                            <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                            <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                            <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" SortExpression="QuantityPerUnit" />
                            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                            <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" SortExpression="UnitsInStock" />
                            <asp:BoundField DataField="UnitsOnOrder" HeaderText="UnitsOnOrder" SortExpression="UnitsOnOrder" />
                            <asp:BoundField DataField="ReorderLevel" HeaderText="ReorderLevel" SortExpression="ReorderLevel" />
                            <asp:CheckBoxField DataField="Discontinued" HeaderText="Discontinued" SortExpression="Discontinued" />
                        </Columns>
                    </asp:GridView>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>



    </div>
</asp:Content>
