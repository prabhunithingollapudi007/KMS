<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="KM.login" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Login</title>
 
    <link href="StyleLogin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <img src="Images/wiproPanel.png" class="panel" />
        </section>
        <div class="sec2">
            <div class="container">
                <div class="content">
                    <h2 style="color:white">Sign Up</h2>
                    <asp:TextBox ID="TextBox1" placeholder="Username" runat="server"></asp:TextBox><br />
                    <asp:TextBox ID="TextBox2" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox><br /><br />
                    <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" /><br />
                    <asp:Label ID="Label1" style="padding-left:4vw;padding-top:2vh;" Font-Size="Large" ForeColor="Red" runat="server" Text="Username or Password Incorrect....!"></asp:Label>
                </div>
            </div>

        </div>
    </form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [login]"></asp:SqlDataSource>
</body>
</html>
