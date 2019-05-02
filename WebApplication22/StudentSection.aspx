<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentSection.aspx.cs" Inherits="WebApplication22.StudentSection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Student Section</title>
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
            width: 525px;
            height: 347px;
            margin-left: 237px;
        }
        .auto-style2 {
            width: 223px;
            height: 14px;
        }
        .auto-style3 {
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
            width: 440px;
            height: 254px;
        }
        .auto-style4 {
            width: 99%;
        }
        .auto-style5 {
            width: 103px;
        }
        .auto-style6 {
            width: 152px
        }
        .auto-style7 {
            width: 103px;
            text-align: right;
            height: 52px;
        }
        .auto-style8 {
            width: 103px;
            height: 53px;
        }
        .auto-style9 {
            width: 152px;
            height: 53px;
        }
        .auto-style10 {
            height: 53px;
        }
        .auto-style11 {
            margin-bottom: 10px;
            width: 400px;
            height: 266px;
        }
        .auto-style12 {
            margin-top: 0px;
        }
        .auto-style13 {
            width: 152px;
            height: 52px;
        }
        .auto-style14 {
            height: 52px;
        }
        .auto-style15 {
            width: 103px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <input type="hidden" name="is_new_customer" value="1"/>
                                    <input type="hidden" name="email_create" value="1"/>
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
        <div class="container">
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
                    <h3> Student Section</h3>
                    <div class="auto-style3">
                     
                      
                         
                            <div class="auto-style11">
                                &nbsp;<div class="controls" style="width: 398px">
                                    <br /></label>
                                       &nbsp;<table class="auto-style4">
                                        <tr>
                                            <td class="auto-style7">
                                <label class="control-label" for="inputLname" style="height: 45px; width: 205px">
                                                <br />
                                                Student&nbsp; Id&nbsp; </label>

                                            </td>
                                            <td class="auto-style13">
                                    <label class="control-label" for="inputEmail" style="width: 154px; height: 22px">
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style12" Height="27px" Width="158px">
                                    </asp:DropDownList>
                                    </label>
                                            </td>
                                            <td class="auto-style14"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8">
                                <label class="control-label" for="inputLname" style="width: 206px; height: 25px">
                                                <div class="pagination-right">
                                                    Section&nbsp; Id</div>
                                                </label>

                                            </td>
                                            <td class="auto-style9"><asp:DropDownList ID="DropDownList2" runat="server" Height="29px" Width="154px">
                                    </asp:DropDownList>
                                            </td>
                                            <td class="auto-style10"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;</td>
                                            <td class="auto-style6">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style15">
                            <label class="control-label" for="inputLname" style="height: 43px; width: 230px;">
                            <label class="control-label" for="inputLname" style="height: 44px; width: 224px; "> 
                            <asp:Button ID="Button1" runat="server" Height="34px" OnClick="Button1_Click" Text="Add" Width="73px" />
&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" Height="33px" Text="Update" OnClick="Button2_Click" />
                            </label>
                                                </label>
                                            </td>
                                            <td class="auto-style6">
                            <label class="control-label" for="inputLname" style="height: 43px; width: 230px;">
                            <label class="control-label" for="inputLname" style="height: 44px; width: 224px; ">
                            <asp:Button ID="Button3" runat="server" Height="34px" Text="Delete" OnClick="Button3_Click" />
                            </label>
                                                </label>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">
                            <label class="control-label" for="inputLname" style="height: 43px">
                            <label class="control-label" for="inputLname" style="height: 44px; width: 233px; ">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </label>
                                                </label>
                                            </td>
                                            <td class="auto-style6">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </div>
                                    &nbsp;</div>
                            &nbsp;</div>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />                                
                                    <br />                            
                                </div>
                            </div>

                            <div class="control-group">
                            </div>
                      
                    </div>

  
    <!-- MainBody End ============================= -->
    <!-- Footer ================================================================== -->
    <div id="footerSection">
        <div class="container">
            <div class="row">
                <div class="span3">
                    <h5>ACCOUNTUNT</h5>
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
