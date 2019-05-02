<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Section.aspx.cs" Inherits="WebApplication22.Section" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>  
    <title> Sections</title>
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
            width: 662px;
            margin-left: 88px;
            margin-right: 263px;
        }
        .auto-style2 {
            margin-left: 0px;
        }
        .auto-style3 {
            width: 102%;
        }
        .auto-style4 {
            width: 217px;
        }
        .auto-style12 {
            width: 217px;
            height: 14px;
        }
        .auto-style20 {
            width: 217px;
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
            width: 217px;
            height: 21px;
            text-align: right;
        }
        .auto-style25 {
            width: 149px;
            height: 21px;
        }
        .auto-style26 {
            height: 21px;
        }
        .auto-style27 {
            width: 217px;
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
                    <h3 class="pagination-centered"> Sections&nbsp;</h3>
                    <div class="well">
                     
                      
                         
                            <div class="control-group">
                                &nbsp;<label class="control-label" for="inputFname"><table class="auto-style3">
                                    <tr>
                                        <td class="auto-style20">
                                <label class="control-label" for="inputFname" style="width: 315px">SectionTitle</label></td>
                                        <td class="auto-style21"><asp:TextBox ID="SectionTitle" runat="server" Width="147px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style22">
                                            <label class="control-label" for="inputFname" style="width: 142px">
                                            <br />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="SectionTitle" ErrorMessage="SectionTitle is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    <br />
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="SectionTitle" ErrorMessage="Please Enter Text Only" ValidationExpression="[A-Za-z]+" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                                                </label></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style24">
                                <label class="control-label" for="inputLname" style="width: 313px">Section Detail</label></td>
                                        <td class="auto-style25"><asp:TextBox ID="SectionDetail" runat="server" Width="157px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style26">
                                            <label class="control-label" for="inputFname">
                                            <label class="control-label" for="inputFname" style="width: 142px">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="SectionDetail" ErrorMessage="SectionDetail is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    <br />
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="SectionDetail" ErrorMessage="Please Enter Text Only" ValidationExpression="[A-Za-z]+" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                                                <br />
                                            </label></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">
                                            <label class="control-label" for="inputFname" style="width: 314px">
                                    <asp:Button ID="Button1" runat="server" Height="37px" OnClick="Button1_Click" Text="Add" Width="70px" />
&nbsp;<asp:Button ID="Button2" runat="server" Height="34px" Text="Update" Width="65px" />
&nbsp;
                                            <label class="control-label" for="inputFname">
                                    <asp:Button ID="Button3" runat="server" CssClass="auto-style2" Height="35px" Text="Delete" Width="56px" OnClick="Button3_Click" />
                                            </label>
                                            </label>
                                        </td>
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
                                        <td class="auto-style4">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="SectionId" DataSourceID="SqlDataSource1" GridLines="None" Width="313px">
                                        <Columns>
                                            <asp:BoundField DataField="SectionId" HeaderText="SectionId" InsertVisible="False" ReadOnly="True" SortExpression="SectionId" />
                                            <asp:BoundField DataField="SectionTitle" HeaderText="SectionTitle" SortExpression="SectionTitle" />
                                            <asp:BoundField DataField="SectionDetails" HeaderText="SectionDetails" SortExpression="SectionDetails" />
                                        </Columns>
                                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                                    </asp:GridView>
                                        </td>
                                        <td class="auto-style23">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinalConnectionString %>" DeleteCommand="DELETE FROM [AddSection] WHERE [SectionId] = @SectionId" InsertCommand="INSERT INTO [AddSection] ([SectionTitle], [SectionDetails]) VALUES (@SectionTitle, @SectionDetails)" SelectCommand="SELECT * FROM [AddSection]" UpdateCommand="UPDATE [AddSection] SET [SectionTitle] = @SectionTitle, [SectionDetails] = @SectionDetails WHERE [SectionId] = @SectionId">
                                        <DeleteParameters>
                                            <asp:Parameter Name="SectionId" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="SectionTitle" Type="String" />
                                            <asp:Parameter Name="SectionDetails" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="SectionTitle" Type="String" />
                                            <asp:Parameter Name="SectionDetails" Type="String" />
                                            <asp:Parameter Name="SectionId" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                        </td>
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
