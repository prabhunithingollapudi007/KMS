<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="KM.View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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

          

        <div class="CSSTableGenerator">
    
        <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" CellPadding="100" Font-Size="Medium" ForeColor="#333333" GridLines="None" Width="50%" CssClass="tableview">
            <AlternatingRowStyle BackColor="White" HorizontalAlign="Center" Font-Size="small" ForeColor="#284775" />
            <EditRowStyle Font-Size="small" BackColor="#999999" />
            <FooterStyle Font-Size="small" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle Font-Size="small" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle Font-Size="small" BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle Font-Size="small" BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle Font-Size="small" BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle Font-Size="small" BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle Font-Size="small" BackColor="#506C8C" />
            <SortedDescendingCellStyle Font-Size="small" BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle Font-Size="small" BackColor="#6F8DAE" />
        </asp:GridView>
    
    </div>








          












        </section>

    </form>
</body>
</html>
 
