<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="loginproject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <title> My Website</title>
    <style type="text/css">
    body{
           margin-left:auto;
           margin-right:auto;
           padding-left:250px;  
            background-image:url(background.jpg);
            font-family:Arial,Helvettica,sans-serif;
            background-position:top;
           background-size:cover;
           padding-top:150px;
 }

 td {
        font-size:large;
    }

h1{
	font-size:xx-large;
    margin-left:auto;
    margin-right:auto;
    padding-left:50px;  
}

    </style>
  
</head>
<body>
    <h1 runat="server"> WELCOME!</h1>
    <form id="form1" runat="server">
        <br /><br /><br />
    <div >
        
        <table>
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Username :" Font-Bold="true"></asp:Label></td>
                <td><asp:TextBox ID="txtusername" runat="server" Font-Bold="true" Font-Size="Large" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txtusername" ErrorMessage="Enter User Name" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="valid1"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rev1" runat="server" ControlToValidate="txtusername" ErrorMessage=" Enter Characters only" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationExpression="[a-zA-Z]+" ValidationGroup="valid1"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td> <asp:Label ID="Label2" runat="server" Text="Password :" Font-Bold="true"></asp:Label></td>
                <td><asp:TextBox ID="txtpassword" runat="server" TextMode="Password" MaxLength="8" Font-Bold="true" Font-Size="Large" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="txtpassword" ErrorMessage=" Enter Password" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="valid1"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Label ID="lbmsg" runat="server" Font-Bold="true"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Button ID="btnlogin" runat="server" OnClick="btnlogin_Click" Text="LOG IN" ValidationGroup="valid1"  Font-Bold="true" Font-Size="Large"  /></td>
                <td><asp:Button ID="btnforgotpwd" runat="server" OnClick="btnforgotpwd_Click" Text="FORGOT PASSWORD"  Font-Bold="true" Font-Size="Large" /></td>
            </tr>
           
        </table>
       
      </div>
    </form>
</body>
</html>
