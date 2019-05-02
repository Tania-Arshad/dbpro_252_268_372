
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication22.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <meta charset="utf-8"/>
    <title>Registration</title>
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
        .auto-style3 {
            width: 229px;
            height: 152px;
        }
        .auto-style4 {
            width: 622px;
            zoom: 1;
            margin-left: 174px;
            margin-right: 0px;
            height: 420px;
        }
        .auto-style6 {
            margin-left: 4px;
        }
        .auto-style8 {
            margin-left: 19px;
        }
        .auto-style9 {
            width: 84%;
            margin-right: 0px;
            margin-top: 0px;
        }
        .auto-style10 {
            width: 85px;
            text-align: right;
        }
        .auto-style11 {
            width: 191px;
        }
        .auto-style13 {
            width: 85px;
            text-align: right;
            height: 52px;
        }
        .auto-style14 {
            width: 191px;
            height: 52px;
        }
        .auto-style15 {
            height: 52px;
            text-align: left;
        }
        .auto-style20 {
            width: 85px;
            text-align: right;
            height: 90px;
        }
        .auto-style21 {
            width: 191px;
            height: 90px;
        }
        .auto-style22 {
            height: 90px;
            text-align: left;
            margin-left: 80px;
        }
        .auto-style23 {
            width: 85px;
            text-align: right;
            height: 57px;
        }
        .auto-style24 {
            width: 191px;
            height: 57px;
        }
        .auto-style25 {
            height: 57px;
        }
        .auto-style26 {
            width: 85px;
            text-align: right;
            height: 59px;
        }
        .auto-style27 {
            width: 191px;
            height: 59px;
        }
        .auto-style28 {
            height: 59px;
        }
        .auto-style29 {
            margin-bottom: 10px;
            text-align: left;
        }
        .auto-style30 {
            width: 520px;
            height: 317px;
            margin-left: 45px;
        }
    </style>

    </head>
<body>
      <form id="form1" runat="server">
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
                            
                        </li>
                    </ul>
                </div>
            </div>        </div>
    </div>
    <!-- Header End====================================================================== -->
    <div id="mainBody">
        <div class="auto-style4">
            <div class="row">
                 
                     <!-- Sidebar ================================================== -->
                <div id="sidebar" class="span3">                   
                    <ul id="sideManu" class="nav nav-tabs nav-stacked">
                      
         
                    </ul>
                    <br />
                   
                    </div>
                </div>
                <!-- Sidebar end=============================================== -->
                    <h3 class="alignL"> Registration</h3>
                 
                      <div class="auto-style1">
                    <div class="well">
                     
                      
                         
                            <div class="control-group">
                                <div class="auto-style30">
&nbsp;&nbsp;<br />
                              
           <table class="auto-style9" align="center">
               <tr>
                   <td class="auto-style13">Name:&nbsp;</td>
                   <td class="auto-style14">
        <asp:TextBox ID="Nametxt" runat="server" Width="186px"></asp:TextBox>
                                
                   </td>
                   <td class="auto-style15">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Nametxt" ErrorMessage="UserName is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                      <br />
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Nametxt" ErrorMessage="Please Enter Text Only" ValidationExpression="[A-Za-z]+" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style20">Email:&nbsp;&nbsp;</td>
                   <td class="auto-style21">
        <asp:TextBox ID="Emailtxt" runat="server" Width="184px"></asp:TextBox>
                   </td>
                   <td class="auto-style22">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Emailtxt" ErrorMessage="E-mail is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                       <br />
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="You must Enter Valid Email Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Emailtxt"></asp:RegularExpressionValidator>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style26">&nbsp;&nbsp;Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                   <td class="auto-style27">
        <asp:TextBox ID="Passwordtxt" runat="server" TextMode="Password" Width="181px"></asp:TextBox>
                   </td>
                   <td class="auto-style28">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Passwordtxt" ErrorMessage="Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style23">
            <asp:Label ID="Label1" runat="server" Text="UserType"></asp:Label>
                   </td>
                   <td class="auto-style24">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style6" Width="191px">
                <asp:ListItem>Select a UserType</asp:ListItem>
                <asp:ListItem>Teacher</asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
                <asp:ListItem>Student</asp:ListItem>
            </asp:DropDownList>
                   </td>
                   <td class="auto-style25">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select a UserType " ForeColor="Red" InitialValue="Select a UserType"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style10">
     <asp:Button ID="Button2" runat="server" Text="SignUp" CssClass="auto-style8" OnClick="Button2_Click" />
     
                   </td>
                   <td class="auto-style11">&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
           </table>
                              
                                </div>
                            </div>
                      
                    </div>

                </div>
            </div>
       <div class="auto-style29"> 
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
        </div>

       
            <br />
            <br />
            <br />
     
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
                <div class="auto-style3">
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
