<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeMgt.aspx.cs" Inherits="OnlineTuto.EmployeeMgt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%-- SET A LOGIN PAGE AS A DEFAULT OPEN GOTO LOGIN PAGE AND SET AS A FIRST PAGE --%>

    <div class="container">
        <p>&nbsp;</p>
        <h1 style="text-align: center;">Employee Managment Panel</h1>
        <p>&nbsp;</p>
        <div class="form-group" style="text-align: center;">
            <asp:Label ID="MessageLbl" runat="server" Text=""></asp:Label>
        </div>
        <asp:GridView ID="GridviewList" runat="server" CssClass="table" AutoGenerateColumns="false" OnRowCommand="GridViewList_RowCommand">
            <Columns>
                <asp:BoundField DataField="emp_id" HeaderText="Employee ID" />
                <asp:BoundField DataField="fullname" HeaderText="Fullname" />
                <asp:BoundField DataField="email" HeaderText="Email" />
                <asp:BoundField DataField="phone" HeaderText="Phone" />
                <asp:BoundField DataField="date_of_birth" HeaderText="Date of Birth" />
                <asp:BoundField DataField="level_of_education" HeaderText="Level of Education" />
                <asp:BoundField DataField="salary" HeaderText="Salary" />
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button ID="btnview" runat="server" Text="view" CommandName="ViewDetails" CommandArgument='<% Bind("emp_id")%>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
