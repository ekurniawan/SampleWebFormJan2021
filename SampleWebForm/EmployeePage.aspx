<%@ Page Title="Employee Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeePage.aspx.cs" Inherits="SampleWebForm.EmployeePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:ObjectDataSource runat="server" ID="odsEmployee" TypeName="SampleWebForm.DAL.EmployeeDAL"
        SelectMethod="GetAll" InsertMethod="Insert">
        <InsertParameters>
            <asp:Parameter Name="EmpName" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="Qualification" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>

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
        <br />
        <div class="col-md-4">
            <div class="form-group">
                <label for="txtEmpName">Employee Name :</label>
                <asp:TextBox ID="txtEmpName" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtDesignation">Designation :</label>
                <asp:TextBox ID="txtDesignation" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtDepartment">Department :</label>
                <asp:TextBox ID="txtDepartment" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="txtQualification">Qualification :</label>
                <asp:TextBox ID="txtQualification" runat="server" CssClass="form-control" />
            </div>
            <asp:Button ID="btnSubmit" Text="Submit" CssClass="btn btn-primary"
                runat="server" OnClick="btnSubmit_Click" />
            <br />
            <asp:Literal ID="ltKeterangan" runat="server" />
        </div>
    </div>
</asp:Content>
