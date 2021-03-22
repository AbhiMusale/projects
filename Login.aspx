<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Assignment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Script/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-box">
            <h1>Login</h1>
            <div class="textbox">
                <i class="fas fa-user"></i>
                <asp:TextBox ID="txtUserName" placeholder="Username" MaxLength="12" runat="server" />
                <asp:RequiredFieldValidator ErrorMessage="Please enter user name!" ControlToValidate="txtUserName" Display="Dynamic" ForeColor="Red" runat="server" />
                <%--<input type="text" placeholder="Username" />--%>
            </div>
            <div class="textbox">
                <i class="fas fa-lock"></i>
                <asp:TextBox ID="txtPassword" placeholder="Password" TextMode="Password" MaxLength="12" runat="server" />
                <asp:RequiredFieldValidator ErrorMessage="Please enter password!" ControlToValidate="txtPassword" Display="Dynamic" ForeColor="Red" runat="server" />
                <%--<input type="password" placeholder="Password" />--%>
            </div>
            <asp:Button ID="btnLogin" OnClick="btnLogin_Click" Text="Sign In" CssClass="btn" runat="server" />
            <%--<input type="button" class="btn" value="Sign in" />--%>
        </div>
    </form>
</body>
</html>
