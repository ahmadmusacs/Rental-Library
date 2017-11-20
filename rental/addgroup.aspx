<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addgroup.aspx.cs" Inherits="addgroup" %>

<!DOCTYPE html>

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
                    <!-- students -->
                    <li class="nav-header"><i class="fa fa-user"></i>&nbsp;&nbsp;Students</li>
                    <li><a href="#view"><i class="fa fa-bars"></i>&nbsp;&nbsp;All Students</a></li>
                    <li><a href="#add"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Student</a></li>
                    <li><a href="#edit"><i class="fa fa-minus"></i>&nbsp;&nbsp;Edit Student</a></li>
                    <li><a href="#remove"><i class="fa fa-remove"></i>&nbsp;&nbsp;Remove Student</a></li>
                    <li class="divider"></li>
                    <!-- books -->
                    <li class="nav-header"><i class="fa fa-paste">&nbsp;&nbsp;</i>Books</li>
                    <li><a href="#view" ><i class="fa fa-bars" ></i>&nbsp;&nbsp;All Books</a></li>
                    <li class="#add"><a href="#"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Book</a></li>
                    <li><a href="#edit"><i class="fa fa-minus"></i>&nbsp;&nbsp;Edit Book</a></li>
                    <li><a href="#remove"><i class="fa fa-remove"></i>&nbsp;&nbsp;Remove Book</a></li>
                    <li class="#rent"><a href="#"><i class="fa fa-hand-o-right"></i>&nbsp;&nbsp;Rent Book</a></li>
                    <li class="divider"></li>
                    <!-- groups -->
                    <li class="nav-header"><i class="fa fa-users">&nbsp;&nbsp;</i>Groups</li>
                    <li><a href="#view" ><i class="fa fa-bars" ></i>&nbsp;&nbsp;All Groups</a></li>
                    <li class="#add"><a href="#"class="active"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Group</a></li>
                    <li><a href="#delete"><i class="fa fa-remove"></i>&nbsp;&nbsp;Delete Group</a></li>
                    <li class="divider"></li>
                    <li><a href="index.htm">&nbsp;Back to home</a></li>
                    <li><a href="#logout">&nbsp;Logout</a></li>
                </ul>
            </div>
        </div>
        <div class="content">
            <h1 class="title">Add Group</h1>
            <div class="innerdiv">
                <form action="addgroup.aspx" method="post" runat="server">
                    
                        
                        <div class="form-group">
                            <label for="username1">username</label>
                            <input type="text" class="form-control" name="username1" id="username1" placeholder="Enter username">
                        </div>
                    
                   
                         <div class="form-group">
                            <label for="username2">username</label>
                            <input type="text" class="form-control" name="username2" id="username2" placeholder="Enter username">
                        </div>
                    
                        
                         <div class="form-group">
                            <label for="username3">username</label>
                            <input type="text" class="form-control" name="username3" id="username3" placeholder="Enter username">
                        </div>
                    
                    
                        
                         <div class="form-group">
                            <label for="username4">username</label>
                            <input type="text" class="form-control" name="username4" id="username4" placeholder="Enter username">
                        </div>
                    
                   
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>
                <asp:Label ID="Label1" runat="server" Text="no record added">
                </asp:Label>
            </div>
        </div>
        <div class="footer">
        </div>
    </div>

    <script src="libs/jquery/jquery.min.js"></script>
    <script src="libs/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
