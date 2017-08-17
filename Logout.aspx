<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="loginproject.Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Logout</title>
    <style type="text/css">
 body{
           margin-left:auto;
           margin-right:auto;
           padding-left:100px;  
           background-image:url(background.jpg);
            font-family:Arial,Helvettica,sans-serif;
            background-position:top;
           background-size:cover;
           padding-top:100px;
 }
h1{
	font-size:2em;
	padding:100px;
	padding-top:10px;
    margin-left:auto;
    margin-right:auto;    
    align-self:center;
}

section{
    margin-left:auto;
    margin-right:auto;
    padding-left:200px;
    padding-top:10px;
    
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <h1> You have been logged out successfully!</h1>
   <section><a href="Login.aspx">Click Here</a>To Login Again</section>
    </div>
    </form>
</body>
</html>
