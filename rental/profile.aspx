<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

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
                    <!-- profile -->
                    
                    <li><a href="#view" class="active"><i class="fa fa-bars"></i>&nbsp;&nbsp;My Profile</a></li>
                    <li><a href="#add">&nbsp;&nbsp;Payment</a></li>
                    <li><a href="#edit">&nbsp;&nbsp;My Books</a></li>
                    <li><a href="#remove">&nbsp;&nbsp;Log Out</a></li>
                    <li class="divider"></li>
                    
                </ul>
            </div>
        </div>
        <div class="content">
            <h1 class="title">Profile</h1>
            <div class="innerdiv">
            </div>
        </div>
    </div>
</body>
</html>
