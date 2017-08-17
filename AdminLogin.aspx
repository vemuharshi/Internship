<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="loginproject.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
      <style type="text/css">
          @media screen and (min-width:1000px) {
              #nav {
                  width: 1491px;
                  margin: auto;
              }

                  #nav ul {
                      padding: 0;
                      list-style: none;
                  }

                      #nav ul li {
                          float: left;
                          text-align: center;
                          width: 225px;
                          margin: 2px 2px 2px 9px;
                      }

                          #nav ul li a {
                              color: black;
                              font-family: 'Times New Roman';
                              font-size: x-large;
                              background-color: rgba(235, 240, 243, 0.14);
                              display: block;
                              padding: 10px;
                              text-decoration: none;
                          }

                              #nav ul li a:hover {
                                  color: orangered;
                              }

              header h1 {
                  width: 700px;
                  margin: auto;
                  padding-left: 400px;
              }

              body {
                  background-image: url(background.jpg);
                  font-family: Arial,Helvettica,sans-serif;
                  background-position: top;
                  background-size: cover;
                  width: auto;
              }

              #info {
                  padding-top: 50px;
                  padding-left: 500px;
                  border-spacing: 5px;
                  height: auto;
                  width: auto;
                  margin-left: auto;
                  margin-right: auto;
              }

              td {
                  font-size: large;
              }
          }
          @media screen and (max-width:1000px)
          {
              #nav {
                  width: 1000px;
                  margin: auto;
              }

                  #nav ul {
                      padding: 0;
                      list-style: none;
                  }

                      #nav ul li {
                          float: left;
                          text-align: center;
                          width: 153px;
                          margin: 2px 2px 1px 9px;
                      }

                          #nav ul li a {
                              color: black;
                              font-family: 'Times New Roman';
                              font-size: large;
                              background-color: rgba(235, 240, 243, 0.14);
                              display: block;
                              padding: 5px;
                              text-decoration: none;
                          }

                              #nav ul li a:hover {
                                  color: orangered;
                              }

              header h1 {
                  width: 700px;
                  margin: auto;
                  padding-left: 400px;
              }

              body {
                  background-image: url(background.jpg);
                  font-family: Arial,Helvettica,sans-serif;
                  background-position: top;
                  background-size: cover;
                  width: auto;
              }

              #info {
                  padding-top: 50px;
                  padding-left: 250px;
                  border-spacing: 5px;
                  height: auto;
                  width: auto;
                  margin-left: auto;
                  margin-right: auto;
              }

              td {
                  font-size: large;
              }
          }
    </style>

    
</head>
<body >
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
        <br /> <br /><br /><br />
        <table>
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Date of Birth :" Font-Bold="true"></asp:Label></td>
                <td><asp:TextBox ID="txtdob" runat="server" Font-Bold="true" Font-Size="Large"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txtdob" ErrorMessage="Enter Date Of Birth" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rev1" runat="server" ControlToValidate="txtdob" ErrorMessage="Invalid Date" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationExpression="(0[1-9]|[12][0-9]|3[01])[-](0[1-9]|1[012])[-](19|20|21)\d\d[ ][0][0][:][0][0][:][0][0]"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Email Id:" Font-Bold="true"></asp:Label></td>
                <td><asp:TextBox ID="txtemailid" runat="server" Font-Bold="true" Font-Size="Large"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="txtemailid" ErrorMessage="Enter Email ID" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rev2" runat="server" ControlToValidate="txtemailid" ErrorMessage="Invalid Email id" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" runat="server" Text="Mobile Number :"  Font-Bold="true"></asp:Label></td>
                <td><asp:TextBox ID="txtmob" runat="server" OnTextChanged="TextBox1_TextChanged" Font-Bold="true" Font-Size="Large"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="txtmob" ErrorMessage="Enter Mobile Number" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rev3" runat="server" ControlToValidate="txtmob" ErrorMessage="Invalid Mobile Number" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationExpression="\d{9}"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Label ID="lbmsg" runat="server" Font-Bold="true"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="btupdate" runat="server" Text="UPDATE" OnClick="btupdate_Click" Font-Bold="true" Font-Size="Large" /></td>
            </tr>
        </table>       
    </div>
    </form>
</body>
</html>
