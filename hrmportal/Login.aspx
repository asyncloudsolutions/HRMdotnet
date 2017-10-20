<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="hrmportal.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/style.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <div class="container">
            <section id="content">
    <form id="Login" runat="server">
        <h1>Login Form</h1>
        <div>            
            <asp:TextBox ID="username" runat="server" required="" placeholder="User Name"></asp:TextBox>
            </div>
        <div>
            <asp:TextBox ID="password" runat="server" required="" Placeholder="Password" TextMode="Password" ></asp:TextBox>
            </div>
        <div>
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
            <asp:Button ID="btnReset" runat="server" Text="Reset" />        
            </div>
    </form>
                </section><!-- content -->
        </div><!-- container -->
    <script src="Scripts/index.js"></script>
</body>
</html>
