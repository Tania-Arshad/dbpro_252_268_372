<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageTimeTable.aspx.cs" Inherits="WebApplication22.ManageTimeTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Manage Time Table </title>
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
            width: 395px;
            zoom: 1;
            height: 539px;
            margin-left: auto;
            margin-right: auto;
        }
        .auto-style4 {
            margin-bottom: 10px;
            height: 57px;
            width: 358px;
        }
        .auto-style6 {
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
            width: 387px;
            height: 473px;
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
                <h3>Time Table </h3>
                <div class="auto-style6">
                    <div class="auto-style4">
                        <label class="control-label" for="inputFname">
                        Teacher Id</label>&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="inputLname">
                        Class Id</label>
                        <div class="controls">
                            <asp:DropDownList ID="DropDownList2" runat="server">
                            </asp:DropDownList>
&nbsp;<label class="control-label" for="inputLname" style="width: 372px; height: 17px">Course Id<br />
                            <asp:DropDownList ID="DropDownList3" runat="server">
                            </asp:DropDownList>
                            <br />
                            Section Id<br />
                            <asp:DropDownList ID="DropDownList4" runat="server">
                            </asp:DropDownList>
                            <label class="control-label" for="inputLname">
                            StartTime</label>
     &nbsp;</div>
                            <br />
                             &nbsp;</div>
                    <br />
                            <br />
                            <br />
                    <br />
                    &nbsp;<input type="text" id="inputStime" placeholder="Start Time" /><label class="control-label" for="inputLname">EndTime<br />
                    <input type="text" id="inputEtime" placeholder="End Time" /></label><br />
                           
                        <label class="control-label" for="inputLname" style="height: 57px; width: 331px;"><input class="btn btn-large btn-success" type="submit" value="Add" style="width: 85px" />
                                            <input class="btn btn-large btn-success" type="submit" value="Update" style="width: 91px; margin-left: 21;" />
                            <input class="btn btn-large btn-success" type="submit" value="Delete" style="width: 85px; margin-left: 0.2em;" /></label></div>
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
