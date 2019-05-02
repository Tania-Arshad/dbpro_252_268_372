<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="WebApplication22.UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
     <meta charset="utf-8"/>
    <title>User Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
  
    <!-- Bootstrap style -->
    <link id="callCss" rel="stylesheet" href="themes/bootshop/bootstrap.min.css" media="screen" />
    <link href="themes/css/base.css" rel="stylesheet" media="screen" />
    <!-- Bootstrap style responsive -->
    <link href="themes/css/bootstrap-responsive.min.css" rel="stylesheet" />
    <link href="themes/css/font-awesome.css" rel="stylesheet" type="text/css"/>
    <!-- Google-code-prettify -->
    <link href="themes/js/google-code-prettify/prettify.css" rel="stylesheet" />
    <!-- fav and touch icons -->
    <link rel="shortcut icon" href="themes/images/ico/favicon.ico"/>
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="themes/images/ico/apple-touch-icon-144-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="themes/images/ico/apple-touch-icon-114-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="themes/images/ico/apple-touch-icon-72-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" href="themes/images/ico/apple-touch-icon-57-precomposed.png"/>
    <style type="text/css" id="enject"></style>
</head>
<body>
  <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        
                        <a class="navbar-brand" href="Default.aspx">School Management System</a>
                    </div>
                        <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#"><asp:Label ID="lblSuccess" runat="server" CssClass="text-success"></asp:Label></a></li>
                            <li><a href="UserHome.aspx">Home</a></li>                      
                            <li> 
                            </li>

                        </ul>
                            </div>
                    </div>
                </div>
             <img src="bootstrap/Images/1.jpg" alt="Not found" width= "1000"  height="260" />
        </div>
       <h1> &nbsp;</h1>
        <h1> Rules </h1>
        <ul style=" font-family: Verdana;
    line-height: 120%;;
   font-size: 130%;
   padding-right: 5px;">
         
            <li> 
                Student should be registered in course first to view assignments.
            </li>
            <li> 
                Attendance of Student should not be less than 33.
            </li>
             <li> 
                 Students can't submit their assignments after the time specified.
            </li>
           <li> 
                Student scored marks should be greater than 33 .
            </li>
             
             <li> 
                Result will be shown to each student.
            </li>
        </ul>
        
        <br />
        <br />
        <br />
        <br />
        
        <hr />
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy;Department of Computer Science and Engineering &middot; <a href="Default.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a> &middot; </p>
            </div>
        </footer>
        
    </form>
     <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
   
</body>
</html>
