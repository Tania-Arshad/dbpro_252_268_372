
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
        .auto-style2 {
            width: 99%;
            height: 260px;
            margin-top: 0px;
        }
        .auto-style4 {
            height: 61px;
            width: 180px;
        }
        .auto-style5 {
            width: 181px;
            height: 61px;
        }
        .auto-style7 {
            height: 61px;
            width: 117px;
            text-align: right;
        }
        .auto-style9 {
            margin-top: 11;
        }
        .auto-style10 {
            height: 65px;
            width: 117px;
            text-align: right;
        }
        .auto-style11 {
            width: 181px;
            height: 65px;
        }
        .auto-style12 {
            height: 65px;
            width: 180px;
        }
        .auto-style13 {
            width: 117px;
            height: 39px;
            text-align: right;
        }
        .auto-style14 {
            width: 181px;
            height: 39px;
        }
        .auto-style15 {
            height: 39px;
            width: 180px;
        }
        .auto-style16 {
            width: 117px;
            height: 49px;
            text-align: right;
        }
        .auto-style17 {
            width: 181px;
            height: 49px;
        }
        .auto-style18 {
            height: 49px;
            width: 180px;
        }
        .auto-style22 {
            width: 538px;
            height: 290px;
            margin-top: 27px;
        }
        .auto-style23 {
            width: 555px;
            height: 358px;
            margin-left: 211px;
            margin-right: 0px;
            margin-top: 30px;
        }
        .auto-style24 {
            height: 74px;
            width: 117px;
            text-align: right;
        }
        .auto-style25 {
            width: 181px;
            height: 74px;
        }
        .auto-style26 {
            height: 74px;
            width: 180px;
        }
    </style>

</head>
<body>
    

      <form id="form2" runat="server">
                                    <input type="hidden" name="is_new_customer" value="1"/>
                                    <input type="hidden" name="email_create" value="1"/>
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
                        <li class=""><a href="UserHome.aspx">Contact</a></li>
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
                <h3 class="pagination-centered"> Login</h3>
                <div class="auto-style23">
                    <div class="well">
                        <div class="control-group">
                            <div class="auto-style22">
&nbsp;&nbsp;<br />
                                <table align="center" class="auto-style2">
                                    <tr>
                                        <td class="auto-style24">Email:</td>
                                        <td class="auto-style25">
                                            <asp:TextBox ID="Emailtxt" runat="server" Width="195px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style26">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Emailtxt" ErrorMessage="E-mail is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <br />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="You must Enter Valid Email Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Emailtxt"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">Password:&nbsp;&nbsp;&nbsp;</td>
                                        <td class="auto-style5">
                                            <asp:TextBox ID="Passwordtxt" runat="server" CssClass="auto-style9" TextMode="Password" Width="191px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style4">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Passwordtxt" ErrorMessage="Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style10">User Type</td>
                                        <td class="auto-style11">
                                            <label class="control-label" for="inputFname" style="height: 40px">
                                            <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="203px">
                                                <asp:ListItem>Select a UserType</asp:ListItem>
                                                <asp:ListItem>Teacher</asp:ListItem>
                                                <asp:ListItem>Admin</asp:ListItem>
                                                <asp:ListItem>Student</asp:ListItem>
                                            </asp:DropDownList>
                                            </label>
                                        </td>
                                        <td class="auto-style12">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select a UserType " ForeColor="Red" InitialValue="Select a UserType"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">
                                            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Height="26px" />
                                        </td>
                                        <td class="auto-style14"></td>
                                        <td class="auto-style15"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16">
                                            <asp:Label ID="Label1" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style17"></td>
                                        <td class="auto-style18"></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                <!-- Sidebar end=============================================== -->
            </div>
        </div>
  
    <!-- MainBody End ============================= -->
    <!-- Footer ================================================================== -->
    <div id="footerSection">
        <div class="container">
            <div class="row">
                <div class="span3">
                    <h5>ACCOUNT         <a href="register.html">REGISTRATION</a>
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


