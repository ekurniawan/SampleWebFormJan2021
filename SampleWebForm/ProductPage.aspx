<%@ Page Title="Product Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductPage.aspx.cs" Inherits="SampleWebForm.ProductPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ObjectDataSource ID="odsProduct" TypeName="SampleWebForm.DAL.ProductWithCategoryDAL" runat="server"
        SelectMethod="GetAll" OldValuesParameterFormatString="original_{0}" UpdateMethod="Edit">
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="SupplierID" Type="Int32" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
            <asp:Parameter Name="QuantityPerUnit" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="UnitsInStock" Type="Int16" />
            <asp:Parameter Name="UnitsOnOrder" Type="Int16" />
            <asp:Parameter Name="ReorderLevel" Type="Int16" />
            <asp:Parameter Name="Discontinued" Type="Boolean" />
            <asp:Parameter Name="ProductID" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="odsSupplier" TypeName="SampleWebForm.DAL.SupplierDAL" SelectMethod="GetAll" runat="server" />
    <asp:ObjectDataSource ID="odsCategory" TypeName="SampleWebForm.DAL.CategoryDAL" SelectMethod="GetAll" runat="server" />


    <asp:Label ID="lblDate" runat="server" />
    <div class="row">
        <h2>List Of Product</h2>
        <br />
        <asp:HyperLink NavigateUrl="~/TambahProduct" Text="Insert Product" CssClass="btn btn-sm btn-success" runat="server" />
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <asp:Literal ID="ltKeterangan" runat="server" />
                <br />
                <div class="col-md-8">
                    <asp:GridView ID="gvProduct" runat="server" AutoGenerateColumns="False"
                        DataSourceID="odsProduct" CssClass="table table-striped" AllowPaging="True" PageSize="5">
                        <Columns>
                            <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                            <asp:TemplateField HeaderText="Category Name">
                                <ItemTemplate>
                                    <%# Eval("CategoryName") %>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:DropDownList ID="ddCategory" DataSourceID="odsCategory" DataTextField="CategoryName" DataValueField="CategoryID"
                                        SelectedValue='<%# Bind("CategoryID") %>' runat="server" />
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Company Name">
                                <ItemTemplate>
                                    <%# Eval("CompanyName") %>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:DropDownList ID="ddSupplier" DataValueField="SupplierID"
                                        DataTextField="CompanyName" runat="server" CssClass="form-control" DataSourceID="odsSupplier"
                                        SelectedValue='<%# Bind("SupplierID")%>' />
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" SortExpression="QuantityPerUnit">
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice"
                                DataFormatString="Rp.{0:N0}">
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" SortExpression="UnitsInStock">
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="UnitsOnOrder" HeaderText="UnitsOnOrder" SortExpression="UnitsOnOrder">
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ReorderLevel" HeaderText="ReorderLevel" SortExpression="ReorderLevel">
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:CheckBoxField DataField="Discontinued" HeaderText="Discontinued" SortExpression="Discontinued">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:CheckBoxField>
                            <asp:CommandField ShowEditButton="True" />
                        </Columns>
                    </asp:GridView>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>



    </div>
</asp:Content>
