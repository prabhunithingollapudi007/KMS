<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="KM.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style.css" rel="stylesheet" />
    <link href="Style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="shortcut icon" type="img/png" href="Images/favicon-32x32.png" />

        <style>

        @import url('https://fonts.googleapis.com/fanily=Bitter|Crete+Round|Pacifico');
       


    </style>
</head>
    <body>
    <form id="form1" runat="server">
        <div class="navbar">
        <a class="active" href="Welcome.aspx"><i class="fa fa-fw fa-home"></i> Home</a> 
        <a href="Registration.aspx"><i class=" fa fa-pencil-square-o"></i> Add</a> 
        <a href="View.aspx"><i class="fas fa-address-card"></i> View</a> 
        <%--<a href="#" style="margin-left:875px" ><i class="fas fa-user-circle"></i> Login</a>--%>
        <a href="#" style="margin-left:975px"><i class="fa fa-sign-out-alt"></i> Log Out</a>
    </div>
        <section>
            <div class="container">
                
                <div class="b1">
                    <h3 style="padding-left:65px">LOG-IN SUCCESSFUL</h3>
                    <h2 style="padding-left:150px"><asp:Label ID="txtuser" style="color:black" runat="server"></asp:Label></h2>
                    <br />
                    <br />
                    
                    <br />
                    <br />
                    <br />
                    <br />
                <asp:Button ID="Button1" runat="server" Width="500px" OnClick="Button1_Click"  CssClass="btn btn-success"  Text="View Employee List" />
                    <br />
                    <br />
                    <!-- Remember two breaks does the job here-->

                    <asp:Button ID="Button2" runat="server" Width="500px" OnClick="Button2_Click" CssClass="btn btn-success"  Text="Add new Employee" />
                    <br />
                    <br />
                    <asp:Button ID="Button3" runat="server" Width="500px" OnClick="Button3_Click" CssClass="btn btn-success"  Text="Log-out" />
                </div>
                    <br />
                <div class="b2">
                    
                    

                </div>
                    

                
               

                </div>


        </section>


    </form>

</body>
</html>
