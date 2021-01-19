<%@ Page Title="Employee Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeePage.aspx.cs" Inherits="SampleWebForm.EmployeePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:ObjectDataSource runat="server" ID="odsEmployee" TypeName="SampleWebForm.DAL.EmployeeDAL"
        SelectMethod="GetAll" />

    <div class="row">
        <h2>Setup Employee</h2>
        <asp:GridView ID="gvEmployee" runat="server" AutoGenerateColumns="False"
            DataSourceID="odsEmployee" CssClass="table table-striped" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="EmpId" HeaderText="EmpId" SortExpression="EmpId" />
                <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
                <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                <asp:BoundField DataField="Qualification" HeaderText="Qualification" SortExpression="Qualification" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
