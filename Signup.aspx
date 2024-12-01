<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="OnlineTuto.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <title>Signup</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <p>&nbsp;</p>
            <h1 style="text-align: center;">Signup</h1>
            <p>&nbsp;</p>

            <!-- Display messages -->
            <div class="form-group" style="text-align: center;">
                <asp:Label ID="MessageLbl" runat="server" Text=""></asp:Label>
            </div>

            <!-- Form fields -->
            <div class="form-group row">
                <asp:Panel ID="Panel1" runat="server" CssClass="form-group col-md-6">
                    <asp:Label ID="Label1" runat="server" Text="Fullname"></asp:Label>
                    <asp:TextBox ID="fullnameBox" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server" CssClass="form-group col-md-6">
                    <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="emailBox" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                </asp:Panel>
            </div>

            <div class="form-group row">
                <asp:Panel ID="Panel3" runat="server" CssClass="form-group col-md-6">
                    <asp:Label ID="Label3" runat="server" Text="Phone"></asp:Label>
                    <asp:TextBox ID="phoneBox" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                </asp:Panel>
                <asp:Panel ID="Panel4" runat="server" CssClass="form-group col-md-6">
                    <asp:Label ID="Label4" runat="server" Text="Level of Education"></asp:Label>
                    <asp:DropDownList ID="LevelOfEducationList" runat="server" required="true" CssClass="form-control">
                        <asp:ListItem>--SELECT ONE--</asp:ListItem>
                        <asp:ListItem>High School</asp:ListItem>
                        <asp:ListItem>University</asp:ListItem>
                        <asp:ListItem>Masters</asp:ListItem>
                    </asp:DropDownList>
                </asp:Panel>
            </div>

            <div class="form-group row">
                <asp:Panel ID="Panel5" runat="server" CssClass="form-group col-md-6">
                    <asp:Label ID="Label5" runat="server" Text="Date of Birth"></asp:Label>
                    <asp:TextBox ID="Dateofbirth" runat="server" CssClass="form-control" TextMode="Date" required="true"></asp:TextBox>
                </asp:Panel>
                <asp:Panel ID="Panel6" runat="server" CssClass="form-group col-md-6">
                    <asp:Label ID="Label6" runat="server" Text="Username"></asp:Label>
                    <asp:TextBox ID="usernameBox" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                </asp:Panel>
            </div>

            <div class="form-group row">
                <asp:Panel ID="Panel7" runat="server" CssClass="form-group col-md-6">
                    <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="passwordBox" runat="server" CssClass="form-control" TextMode="Password" required="true"></asp:TextBox>
                </asp:Panel>
                <asp:Panel ID="Panel8" runat="server" CssClass="form-group col-md-6">
                    <asp:Label ID="Label8" runat="server" Text="Confirm Password"></asp:Label>
                    <asp:TextBox ID="confirmpasswordBox" runat="server" CssClass="form-control" TextMode="Password" required="true"></asp:TextBox>
                </asp:Panel>
            </div>
            <div class="form-group" style="text-align: center;">
                <p>&nbsp;</p>

                <asp:Button ID="SignupBtn" runat="server" CssClass="btn btn-primary" OnClick="SignupBtn_Click" Text="Signup" /><br />
                <br />
                <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl="~/Login.aspx">Already have an account? Login</asp:HyperLink>

            </div>


        </div>
    </form>
</body>
</html>
