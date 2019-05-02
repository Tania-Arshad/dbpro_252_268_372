<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageTeacher.aspx.cs" Inherits="WebApplication22.ManageTeacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <title>Manage Teacher </title>
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
            width: 452px;
            height: 582px;
            text-align: center;
            margin-bottom: 0px;
            margin-left: 176px;
        }
        .auto-style2 {
            width: 223px;
            height: 14px;
        }
        .auto-style3 {
            margin-bottom: 10px;
            height: 86px;
            text-align: center;
        }
        .auto-style4 {
            width: auto;
            zoom: 1;
            height: 588px;
            margin-left: auto;
            margin-right: auto;
        }
        .auto-style6 {
            margin-left: 26px;
        }
        .auto-style7 {
            text-align: left;
            height: 76px;
            width: 435px;
        }
        .auto-style8 {
            text-align: left;
            height: 78px;
            width: 428px;
        }
        .auto-style9 {
            text-align: left;
            height: 77px;
            width: 439px;
        }
        .auto-style10 {
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
            text-align: left;
        }
    </style>
</head>
<body><form id="form2" runat="server">
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
                       <li class=""><a href="AddCourse.aspx">AddCourse</a></li>
                        <li class=""><a href="Section.aspx">Section</a></li>
                        <li class=""><a href="FeeChallans.aspx">FeeChallan</a></li>
                        <li class=""><a href="TeacherCourse.aspx">TeacherCourse</a></li>
                        <li class=""><a href="StudentSection.aspx">StudentSection</a></li>

                        <li class="">
                            &nbsp;</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End====================================================================== -->
    <div id="mainBody">
        <div class="auto-style4">
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
                    <h3> Add Teacher</h3>
                    <div class="auto-style10">
                                         
                            <div class="auto-style3">
                                <label class="control-label" for="inputTname" style="width: 427px; height: 80px;">
                                <div class="auto-style7">
                                    <label class="control-label" for="inputEmail" style="width: 453px; height: 72px">
                                    <div class="auto-style9">
                                        TeacherName&nbsp;&nbsp; <asp:TextBox ID="Nametxt" runat="server" Width="195px"></asp:TextBox>
                                        <br />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Nametxt" ErrorMessage="Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                      <br />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Nametxt" ErrorMessage="Please Enter Text Only" ValidationExpression="[A-Za-z]+" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                                        <br />
                                    </div>
                                    </label>
                                </div>
                                </label>
                                <div class="controls" style="height: 98px; width: 430px; margin-bottom: 0px;">
                                    &nbsp;<label class="control-label" for="inputEmail" style="width: 430px; height: 80px"><div class="auto-style8">
                                        Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Emailtxt" runat="server"></asp:TextBox>
                                        <br />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Emailtxt" ErrorMessage="E-mail is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                      <br />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="You must Enter Valid Email Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Emailtxt"></asp:RegularExpressionValidator>
                                        <br />
                                    </div>
                                    </label>
                                    &nbsp;<br />
                                    <br />
                                </div>
                            </div>
                            <label class="control-label" for="inputLname" style="height: 78px; width: 427px; margin-top: 111px;">
                            <div class="alignL">
                                PhoneNo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="PhoneNumbertxt" runat="server"></asp:TextBox>                           
                            <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter valid Phone number" ControlToValidate="PhoneNumbertxt" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" ForeColor="Red" ></asp:RegularExpressionValidator> 

                            <br />
                            </div>
                            </label>
                            <label class="control-label" for="inputLname" style="height: 57px; width: 426px; margin-top: 0px;">&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" Height="35px" OnClick="Button1_Click1" Text="Add" Width="69px" />
                            <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Height="36px" Text="Update" Width="63px" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" Height="38px" Text="Delete" OnClick="Button3_Click" />
&nbsp; </label>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </div>
                                    &nbsp;</div>                                  
                                    <br />
                                    <br />
                                    <br />
                                   </div>
                            </div>

                            <div class="control-group">
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