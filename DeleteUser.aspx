<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="loginproject.DeleteUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete User</title>
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
        width:233px;
        margin:2px 2px 2px 5px;
           }
    #nav ul li a{
        color:black;
        font-family:'Times New Roman';
        font-size:x-large;
        background-color:rgba(235, 240, 243, 0.14);
        display:block;
        padding:10px;
        text-decoration:none;

       
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
        <br /><br />
        <asp:label id="label" runat="server" Text="Select Username :" Font-Bold="true" Font-Size="Large"></asp:label>
             <asp:DropDownList ID="ddluser" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddluser_SelectedIndexChanged" Font-Bold="true"></asp:DropDownList>
        <br /><br />
        <asp:Panel ID="panel1" runat="server" Height="422px" Visible="False">
            <table>
                <tr>
                    <td> <asp:Label ID="Label1" runat="server" Text="Username :" Font-Bold="true"></asp:Label></td>
                    <td><asp:TextBox ID="txtusername" runat="server" Font-Bold="true" Font-Size="Large"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txtusername" ErrorMessage=" Enter User Name" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rev1" runat="server" ControlToValidate="txtusername" ErrorMessage=" Enter Characters only" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator></td>
                </tr>
                
                <tr>
                     <td> <asp:Label ID="Label2" runat="server" Text="Security Question :" Font-Bold="true"></asp:Label> </td>
                    <td>  <asp:TextBox ID="txtsq" runat="server" Font-Bold="true" Font-Size="Large"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="txtsq" ErrorMessage="Enter Security Question" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="rev2" runat="server" ControlToValidate="txtsq" ErrorMessage=" Enter Characters only" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationExpression="[a-zA-Z? ]+"></asp:RegularExpressionValidator></td>
                </tr>
               
                <tr>
                     <td> <asp:Label ID="Label3" runat="server" Text="Answer :" Font-Bold="true"></asp:Label> </td>
                     <td> <asp:TextBox ID="txtanswer" runat="server" Font-Bold="true" Font-Size="Large"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="txtanswer" ErrorMessage=" Enter Answer" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="rev3" runat="server" ControlToValidate="txtanswer" ErrorMessage=" Enter Characters only" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationExpression="[a-zA-Z ]+"></asp:RegularExpressionValidator> </td>
                </tr>
                
                <tr>
                    <td>  <asp:Label ID="Label4" runat="server" Text="Gender :" Font-Bold="true"></asp:Label></td>
                    <td>  <asp:TextBox ID="txtgender" runat="server" Font-Bold="true" Font-Size="Large"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="txtgender" ErrorMessage="Enter Gender" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="rev4" runat="server" ControlToValidate="txtgender" ErrorMessage=" Enter M or F only" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationExpression="[MF]+"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td>   <asp:Label ID="Label5" runat="server" Text="Date of Birth :" Font-Bold="true"></asp:Label> </td>
                    <td>   <asp:TextBox ID="txtdob" runat="server" Font-Bold="true" Font-Size="Large"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="rfv5" runat="server" ControlToValidate="txtdob" ErrorMessage="Enter Date Of Birth" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                           <asp:RegularExpressionValidator ID="rev5" runat="server" ControlToValidate="txtdob" ErrorMessage="Invalid Date" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationExpression="(0[1-9]|[12][0-9]|3[01])[-](0[1-9]|1[012])[-](19|20|21)\d\d[ ][0][0][:][0][0][:][0][0]"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                     <td> <asp:Label ID="Label6" runat="server" Text="Email id :" Font-Bold="true"></asp:Label> </td>
                     <td> <asp:TextBox ID="txtemailid" runat="server" Font-Bold="true" Font-Size="Large"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="rfv6" runat="server" ControlToValidate="txtemailid" ErrorMessage=" Enter Email ID" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="rev6" runat="server" ControlToValidate="txtemailid" ErrorMessage="Invalid Email id" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator> </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label7" runat="server" Text="Mobile No :" Font-Bold="true"></asp:Label> </td>
                    <td><asp:TextBox ID="txtmob" runat="server" Font-Bold="true" Font-Size="Large"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv7" runat="server" ControlToValidate="txtmob" ErrorMessage=" Enter Mobile Number" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rev7" runat="server" ControlToValidate="txtmob" ErrorMessage="Invalid Mobile Number" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationExpression="\d{9}"></asp:RegularExpressionValidator> </td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Label ID="lbmsg" runat="server" Font-Bold="true"></asp:Label> </td>
                </tr>
                <tr>
                    <td></td>
                    <td> <asp:Button ID="btndelete" runat="server" Text="DELETE USER" OnClick="btndelete_Click" Font-Bold="true" Font-Size="Large" /> </td>
                </tr>
            </table>                 
        </asp:Panel>       
       </div>
    </form>
</body>
</html>
