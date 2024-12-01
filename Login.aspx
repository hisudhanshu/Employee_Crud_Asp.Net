<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineTuto.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <p>&nbsp;</p>
            <h1 style="text-align: center;">Login</h1>
            <p>&nbsp;</p>
            <div class="form-group" style="text-align: center;">
                <asp:Label ID="MessageLbl" runat="server" Text=""></asp:Label>
            </div>
            <div class="form-group">

                <asp:Panel ID="Panel6" runat="server" CssClass="form-group">
                    <asp:Label ID="Label6" runat="server" Text="Username"></asp:Label>
                    <asp:TextBox ID="usernameBox" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                </asp:Panel>
                <asp:Panel ID="Panel7" runat="server" CssClass="form-group">
                    <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="passwordBox" runat="server" CssClass="form-control" TextMode="Password" required="true"></asp:TextBox>
                </asp:Panel>
            </div>
            <div class="form-group" style="text-align: center;">
                <p>&nbsp;</p>

                <asp:Button ID="LoginBtn" runat="server" CssClass="btn btn-primary" OnClick="LoginBtn_Click" Text="Login" />
              <br /><br />
                <asp:HyperLink ID="Hyperlink2" runat="server" NavigateUrl="~/Signup.aspx">Dont have an account? Create here</asp:HyperLink>
            </div>


        </div>
    </form>
</body>
</html>
