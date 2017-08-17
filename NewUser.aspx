<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewUser.aspx.cs" Inherits="loginproject.NewUseraspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New User Registration</title>
     <style type="text/css">
          #nav{
        width:1491px;
        margin:auto;
    }
    #nav ul{
        padding:0;
        list-style:none;
    }
    #nav ul li{
        float:left;
        text-align:center;
        width:218px;
        margin:2px;
       
    }
    #nav ul li a{
        color:black;
        font-family:'Times New Roman';
        font-size:x-large;
        background-color:rgba(235, 240, 243, 0.14);
        display:block;
        padding:10px;
        text-decoration:none;
             margin-left: 1px;
         }
    #nav ul li a:hover{
       
        color:orangered;
    }
    header h1{
        width:700px;
        margin:auto;
        padding-left:400px;
    }
    body{
        background-image:url(background.jpg);
        font-family:Arial,Helvettica,sans-serif;
         background-position:top;
        background-size:cover;
      
    }
    #info {
      padding-top:50px;
      padding-left:500px;
      border-spacing:5px;
      height:auto;
      width:auto;
      margin-left:auto;
      margin-right:auto;
      font-size:large;
    }
    td{
        font-size:large;
    }
    </style>
   

 
</head>
<body>
    <form id="form1" runat="server">
            <div>
        <header>
            <h1>Welcome Admin</h1>
        </header>
        
        <div id="nav">
         <ul>
                    <li><a href="NewUser.aspx">New User</a></li>
                    <li><a href="ViewAll.aspx">View All</a></li>
                    <li><a href="DeleteUser.aspx">Delete User</a></li>
                    <li><a href="AdminUpdate.aspx">Update User Details</a></li>
                    <li><a href="AdminLogin.aspx">Update Your Details</a></li>
                    <li><a href="Logout.aspx">Logout</a></li>
                </ul>
            </div>
            </div>
    <div id="info">
    <br />
        <br />
        <table>
            <tr>
                   <td><asp:Label ID="Label1" runat="server" Text="Username :" Font-Bold="true"></asp:Label></td>
                    <td><asp:TextBox ID="txtusername" runat="server" Font-Bold="true" Font-Size="Large"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txtusername" ErrorMessage=" Enter User Name" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rev1" runat="server" ControlToValidate="txtusername" ErrorMessage=" Enter Characters only" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                   <td><asp:Label ID="Label2" runat="server" Text="Password :"  Font-Bold="true"></asp:Label></td>
                   <td><asp:TextBox ID="txtpwd" runat="server"  Font-Bold="true" Font-Size="Large" TextMode="Password"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="txtpwd" ErrorMessage=" Enter Password" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
            <td><asp:Label ID="label10" runat="server" Text="Confirm Password :" Font-Bold="true"></asp:Label></td>
            <td><asp:TextBox ID="txtcpwd" runat="server" TextMode="Password" Font-Size="large" Font-Bold="true"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="rfv10" runat="server" ControlToValidate="txtcpwd" ErrorMessage="Enter Confirm Password" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ValidationGroup="v3"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cv1" runat="server" ControlToValidate="txtcpwd" ControlToCompare="txtpwd" Display="Dynamic" ErrorMessage="Passwords do not match" ForeColor="Red" SetFocusOnError="true" Type="String" Operator="Equal" ValidationGroup="v3"></asp:CompareValidator></td>
        </tr>
             <tr>
                   <td><asp:Label ID="Label3" runat="server" Text="Security Question :"  Font-Bold="true"></asp:Label></td>
                   <td><asp:TextBox ID="txtsq" runat="server" Font-Bold="true" Font-Size="Large"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="txtsq" ErrorMessage="Enter Security Question" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="rev3" runat="server" ControlToValidate="txtsq" ErrorMessage=" Enter Characters only" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationExpression="[a-zA-Z? ]+"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label4" runat="server" Text="Answer :" Font-Bold="true"></asp:Label></td>
                <td> <asp:TextBox ID="txtanswer" runat="server" Font-Bold="true" Font-Size="Large"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="txtanswer" ErrorMessage=" Enter Answer" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="rev4" runat="server" ControlToValidate="txtanswer" ErrorMessage=" Enter Characters only" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationExpression="[a-zA-Z ]+"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label5" runat="server" Text="Gender :" Font-Bold="true"></asp:Label></td>
                <td><asp:TextBox ID="txtgender" runat="server"  Font-Bold="true" Font-Size="Large"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv5" runat="server" ControlToValidate="txtgender" ErrorMessage="Enter Gender" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rev5" runat="server" ControlToValidate="txtgender" ErrorMessage=" Enter M or F only" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationExpression="[MF]+"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label6" runat="server" Text="Date Of Birth :" Font-Bold="true"></asp:Label></td>
                <td><asp:TextBox ID="txtdob" runat="server" Font-Bold="true" Font-Size="Large"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv6" runat="server" ControlToValidate="txtdob" ErrorMessage="Enter Date Of Birth" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rev6" runat="server" ControlToValidate="txtdob" ErrorMessage="Invalid Date" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationExpression="(0[1-9]|[12][0-9]|3[01])[-](0[1-9]|1[012])[-](19|20|21)\d\d[ ][0][0][:][0][0][:][0][0]"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td> <asp:Label ID="Label7" runat="server" Text="Email Id :" Font-Bold="true"></asp:Label></td>
                <td><asp:TextBox ID="txtemailid" runat="server"  Font-Bold="true" Font-Size="Large"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv7" runat="server" ControlToValidate="txtemailid" ErrorMessage=" Enter Email ID" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rev7" runat="server" ControlToValidate="txtemailid" ErrorMessage="Invalid Email id" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label8" runat="server" Text="Mobile Number :" Font-Bold="true"></asp:Label></td>
                <td><asp:TextBox ID="txtmob" runat="server" Font-Bold="true" Font-Size="Large"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv8" runat="server" ControlToValidate="txtmob" ErrorMessage=" Enter Mobile Number" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rev8" runat="server" ControlToValidate="txtmob" ErrorMessage="Invalid Mobile Number" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationExpression="\d{9}"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td> <asp:Label ID="Label9" runat="server" Text="Photograph :" Font-Bold="true"></asp:Label></td>
                <td> <asp:FileUpload ID="fuphoto" runat="server"  Font-Bold="true" Font-Size="Large" />
                     <asp:RequiredFieldValidator ID="rfv9" runat="server" ControlToValidate="fuphoto" ErrorMessage="Upload your Photo" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Label ID="lbmsg" runat="server"  Font-Bold="true"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="btregister" runat="server" OnClick="btregister_Click" Text="REGISTER"   Font-Bold="true" Font-Size="Large"/></td>
            </tr>
        
    </table>
    </div>
    </form>
</body>
</html>
