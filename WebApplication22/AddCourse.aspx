<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="WebApplication22.Course" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Course</title>
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
            width: 548px;
            margin-left: 226px;
            margin-right: 263px;
        }
        .auto-style12 {
            width: 92px;
            height: 14px;
        }
        .auto-style20 {
            width: 92px;
            height: 39px;
            text-align: right;
        }
        .auto-style21 {
            width: 149px;
            height: 39px;
        }
        .auto-style22 {
            height: 39px;
        }
        .auto-style23 {
            width: 149px
        }
        .auto-style24 {
            width: 92px;
            height: 21px;
            text-align: left;
        }
        .auto-style25 {
            width: 149px;
            height: 21px;
        }
        .auto-style26 {
            height: 21px;
        }
        .auto-style27 {
            width: 92px;
            height: 1px;
        }
        .auto-style28 {
            width: 149px;
            height: 1px;
        }
        .auto-style29 {
            height: 1px;
        }
        .auto-style30 {
            width: 149px;
            height: 14px;
        }
        .auto-style31 {
            height: 14px;
        }
        .auto-style32 {
            width: 92px
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

                   <li class=""><a href="AddCourse.aspx">AddCourse</a></li>
                        <li class=""><a href="ManageTeacher.aspx">ManageTeacher</a></li>
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
                    <h3 class="pagination-centered"> Add Course&nbsp;</h3>
                    <div class="well">
                     
                      
                         
                            <div class="control-group">
                                &nbsp;<label class="control-label" for="inputFname"><table>
                                    <tr>
                                        <td class="auto-style20">
                                <label class="control-label" for="inputFname" style="width: 231px; height: 30px;">CourseTitle</label></td>
                                        <td class="auto-style21"><asp:TextBox ID="CourseTitle" runat="server" Width="147px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style22">
                                            <label class="control-label" for="inputFname" style="width: 142px">
                                            <br />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CourseTitle" ErrorMessage="CourseTitle is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    <br />
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="CourseTitle" ErrorMessage="Please Enter Text Only" ValidationExpression="[A-Za-z]+" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                                                </label></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style24">
                                            <label class="control-label" for="inputFname">
                                            <label class="control-label" for="inputFname" style="width: 229px">
                                    <asp:Button ID="Button1" runat="server" Height="37px" OnClick="Button1_Click" Text="Add" Width="70px" />
&nbsp; <asp:Button ID="Button2" runat="server" Height="34px" Text="Update" Width="65px" />
&nbsp;
                                            <asp:Button ID="Button3" runat="server" Height="32px" Text="Delete" />
                                            </label>
                                </label>
                                        </td>
                                        <td class="auto-style25">&nbsp;</td>
                                        <td class="auto-style26">
                                            <label class="control-label" for="inputFname">
                                            <label class="control-label" for="inputFname" style="width: 142px">
                                                    <br />
                                                <br />
                                            </label></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style32">
                                            &nbsp;</td>
                                        <td class="auto-style23"></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style27">&nbsp;</td>
                                        <td class="auto-style28"></td>
                                        <td class="auto-style29"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style12">
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <td class="auto-style30"></td>
                                        <td class="auto-style31"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style32">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CourseId" DataSourceID="SqlDataSource1" GridLines="Vertical">
                                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                                <Columns>
                                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                                    <asp:BoundField DataField="CourseId" HeaderText="CourseId" InsertVisible="False" ReadOnly="True" SortExpression="CourseId" />
                                                    <asp:BoundField DataField="CourseTitle" HeaderText="CourseTitle" SortExpression="CourseTitle" />
                                                </Columns>
                                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                <SortedDescendingHeaderStyle BackColor="#000065" />
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinalConnectionString %>" DeleteCommand="DELETE FROM [Courses] WHERE [CourseId] = @CourseId" InsertCommand="INSERT INTO [Courses] ([CourseTitle]) VALUES (@CourseTitle)" SelectCommand="SELECT * FROM [Courses]" UpdateCommand="UPDATE [Courses] SET [CourseTitle] = @CourseTitle WHERE [CourseId] = @CourseId">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="CourseId" Type="Int32" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="CourseTitle" Type="String" />
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="CourseTitle" Type="String" />
                                                    <asp:Parameter Name="CourseId" Type="Int32" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                        <td class="auto-style23">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style32">
                                            &nbsp;</td>
                                        <td class="auto-style23">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                                </label>
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
