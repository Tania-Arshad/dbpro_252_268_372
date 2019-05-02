<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DateSheet.aspx.cs" Inherits="WebApplication22.DateSheet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Date Sheet</title>
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
            width: 692px;
            height: 465px;
        }
        .auto-style2 {
            width: 223px;
            height: 14px;
        }
        .auto-style3 {
            width: auto;
            zoom: 1;
            height: 479px;
            margin-left: auto;
            margin-right: auto;
        }
        .auto-style4 {
            min-height: 20px;
            padding: 19px;
            margin-bottom: 20px;
            background-color: #f5f5f5;
            border: 1px solid #e3e3e3;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,0.05);
            -moz-box-shadow: inset 0 1px 1px rgba(0,0,0,0.05);
            box-shadow: inset 0 1px 1px rgba(0,0,0,0.05);
            margin-left: 307px;
        }
        .auto-style5 {
            width: 689px;
        }
        .auto-style6 {
            margin-left: 38px;
        }
        .auto-style7 {
            margin-bottom: 10px;
            width: 326px;
            height: 162px;
            margin-top: 0px;
        }
        .auto-style8 {
            margin-bottom: 10px;
            height: 54px;
        }
    </style>
</head>
<body>
    
    <form id="form2" runat="server">
      <div id="header">
        <div class="container">
            <div id="welcomeLine" class="row">
              
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
                            &nbsp;</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End====================================================================== -->
    <div id="mainBody">
        <div class="auto-style3">
            <div class="row">
                <!-- Sidebar ================================================== -->
                <div id="sidebar" class="auto-style2">                   
                    <ul id="sideManu" class="nav nav-tabs nav-stacked">                          
                    </ul>
                    <br />
                   
                    </div>
                </div>
                <!-- Sidebar end=============================================== -->
                <div class="auto-style1">
                    <h3 class="auto-style5"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date Sheet </h3>
                    <div class="auto-style4">
                     
                      
                         
                            <div class="control-group">
                                <label class="control-label" for="inputFname" style="width: 340px; height: 63px">Teacher Id&nbsp;
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                </asp:DropDownList>
&nbsp;<br />
                                <br />
                     
                      
                         
                            <div class="control-group">
                                Course Id&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList2" runat="server">
                                </asp:DropDownList>
&nbsp;<br />
                                <br />
                     
                      
                         
                            <div class="auto-style8">
                                <label class="control-label" for="inputFname" style="width: 301px; height: 39px">Section&nbsp; Id &nbsp;
                                <asp:DropDownList ID="DropDownList3" runat="server">
                                </asp:DropDownList>
                                <br />
                                <br />
&nbsp;<br />
                     
                      
                         
                            <div class="auto-style7">
                                Date&nbsp;
                                <asp:TextBox ID="Datetxt" runat="server" CssClass="auto-style6"></asp:TextBox>
                                <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server"  Type="Date" Operator="DataTypeCheck" ControlToValidate="Datetxt" ErrorMessage="Please enter a valid date." ForeColor="Red"></asp:CompareValidator>
                                <br />
                             <br />
                                <asp:Button ID="Button1" runat="server" Height="36px" Text="Add" Width="66px" OnClick="Button1_Click" />
&nbsp;
                                <asp:Button ID="Button2" runat="server" Height="36px" Text="Update" />
&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button3" runat="server" Height="35px" Text="Delete" />
                                <br />
                                <br />

                                </div>

                                </label>
                                &nbsp;</div>

                            &nbsp;</div>

                                </label>
                                &nbsp;</div>

                            <div class="control-group">
                                <div class="controls" style="height: 136px; margin-top: 124px; width: 345px;">
                                    <input type="hidden" name="email_create" value="1"/>
                                    <input type="hidden" name="is_new_customer" value="1"/>
                                    &nbsp;<br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                </div>
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
                    <h5>ACCOUNT="login.html">YOUR ACCOUNT="login.html">PERSONAL INFORMATION</a>
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
