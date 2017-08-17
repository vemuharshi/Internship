<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgotpassword.aspx.cs" Inherits="loginproject.Forgotpasswordaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
<style type="text/css">

    body{
           margin-left:auto;
           margin-right:auto;
           padding-left:200px;  
            background-image:url(background.jpg);
            font-family:Arial,Helvettica,sans-serif;
            background-position:top;
           background-size:cover;
           padding-top:150px;
 }

    td {
        font-size:large;
    }



</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr> 
            <td><asp:Label ID="Label1" runat="server" Text="Enter Username :" Visible="True" Font-Bold="true"></asp:Label></td>
            <td><asp:TextBox ID="txtusername" runat="server" Visible="true" Font-Bold="true" Font-Size="large"></asp:TextBox></td>
            <td><asp:Button ID="btnverify" runat="server" Text="VERIFY" OnClick="btnverify_Click" ValidationGroup="v1" Font-Bold="true" Font-Size="large" /></td>
            <td><asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txtusername" ErrorMessage="Enter Username" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ValidationGroup="v1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td><asp:Label ID="SQ" runat="server" Text="Security Question" Visible="False" Font-Bold="true"> </asp:Label></td>
            <td><asp:TextBox ID="txtsq" runat="server" ReadOnly="true" Visible="false" Font-Size="large" Font-Bold="true"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="label4" runat="server" Text="Enter Answer :" Visible="False" Font-Bold="true"></asp:Label></td>
            <td><asp:TextBox ID="txtanswer" runat="server" Visible="false" Font-Size="large" Font-Bold="true"></asp:TextBox></td>
            <td><asp:Button ID="btnsubmit" runat="server" Visible="false" Text="SUBMIT" OnClick="btnsubmit_Click" ValidationGroup="v2" Font-Size="large" Font-Bold="true" /> </td>
            <td> <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="txtanswer" ErrorMessage="Enter Answer" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ValidationGroup="v2"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="Enter New Password :" Visible="False" Font-Bold="true"></asp:Label></td>
            <td><asp:TextBox ID="txtpwd" runat="server" Visible="False" TextMode="Password" Font-Size="large" Font-Bold="true"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="txtpwd" ErrorMessage="Enter Password" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ValidationGroup="v3" ></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td><asp:Label ID="label3" runat="server" Text="Confirm Password :" Visible="False" Font-Bold="true"></asp:Label></td>
            <td><asp:TextBox ID="txtcpwd" runat="server" Visible="False" TextMode="Password" Font-Size="large" Font-Bold="true"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="txtcpwd" ErrorMessage="Enter Confirm Password" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ValidationGroup="v3"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cv1" runat="server" ControlToValidate="txtcpwd" ControlToCompare="txtpwd" Display="Dynamic" ErrorMessage="Passwords do not match" ForeColor="Red" SetFocusOnError="true" Type="String" Operator="Equal" ValidationGroup="v3"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Label ID="lbmsg" runat="server" Visible="false" Font-Bold="true"></asp:Label></td>
        </tr>
        <tr>
             <td><asp:Button ID="btnback" runat="server" Text="Back To Login" OnClick="btnback_Click" Font-Size="large" Font-Bold="true" /></td>
             <td><asp:Button ID="btnchangepassword" runat="server" Text="CHANGE PASSWORD" Visible="false" OnClick="btnchangepassword_Click" ValidationGroup="v3" Font-Size="large" Font-Bold="true"/></td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
