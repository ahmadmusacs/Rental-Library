<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editStd.aspx.cs" Inherits="editStd" %>



<html>
<head>
    <title>Admin | Rental Library | KUET</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="libs/normalize/normalize.css">
    <link rel="stylesheet" href="libs/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/layout.css">
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
    <div class="container">
        <div class="header">
            <div class="logo">
                <h1>Rental Library</h1>
            </div>
            <form action="search.html" class="search">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for books/thesis paper/journal">
                    <span class="input-group-btn ">
                        <button class="btn btn-default" type="button"><i class="fa fa-search"></i>&nbsp;Search</button>
                    </span>
                </div>
            </form>
        </div>
        <div class="sidebar">
            <div class="sidebar-links well">
                <ul class="nav">

                    <li class="nav-header"><i class="fa fa-user"></i>&nbsp;&nbsp;Students</li>
                    <li><a href="Default.aspx"><i class="fa fa-bars"></i>&nbsp;&nbsp;All Students</a></li>
                    <li><a href="#add"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Student</a></li>
                    <li><a href="#edit" class="active"><i class="fa fa-minus"></i>&nbsp;&nbsp;Edit Student</a></li>
                    <li><a href="#remove"><i class="fa fa-remove"></i>&nbsp;&nbsp;Remove Student</a></li>
                    <li class="divider"></li>
                    <!-- books -->
                    <li class="nav-header"><i class="fa fa-paste">&nbsp;&nbsp;</i>Books</li>
                    <li><a href="#view"><i class="fa fa-bars"></i>&nbsp;&nbsp;All Books</a></li>
                    <li class="#add"><a href="#"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Book</a></li>
                    <li><a href="#edit"><i class="fa fa-minus"></i>&nbsp;&nbsp;Edit Book</a></li>
                    <li><a href="#remove"><i class="fa fa-remove"></i>&nbsp;&nbsp;Remove Book</a></li>
                    <li class="#rent"><a href="#"><i class="fa fa-hand-o-right"></i>&nbsp;&nbsp;Rent Book</a></li>
                    <li class="divider"></li>
                    <!-- groups -->
                    <li class="nav-header"><i class="fa fa-users">&nbsp;&nbsp;</i>Groups</li>
                    <li class="#add"><a href="#"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Group</a></li>
                    <li><a href="#delete"><i class="fa fa-remove"></i>&nbsp;&nbsp;Delete Group</a></li>
                    <li class="divider"></li>
                    <li><a href="index.htm">&nbsp;Back to home</a></li>
                    <li><a href="#logout">&nbsp;Logout</a></li>
                </ul>
            </div>
        </div>
        <div class="content">
            <form id="form1" runat="server">
    <div>
        <div>
      <br />
      <asp:Label id="Label1" runat="server">Select Student:</asp:Label>
      <asp:DropDownList id="lstAuthor" runat="server" AutoPostBack="True" onselectedindexchanged="lstAuthor_SelectedIndexChanged">
      </asp:DropDownList>&nbsp;&nbsp;&nbsp;
      
      <br />
      
      
      
    </div>
    <br />
    <div>
   
      <asp:Label id="Label10" runat="server" Width="100px">Unique ID:</asp:Label>
      <asp:TextBox id="txtID" runat="server" Width="184px" ReadOnly="True"></asp:TextBox>&nbsp; 
      (required:&nbsp;###-##-#### form)<br />
      
      <asp:Label id="Label2" runat="server" Width="100px">Full Name:</asp:Label>
      <asp:TextBox id="txtFirstName" runat="server" Width="184px"></asp:TextBox><br />
      
      <asp:Label id="Label3" runat="server" Width="100px">Roll</asp:Label>
      <asp:TextBox id="txtLastName" runat="server" Width="183px" ReadOnly="True"></asp:TextBox><br />
      
      <asp:Label id="Label4" runat="server" Width="100px">Email</asp:Label>
      <asp:TextBox id="txtPhone" runat="server" Width="183px"></asp:TextBox><br />
      
      <asp:Label id="Label5" runat="server" Width="100px">Password</asp:Label>
      <asp:TextBox id="txtAddress" runat="server" Width="183px"></asp:TextBox><br />
      
      <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Button id="cmdUpdate" runat="server" Text="Update" class="btn btn-success" onclick="cmdUpdate_Click"></asp:Button>&nbsp;
      <br />
      
      
      <asp:Label id="lblResults" runat="server" Width="575px" Height="121px" Font-Bold="True"></asp:Label>
    </div>
    </div>
    </form>
        </div>

    </div>
    <script src="libs/jquery/jquery.min.js"></script>
    <script src="libs/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
