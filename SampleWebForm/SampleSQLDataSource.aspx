<%@ Page Title="Contoh SQL Datasource" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SampleSQLDataSource.aspx.cs" Inherits="SampleWebForm.SampleSQLDataSource" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:SqlDataSource ID="sdsEmployee" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
        SelectCommand="SELECT [EmpId], [EmpName], [Designation], [Department], [Qualification] FROM [Employees] ORDER BY [EmpName]" />
    
    <asp:GridView ID="gvEmployee" runat="server" 
        AutoGenerateColumns="False" DataKeyNames="EmpId" 
        DataSourceID="sdsEmployee" CssClass="table table-striped">
        <Columns>
            <asp:BoundField DataField="EmpId" HeaderText="EmpId" InsertVisible="False" ReadOnly="True" SortExpression="EmpId" />
            <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
            <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
            <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
            <asp:BoundField DataField="Qualification" HeaderText="Qualification" SortExpression="Qualification" />
        </Columns>
    </asp:GridView>
</asp:Content>
