<%@ Page Language="C#" AutoEventWireup="true"EnableViewStateMac="false" CodeFile="addBook.aspx.cs" Inherits="addBook" %>

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
    <script>
        function addBook(str) {
            
            var xmlhttp;
            if (str == "") {
                document.getElementById("innerdiv").innerHTML = "";
                return;
            }
            if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
                xmlhttp = new XMLHttpRequest();
            }
            else {// code for IE6, IE5
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    document.getElementById("innerdiv").innerHTML = xmlhttp.responseText;
                }
            }
            if (str == "book")
            {
                xmlhttp.open("GET", "getbookForm.aspx?q=" + str, true);
            }
            else
            xmlhttp.open("GET", "getThesisForm.aspx?q=" + str, true);
            xmlhttp.send();
        }
    </script>
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
                    <li><a href="#view" ><i class="fa fa-bars"></i>&nbsp;&nbsp;All Students</a></li>
                    <li><a href="#add"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Student</a></li>
                    <li><a href="#edit"><i class="fa fa-minus"></i>&nbsp;&nbsp;Edit Student</a></li>
                    <li><a href="#remove"><i class="fa fa-remove"></i>&nbsp;&nbsp;Remove Student</a></li>
                    <li class="divider"></li>
                    <!-- books -->
                    <li class="nav-header"><i class="fa fa-paste">&nbsp;&nbsp;</i>Books</li>
                    <li><a href="#view" ><i class="fa fa-bars"></i>&nbsp;&nbsp;All Books</a></li>
                    <li class="#add" ><a href="#" class="active"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Book</a></li>
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
            <h1 class="title">add a Book/Thesis</h1>
            <form runat="server">
                <select name="customers" onchange="addBook(this.value)">
                    <option value="">Select a type:</option>
                    <option value="book">Book</option>
                    <option value="thesis ">Thesis</option>
                </select>
            </form>
            
            <div id="innerdiv">

            </div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
        <div class="footer">
        </div>
    </div>

    <script src="libs/jquery/jquery.min.js"></script>
    <script src="libs/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
