﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="WebApplication22.AddStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Manage Student </title>
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
            width: 370px;
            height: 465px;
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
            width: 333px;
            height: 372px;
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
                    <h3> Add Student</h3>
                    <div class="auto-style3">
                     
                      
                         
                            <div class="control-group">
                                <label class="control-label" for="inputFname">Student name </label>
         &nbsp;<input type="text" id="inputLname0" placeholder="Student Name" /></div>
                            <div class="control-group">
                                <label class="control-label" for="inputLname">Student&nbsp; Id</label>

                                <div class="controls">
                                    <input type="text" id="inputLname" placeholder="Student Id" />
                                    <label class="control-label" for="inputEmail" style="width: 333px; height: 20px">Email<br /></label>
                                       &nbsp;<input type="text" id="email" placeholder="Email" /></div>
                                    <label class="control-label" for="inputLname">Address</label>
                                    &nbsp;<input type="text" id="inputAddress" placeholder="Address" /></div>
                                    <label class="control-label" for="inputLname" style="height: 130px">Phone No<br /><input type="text" id="inputPhoneno" placeholder="Phone No" /><label class="control-label" for="inputLname" style="height: 44px; width: 341px; margin-right: 0px;"><input class="btn btn-large btn-success" type="submit" value="Add" style="width: 85px" />&nbsp; <input class="btn btn-large btn-success" type="submit" value="Update" style="width: 91px" /><input class="btn btn-large btn-success" type="submit" value="Delete" style="width: 85px; margin-left: 0.8em; margin-bottom: 0;" /></label></label>&nbsp;</div>
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
