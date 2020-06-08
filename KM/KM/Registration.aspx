<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="KM.Registration" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title> 
    <link href="StyleReg.css" rel="stylesheet" />
    <script src="Validation.js" type="text/javascript">  
</script>
    <style>

        @import url('https://fonts.googleapis.com/fanily=Bitter|Crete+Round|Pacifico');
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <section>
            <h3 style="    margin-left: 100px;
    margin-top: 53px; color:white;">I. SINGLE UPLOAD</h3>
            <div class="container1">
                
                    <div class="h1"><h1>EMPLOYEE DETAILS</h1></div>
                    <asp:TextBox ID="eid" placeholder="Employee ID" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ename" placeholder="Full Name" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="erole" placeholder="Role" runat="server"></asp:TextBox>
                    <br />
                    <br />
                  
                    <span>
                        <asp:Label ID="sl1"  runat="server" Text="Skill " ForeColor="Black" Font-Size="20px" CssClass="Drop1" Width="50px" Height="19px"></asp:Label>

                    <asp:DropDownList ID="skill1" CssClass="Drop1"  runat="server" Font-Size="15px" Height="24px" Width="127px">
                        <asp:ListItem Enabled="true" Text="Select Skill" Value="-1" ></asp:ListItem>
                        <asp:ListItem Text="Angular JS" Value="Angular JS"></asp:ListItem>
                        <asp:ListItem Text="ASP.NET" Value="ASP.NET"></asp:ListItem>
                        <asp:ListItem Text="Azure" Value="Azure"></asp:ListItem>
                        <asp:ListItem Text="Node JS" Value="Node JS"></asp:ListItem>
                        <asp:ListItem Text="PHP" Value="PHP"></asp:ListItem>
                    </asp:DropDownList>

                    <asp:Label ID="ll1"  runat="server" Text="Level" ForeColor="Black" Font-Size="20px" CssClass="Drop1" Width="52px" Height="20px"></asp:Label>
                   <asp:DropDownList ID="level1" CssClass="Drop1"  runat="server" Font-Size="15px" Height="24px" Width="127px">
                         <asp:ListItem Enabled="true" Text="Select Level" Value="-1" ></asp:ListItem>
                        <asp:ListItem Text="Beginner" Value="Beginner"></asp:ListItem>
                        <asp:ListItem Text="Intermediate" Value="Intermediate"></asp:ListItem>
                        <asp:ListItem Text="Proficient" Value="Proficient"></asp:ListItem>
                        <asp:ListItem Text="Expert" Value="Expert"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="sl2"  runat="server" Text="Skill" ForeColor="Black" Font-Size="20px" CssClass="Drop1" Width="48px"></asp:Label>
                        <asp:DropDownList ID="skill2" runat="server"  Font-Size="15px" Height="24px" Width="127px">
                        <asp:ListItem Enabled="true" Text="Select Skill" Value="-1" ></asp:ListItem>
                        <asp:ListItem Text="Angular JS" Value="Angular JS"></asp:ListItem>
                        <asp:ListItem Text="ASP.NET" Value="ASP.NET"></asp:ListItem>
                        <asp:ListItem Text="Azure" Value="Azure"></asp:ListItem>
                        <asp:ListItem Text="Node JS" Value="Node JS"></asp:ListItem>
                        <asp:ListItem Text="PHP" Value="PHP"></asp:ListItem>
                    </asp:DropDownList>
                   <asp:Label ID="ll2"  runat="server" Text="Level" ForeColor="Black" Font-Size="20px" CssClass="Drop1" Width="52px"></asp:Label>
                       <asp:DropDownList ID="level2" CssClass="Drop1"  runat="server" Font-Size="15px" Height="24px" Width="127px">
                        <asp:ListItem Enabled="true" Text="Select Level" Value="-1" ></asp:ListItem>
                        <asp:ListItem Text="Beginner" Value="Beginner"></asp:ListItem>
                        <asp:ListItem Text="Intermediate" Value="Intermediate"></asp:ListItem>
                        <asp:ListItem Text="Proficient" Value="Proficient"></asp:ListItem>
                        <asp:ListItem Text="Expert" Value="Expert"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="sl3"  runat="server" Text="Skill" ForeColor="Black" Font-Size="20px" CssClass="Drop1" Width="48px"></asp:Label>
                    <asp:DropDownList ID="skill3" runat="server"  Font-Size="15px" Height="24px" Width="127px">
                        <asp:ListItem Enabled="true" Text="Select Skill" Value="-1" ></asp:ListItem>
                        <asp:ListItem Text="Angular JS" Value="Angular JS"></asp:ListItem>
                        <asp:ListItem Text="ASP.NET" Value="ASP.NET"></asp:ListItem>
                        <asp:ListItem Text="Azure" Value="Azure"></asp:ListItem>
                        <asp:ListItem Text="Node JS" Value="Node JS"></asp:ListItem>
                        <asp:ListItem Text="PHP" Value="PHP"></asp:ListItem>
                    </asp:DropDownList>
                        <asp:Label ID="ll3"  runat="server" Text="Level" ForeColor="Black" Font-Size="20px" CssClass="Drop1" Width="52px"></asp:Label>
                        <asp:DropDownList ID="level3" CssClass="Drop1"  runat="server" Font-Size="15px" Height="24px" Width="127px">
                        <asp:ListItem Enabled="true" Text="Select Level" Value="-1" ></asp:ListItem>
                        <asp:ListItem Text="Beginner" Value="Beginner"></asp:ListItem>
                        <asp:ListItem Text="Intermediate" Value="Intermediate"></asp:ListItem>
                        <asp:ListItem Text="Proficient" Value="Proficient"></asp:ListItem>
                        <asp:ListItem Text="Expert" Value="Expert"></asp:ListItem>
                    </asp:DropDownList>
                    </span>
                <asp:Button ID="Button1" runat="server" Width="500px" OnClick="Button1_Click" OnClientClick="return Validation()" CssClass="sbmt btn btn-success"  Text="Submit Details" />
                <h3 style="margin-top:50px;color:white;">II. BULK UPLOAD</h3>
                
                <asp:Button ID="Button2" runat="server" Width="500px" OnClick="Download"  CssClass="btn btn-success dld"  Text="Download Template" />
                <asp:Button ID="Button3" runat="server" Width="500px" OnClick="Button3_Click"  CssClass="btn btn-success dld"  Text="Upload Entries" />
                
                </div>
                <div class="container2">
                    <div class="h1"><h1>PROJECT DETAILS</h1></div>
                    <br />
                    <table border="0" >
                        <tr>
                            <th>SL NO.</th>
                            <th>PROJECT NAME</th>
                            <th>SKILL REQUIREMENT</th>
                            <th>EFFICIENCY REQUIREMENT</th>
                        </tr>
                        <tr>
                            <td>1.</td>
                            <td>
                                <asp:TextBox ID="pname1" placeholder="NAME" runat="server" ></asp:TextBox></td>
                            <td>
                         <asp:DropDownList ID="ps1" runat="server"  Font-Size="15px" Height="24px" Width="127px">
                        <asp:ListItem Enabled="true" Text="Select Skill" Value="-1" ></asp:ListItem>
                        <asp:ListItem Text="Angular JS" Value="Angular JS"></asp:ListItem>
                        <asp:ListItem Text="ASP.NET" Value="ASP.NET"></asp:ListItem>
                        <asp:ListItem Text="Azure" Value="Azure"></asp:ListItem>
                        <asp:ListItem Text="Node JS" Value="Node JS"></asp:ListItem>
                        <asp:ListItem Text="PHP" Value="PHP"></asp:ListItem>
                    </asp:DropDownList>
                            </td>
                            <td>
                        <asp:DropDownList ID="pl1" CssClass="Drop1"  runat="server" Font-Size="15px" Height="24px" Width="127px">
                        <asp:ListItem Enabled="true" Text="Select Level" Value="-1" ></asp:ListItem>
                        <asp:ListItem Text="Beginner" Value="Beginner"></asp:ListItem>
                        <asp:ListItem Text="Intermediate" Value="Intermediate"></asp:ListItem>
                        <asp:ListItem Text="Proficient" Value="Proficient"></asp:ListItem>
                        <asp:ListItem Text="Expert" Value="Expert"></asp:ListItem>
                    </asp:DropDownList>
                            </td>

                        </tr>
                                                <tr>
                            <td>2.</td>
                            <td>
                        <asp:TextBox ID="pname2" placeholder="NAME" runat="server" ></asp:TextBox></td>
                        <td>
                        <asp:DropDownList ID="ps2" runat="server"  Font-Size="15px" Height="24px" Width="127px">
                        <asp:ListItem Enabled="true" Text="Select Skill" Value="-1" ></asp:ListItem>
                        <asp:ListItem Text="Angular JS" Value="Angular JS"></asp:ListItem>
                        <asp:ListItem Text="ASP.NET" Value="ASP.NET"></asp:ListItem>
                        <asp:ListItem Text="Azure" Value="Azure"></asp:ListItem>
                        <asp:ListItem Text="Node JS" Value="Node JS"></asp:ListItem>
                        <asp:ListItem Text="PHP" Value="PHP"></asp:ListItem>
                    </asp:DropDownList>
                            </td>
                            <td>
                        <asp:DropDownList ID="pl2" CssClass="Drop1"  runat="server" Font-Size="15px" Height="24px" Width="127px">
                        <asp:ListItem Enabled="true" Text="Select Level" Value="-1" ></asp:ListItem>
                        <asp:ListItem Text="Beginner" Value="Beginner"></asp:ListItem>
                        <asp:ListItem Text="Intermediate" Value="Intermediate"></asp:ListItem>
                        <asp:ListItem Text="Proficient" Value="Proficient"></asp:ListItem>
                        <asp:ListItem Text="Expert" Value="Expert"></asp:ListItem>
                    </asp:DropDownList>
                            </td>


                        </tr>
                                                <tr>
                            <td>3.</td>
                            <td>
                                <asp:TextBox ID="pname3" placeholder="NAME" runat="server" ></asp:TextBox></td>
                            <td>
                         <asp:DropDownList ID="ps3" runat="server"  Font-Size="15px" Height="24px" Width="127px">
                        <asp:ListItem Enabled="true" Text="Select Skill" Value="-1" ></asp:ListItem>
                        <asp:ListItem Text="Angular JS" Value="Angular JS"></asp:ListItem>
                        <asp:ListItem Text="ASP.NET" Value="ASP.NET"></asp:ListItem>
                        <asp:ListItem Text="Azure" Value="Azure"></asp:ListItem>
                        <asp:ListItem Text="Node JS" Value="Node JS"></asp:ListItem>
                        <asp:ListItem Text="PHP" Value="PHP"></asp:ListItem>
                    </asp:DropDownList>
                            </td>
                            <td>
                        <asp:DropDownList ID="pl3" CssClass="Drop1"  runat="server" Font-Size="15px" Height="24px" Width="127px">
                        <asp:ListItem Enabled="true" Text="Select Level" Value="-1" ></asp:ListItem>
                        <asp:ListItem Text="Beginner" Value="Beginner"></asp:ListItem>
                        <asp:ListItem Text="Intermediate" Value="Intermediate"></asp:ListItem>
                        <asp:ListItem Text="Proficient" Value="Proficient"></asp:ListItem>
                        <asp:ListItem Text="Expert" Value="Expert"></asp:ListItem>
                    </asp:DropDownList>
                            </td>

                        </tr>

                    </table>
                    </div>
            
            


        </section>
    </form>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [regi]"></asp:SqlDataSource>
</body>
</html>
--%>



<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="KM.Registration" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Validation.js" type="text/javascript"></script>
    <title>Registration Form</title> 
    <link href="StyleReg.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="shortcut icon" type="img/png" href="Images/favicon-32x32.png" />


    <style>

        @import url('https://fonts.googleapis.com/fanily=Bitter|Crete+Round|Pacifico');
       

    
        
       


    </style>
</head>
<body>

    <div class="navbar">
        <a class="active" href="Welcome.aspx"><i class="fa fa-fw fa-home"></i> Home</a> 
        <a href="Registration.aspx"><i class="
fa fa-pencil-square-o"></i> Add</a> 
        <a href="View.aspx"><i class="fas fa-address-card"></i> View</a> 
        <%--<a href="#" style="margin-left:875px" ><i class="fas fa-user-circle"></i> Login</a>--%>
        <a href="#" style="margin-left:975px"><i class="fa fa-sign-out-alt"></i> Log Out</a>
    </div>

    <form id="form1" runat="server">


        <section>

            <br />
            <br />
            <div class="container1">
                
                    <div class="h1"><h1>EMPLOYEE DETAILS</h1></div>
                    <br />
                    <br />

                    <asp:TextBox ID="eid" placeholder="Employee ID" runat="server"  CssClass="empDetails" onkeyup="idcheck(this)" onfocus="idfocus(this)"></asp:TextBox>
                    <asp:TextBox ID="ename" placeholder="Full Name" runat="server" CssClass="empDetails"  onkeyup="checkInput(this)"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="erole" placeholder="Role" runat="server" CssClass="empDetails"  onkeyup="checkInput(this)"></asp:TextBox>
                    <br />
                    <p style="font-family:Georgia;color:white">*Please select three skills</p>
                    <br />
                    <span>
                        <%--<asp:Label ID="sl1"  runat="server" Text="Skill " ForeColor="Black" Font-Size="20px" CssClass="Drop1" Width="50px" Height="19px"></asp:Label>--%>
                        <asp:Label ID="sl1"  runat="server" Text="Skill " ForeColor="Black" Font-Size="20px"  Width="50px" Height="19px"></asp:Label>

                    <asp:DropDownList ID="skill1" CssClass="Drop1"  runat="server" Font-Size="15px" Height="24px" Width="127px">
                        <asp:ListItem Enabled="true" Text="Select Skill" Value="-1" ></asp:ListItem>
                        <asp:ListItem  Text="Angular JS" Value="Angular JS"></asp:ListItem>
                        <asp:ListItem Text="ASP.NET" Value="ASP.NET"></asp:ListItem>
                        <asp:ListItem Text="Azure" Value="Azure"></asp:ListItem>
                        <asp:ListItem Text="Node JS" Value="Node JS"></asp:ListItem>
                        <asp:ListItem Text="PHP" Value="PHP"></asp:ListItem>
                    </asp:DropDownList>

                    <%--<asp:Label ID="ll1"  runat="server" Text="Level" ForeColor="Black" Font-Size="20px" CssClass="Drop1" Width="52px" Height="20px"></asp:Label>--%>
                    <asp:Label ID="ll1"  runat="server" Text="Level" ForeColor="Black" Font-Size="20px" Width="52px" Height="20px"></asp:Label>
                   <asp:DropDownList ID="level1" CssClass="Drop1"  runat="server" Font-Size="15px" Height="24px" Width="127px">
                         <asp:ListItem Enabled="true" Text="Select Level" Value="-1" ></asp:ListItem>
                        <asp:ListItem Text="Beginner" Value="Beginner"></asp:ListItem>
                        <asp:ListItem Text="Intermediate" Value="Intermediate"></asp:ListItem>
                        <asp:ListItem Text="Proficient" Value="Proficient"></asp:ListItem>
                        <asp:ListItem Text="Expert" Value="Expert"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="sl2"  runat="server" Text="Skill" ForeColor="Black" Font-Size="20px" CssClass="Drop1" Width="48px"></asp:Label>
                        <asp:DropDownList ID="skill2" CssClass="Drop1" runat="server"  Font-Size="15px" Height="24px" Width="127px">
                        <asp:ListItem Enabled="true" Text="Select Skill" Value="-1" ></asp:ListItem>
                        <asp:ListItem Text="Angular JS" Value="Angular JS"></asp:ListItem>
                        <asp:ListItem Text="ASP.NET" Value="ASP.NET"></asp:ListItem>
                        <asp:ListItem Text="Azure" Value="Azure"></asp:ListItem>
                        <asp:ListItem Text="Node JS" Value="Node JS"></asp:ListItem>
                        <asp:ListItem Text="PHP" Value="PHP"></asp:ListItem>
                    </asp:DropDownList>
                   <asp:Label ID="ll2"  runat="server" Text="Level" ForeColor="Black" Font-Size="20px" CssClass="Drop1" Width="52px"></asp:Label>
                       <asp:DropDownList ID="level2" CssClass="Drop1"  runat="server" Font-Size="15px" Height="24px" Width="127px">
                        <asp:ListItem Enabled="true" Text="Select Level" Value="-1" ></asp:ListItem>
                        <asp:ListItem Text="Beginner" Value="Beginner"></asp:ListItem>
                        <asp:ListItem Text="Intermediate" Value="Intermediate"></asp:ListItem>
                        <asp:ListItem Text="Proficient" Value="Proficient"></asp:ListItem>
                        <asp:ListItem Text="Expert" Value="Expert"></asp:ListItem>
                    </asp:DropDownList>
                    <br />

                    <asp:Label ID="sl3"  runat="server" Text="Skill" ForeColor="Black" Font-Size="20px" CssClass="Drop1" Width="48px"></asp:Label>
                    <asp:DropDownList ID="skill3" CssClass="Drop1" runat="server"  Font-Size="15px" Height="24px" Width="127px">
                        <asp:ListItem Enabled="true" Text="Select Skill" Value="-1" ></asp:ListItem>
                        <asp:ListItem Text="Angular JS" Value="Angular JS"></asp:ListItem>
                        <asp:ListItem Text="ASP.NET" Value="ASP.NET"></asp:ListItem>
                        <asp:ListItem Text="Azure" Value="Azure"></asp:ListItem>
                        <asp:ListItem Text="Node JS" Value="Node JS"></asp:ListItem>
                        <asp:ListItem Text="PHP" Value="PHP"></asp:ListItem>
                    </asp:DropDownList>
                        <asp:Label ID="ll3"  runat="server" Text="Level" ForeColor="Black" Font-Size="20px" CssClass="Drop1" Width="52px"></asp:Label>
                        <asp:DropDownList ID="level3" CssClass="Drop1"  runat="server" Font-Size="15px" Height="24px" Width="127px">
                        <asp:ListItem Enabled="true" Text="Select Level" Value="-1" ></asp:ListItem>
                        <asp:ListItem Text="Beginner" Value="Beginner"></asp:ListItem>
                        <asp:ListItem Text="Intermediate" Value="Intermediate"></asp:ListItem>
                        <asp:ListItem Text="Proficient" Value="Proficient"></asp:ListItem>
                        <asp:ListItem Text="Expert" Value="Expert"></asp:ListItem>
                    </asp:DropDownList>
                    </span>

                

                <br />
                <br />
                <h3 style="margin-top:50px; margin-left:500px; color:#ffe6e6;">Upload</h3>
                
                <%--<asp:Button ID="Button2" runat="server" Width="500px" OnClick="Download"  CssClass="btn btn-success dld"  Text="Download Template" />
                --%>
                <asp:Button ID ="Button2" runat="server" Width="500px" onClick="Download" CssClass="btn btn-success dld" Text = "Download Template"/>

                <asp:Button ID="Button3" runat="server" Width="500px" OnClick="Button3_Click"  CssClass="btn btn-success dld"  Text="Upload Entries" />
                
                </div>
                <div class="container2">
                    <div class="h1"><h1>PROJECT DETAILS</h1></div>
                    <br />
                    <table border="0" >
                        <tr>
                            <th>SL NO.</th>
                            <th>PROJECT NAME</th>
                            <th>SKILL</th>
                            <th>LEVEL</th>
                        </tr>
                        <tr>
                            <td>1.</td>
                            <td>
                            <asp:TextBox ID="pname1" placeholder="NAME" CssClass="empDetails" runat="server" onkeyup="checkInput(this)"></asp:TextBox></td>
                            <td>
                         <asp:DropDownList ID="ps1" CssClass="Drop1" runat="server"  Font-Size="15px" Height="24px" Width="127px">
                        <asp:ListItem Enabled="true" Text="Select Skill" Value="-1" ></asp:ListItem>
                        <asp:ListItem Text="Angular JS" Value="Angular JS"></asp:ListItem>
                        <asp:ListItem Text="ASP.NET" Value="ASP.NET"></asp:ListItem>
                        <asp:ListItem Text="Azure" Value="Azure"></asp:ListItem>
                        <asp:ListItem Text="Node JS" Value="Node JS"></asp:ListItem>
                        <asp:ListItem Text="PHP" Value="PHP"></asp:ListItem>
                    </asp:DropDownList>
                            </td>
                            <td>
                        <asp:DropDownList ID="pl1" CssClass="Drop1"  runat="server" Font-Size="15px" Height="24px" Width="127px">
                        <asp:ListItem Enabled="true" Text="Select Level" Value="-1" ></asp:ListItem>
                        <asp:ListItem Text="Beginner" Value="Beginner"></asp:ListItem>
                        <asp:ListItem Text="Intermediate" Value="Intermediate"></asp:ListItem>
                        <asp:ListItem Text="Proficient" Value="Proficient"></asp:ListItem>
                        <asp:ListItem Text="Expert" Value="Expert"></asp:ListItem>
                    </asp:DropDownList>
                            </td>

                        </tr>
                                                <tr>
                            <td>2.</td>
                            <td>
                        <asp:TextBox ID="pname2" placeholder="NAME" CssClass="empDetails" runat="server" onkeyup="checkInput(this)" ></asp:TextBox></td>
                        <td>
                        <asp:DropDownList ID="ps2" CssClass="Drop1" runat="server"  Font-Size="15px" Height="24px" Width="127px">
                        <asp:ListItem Enabled="true" Text="Select Skill" Value="NA" ></asp:ListItem>
                        <asp:ListItem Text="Angular JS" Value="Angular JS"></asp:ListItem>
                        <asp:ListItem Text="ASP.NET" Value="ASP.NET"></asp:ListItem>
                        <asp:ListItem Text="Azure" Value="Azure"></asp:ListItem>
                        <asp:ListItem Text="Node JS" Value="Node JS"></asp:ListItem>
                        <asp:ListItem Text="PHP" Value="PHP"></asp:ListItem>
                    </asp:DropDownList>
                            </td>
                            <td>
                        <asp:DropDownList ID="pl2" CssClass="Drop1"  runat="server" Font-Size="15px" Height="24px" Width="127px">
                        <asp:ListItem Enabled="true" Text="Select Level" Value="NA" ></asp:ListItem>
                        <asp:ListItem Text="Beginner" Value="Beginner"></asp:ListItem>
                        <asp:ListItem Text="Intermediate" Value="Intermediate"></asp:ListItem>
                        <asp:ListItem Text="Proficient" Value="Proficient"></asp:ListItem>
                        <asp:ListItem Text="Expert" Value="Expert"></asp:ListItem>
                    </asp:DropDownList>
                            </td>


                        </tr>
                                                <tr>
                            <td>3.</td>
                            <td>
                                <asp:TextBox ID="pname3" placeholder="NAME" CssClass="empDetails" runat="server"  onkeyup="checkInput(this)"></asp:TextBox></td>
                            <td>
                         <asp:DropDownList ID="ps3" runat="server"  CssClass="Drop1" Font-Size="15px" Height="24px" Width="127px">
                        <asp:ListItem Enabled="true" Text="Select Skill" Value="NA" ></asp:ListItem>
                        <asp:ListItem Text="Angular JS" Value="Angular JS"></asp:ListItem>
                        <asp:ListItem Text="ASP.NET" Value="ASP.NET"></asp:ListItem>
                        <asp:ListItem Text="Azure" Value="Azure"></asp:ListItem>
                        <asp:ListItem Text="Node JS" Value="Node JS"></asp:ListItem>
                        <asp:ListItem Text="PHP" Value="PHP"></asp:ListItem>
                    </asp:DropDownList>
                            </td>
                            <td>
                        <asp:DropDownList ID="pl3" CssClass="Drop1"  runat="server" Font-Size="15px" Height="24px" Width="127px">
                        <asp:ListItem Enabled="true" Text="Select Level" Value="NA" ></asp:ListItem>
                        <asp:ListItem Text="Beginner" Value="Beginner"></asp:ListItem>
                        <asp:ListItem Text="Intermediate" Value="Intermediate"></asp:ListItem>
                        <asp:ListItem Text="Proficient" Value="Proficient"></asp:ListItem>
                        <asp:ListItem Text="Expert" Value="Expert"></asp:ListItem>
                    </asp:DropDownList>
                            </td>

                        </tr>

                    </table>

                    
                                        </div>
                                <span class="sbmt">
                     
                                    
                                    <asp:Button ID="Button1" runat="server" Width="500px" OnClick="Button1_Click"  CssClass="sbmt2 btn btn-success"  Text="Submit Details" OnClientClick="return Validation()"/>

                    </span>
            
            


        </section>
    </form>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [regi]"></asp:SqlDataSource>
</body>
</html>

