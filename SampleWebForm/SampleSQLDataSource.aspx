<%@ Page Title="Contoh SQL Datasource" Language="C#" MasterPageFile="~/Site.Master" 
    AutoEventWireup="true" CodeBehind="SampleSQLDataSource.aspx.cs" Inherits="SampleWebForm.SampleSQLDataSource" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="sdsEmployee" runat="server"
        ConnectionString="<%$ ConnectionStrings:MyConnectionString %>"
        SelectCommand="SELECT [EmpId], [EmpName], [Designation], [Department], [Qualification] FROM [Employees] ORDER BY [EmpName]"
        FilterExpression ="EmpName like '%{0}%' OR Designation like '%{0}%' OR Department like '%{0}%' OR Qualification like '%{0}%'"
        DeleteCommand="DELETE FROM [Employees] WHERE [EmpId] = @EmpId"
        InsertCommand="INSERT INTO [Employees] ([EmpName], [Designation], [Department], [Qualification]) VALUES (@EmpName, @Designation, @Department, @Qualification)"
        UpdateCommand="UPDATE [Employees] SET [EmpName] = @EmpName, [Designation] = @Designation, [Department] = @Department, [Qualification] = @Qualification WHERE [EmpId] = @EmpId">
        <FilterParameters>
            <asp:ControlParameter Name="EmpName" ControlID="txtKeyword" Type="String" />
        </FilterParameters>
        <DeleteParameters>
            <asp:Parameter Name="EmpId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="EmpName" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="Qualification" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="EmpName" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="Qualification" Type="String" />
            <asp:Parameter Name="EmpId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <div class="row">
        <h3>Setup Employee</h3>
        <div class="col-md-10">
            Pencarian :
            <asp:TextBox ID="txtKeyword" runat="server" />
            <asp:Button ID="btnCari" CssClass="btn btn-primary" Text="Cari" 
                runat="server"/><br />

            <asp:GridView ID="gvEmployee" runat="server"
                AutoGenerateColumns="False" DataKeyNames="EmpId"
                DataSourceID="sdsEmployee" CssClass="table table-striped"
                AllowPaging="True" AllowSorting="True" PageSize="5">
                <Columns>
                    <asp:BoundField DataField="EmpId" HeaderText="EmpId" InsertVisible="False" ReadOnly="True" SortExpression="EmpId" />
                    <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
                    <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                    <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                    <asp:BoundField DataField="Qualification" HeaderText="Qualification" SortExpression="Qualification" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
        </div>
        <div class="col-md-2">
            Employee Name :<br />
            <asp:TextBox ID="txtEmpName" runat="server" /><br /><br />
            Designation :<br />
            <asp:TextBox ID="txtDesignation" runat="server" /><br /><br />
            Department :<br />
            <asp:TextBox ID="txtDepartment" runat="server" /><br /><br />
            Qualification :<br />
            <asp:TextBox ID="txtQualification" runat="server" /><br /><br />
            <asp:Button ID="btnSubmit" Text="Submit" runat="server" 
                CssClass="btn btn-default" OnClick="btnSubmit_Click" />
            <br /><hr />
            <asp:Literal ID="ltKeterangan" runat="server" />
        </div>
    </div>


</asp:Content>
