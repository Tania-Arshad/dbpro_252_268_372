<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication22.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <title>Login</title>
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
    <style type="text/css" id="enject">       
        .auto-style1 {
            width: 341px;
            height: 358px;
        }
    </style>

</head>
<body>
    

      <form id="form2" runat="server">
      <div id="header">
        <div class="container">
            <div id="welcomeLine" class="row">
                <div class="span6">Welcome!<strong> User</strong></div>
                <div class="span6">
                    <div class="pull-right">
   
                    </div>
                </div>
            </div>
            <!-- Navbar ================================================== -->
            <div id="logoArea" class="navbar">
                <a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="navbar-inner">
                
        
                    <ul id="topMenu" class="nav pull-right">
                        <li class=""><a href="UserHome.aspx">Home</a></li>
                        <li class=""><a href="contact.html">Contact</a></li>
                        <li class="">
                            &nbsp;<div id="login" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="false">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                    <h3>Login Block</h3>
                                </div>
                                <div class="modal-body">
                                        <div class="control-group">
                                            <input type="text" id="inputEmail" placeholder="Email"/>
                                        </div>
                                        <div class="control-group">
                                            <input type="password" id="inputPassword" placeholder="Password"/>
                                        </div>
                                        <div class="control-group">
                                            <label class="checkbox">
                                                <input type="checkbox"/> Remember me
                                            </label>
                                        </div>
                                    <button type="submit" class="btn btn-success">Sign in</button>
                                    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End====================================================================== -->
    <div id="mainBody">
        <div class="container">
            <div class="row">
                <!-- Sidebar ================================================== -->
                <div id="sidebar" class="span3">                   
                    <ul id="sideManu" class="nav nav-tabs nav-stacked">
                      
         
                    </ul>
                    <br />
                   
                    </div>
                </div>
                <!-- Sidebar end=============================================== -->
                <div class="auto-style1">
                    <h3> Login</h3>
                    <div class="well">
                     
                      
                         
                            <div class="control-group">
                                <label class="control-label" for="inputFname">User name </label>
                                <div class="controls">
                                    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem>Student</asp:ListItem>
                                        <asp:ListItem>Teacher</asp:ListItem>
                                        <asp:ListItem>Admin</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="inputPname">Password</label>
                                
                                    <input type="text" id="inputp" placeholder="Password" />
                                <div class="controls" style="width: 295px; height: 37px">
                                  
                                </div>
                            </div>

                            <div class="control-group">
                                <div class="controls" style="height: 125px">
                                    <input type="hidden" name="email_create" value="1"/>
                                    <input type="hidden" name="is_new_customer" value="1"/>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                    <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Remember me ?"></asp:Label>
&nbsp;<br />
                                    <br />
                                    <input class="btn btn-large btn-success" type="submit" value="Login" /></div>
                            </div>
                      
                    </div>

                </div>
            </div>
        </div>
  
    <!-- MainBody End ============================= -->
    <!-- Footer ================================================================== -->
    <div id="footerSection">
        <div class="container">
            <div class="row">
                <div class="span3">
                    <h5>ACCOUNT</h5>
                    <a href="login.html">YOUR ACCOUNT</a>
                    <a href="login.html">PERSONAL INFORMATION</a>
                    <a href="login.html">ADDRESSES</a>
                 
                </div>
                <div class="span3">
                    <h5>INFORMATION</h5>
                    <a href="contact.html">CONTACT</a>
                    <a href="register.html">REGISTRATION</a>
                    <a href="legal_notice.html">LEGAL NOTICE</a>
                    <a href="tac.html">TERMS AND CONDITIONS</a>
                    <a href="faq.html">FAQ</a>
                </div>
              
                <div id="socialMedia" class="span3 pull-right">
                    <h5>SOCIAL MEDIA </h5>
                    <a href="#"><img width="60" height="60" src="themes/images/facebook.png" title="facebook" alt="facebook" /></a>
                    <a href="#"><img width="60" height="60" src="themes/images/twitter.png" title="twitter" alt="twitter" /></a>
                    <a href="#"><img width="60" height="60" src="themes/images/youtube.png" title="youtube" alt="youtube" /></a>
                </div>
            </div>
       
        </div><!-- Container End -->
    </div>
    <!-- Placed at the end of the document so the pages load faster ============================================= -->
    <script src="themes/js/jquery.js" type="text/javascript"></script>
    <script src="themes/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="themes/js/google-code-prettify/prettify.js"></script>

    <script src="themes/js/bootshop.js"></script>
    <script src="themes/js/jquery.lightbox-0.5.js"></script>

    <!-- Themes switcher section ============================================================================================= -->
    <div id="secectionBox">
        <link rel="stylesheet" href="themes/switch/themeswitch.css" type="text/css" media="screen" />
        <script src="themes/switch/theamswitcher.js" type="text/javascript" charset="utf-8"></script>
        <div id="themeContainer">
          

            </div>
        </div>
      </form>
</body>
</html>


