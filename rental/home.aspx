﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<html>
<head>
	<title>Rental Library | KUET</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="libs/normalize/normalize.css">
	<link rel="stylesheet" href="css/layout.css">
	<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<div class="wrapper index">
		<div class="top-links">
			<a href="#signIn" data-toggle="modal" data-target="#signIn" class="btn btn-primary btn-sm">Sign In</a>
		</div>
		<div class="logo">
			<h1>Rental Library</h1>
		</div>
		<ul class="links">
			<li><a href="search.html" class="btn btn-primary">Books</a></li>
			<li><a href="search.html" class="btn btn-primary">Thesis Paper</a></li>
			<li><a href="search.html" class="btn btn-primary">Journals</a></li>
		</ul>
		<form action="search.html" class="search">
			<input type="text" placeholder = "Search for books/thesis paper/journal"><br>
			<input type="submit" class="submit btn btn-lg" value="Search">
		</form>

		<!-- Sign in Modal -->
		<div class="modal fade" id="signIn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
			    <div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel">Sign In</h4>
				</div>
				<div class="modal-body">
					<form action="login.aspx" method="post">
						<div class="form-group">
							<label for="username">username</label>
							<input type="text" name="username" class="form-control" id="username" placeholder="Enter username">
						</div>
						<div class="form-group">
							<label for="password">Password</label>
							<input type="password" name="password" class="form-control" id="password" placeholder="Enter Password">
						</div>
						<div class="checkbox">
							<label>
								<input type="checkbox" name="remember" value="1"> Remember me
							</label>
						</div>

						<div class="form-group ">
							<input type="submit" class="btn btn-primary pull-right" style="margin-left: 10px" value="Sign in">
							&nbsp;&nbsp;
							<button type="button" class="btn btn-default pull-right" data-dismiss="modal">Cancel</button>				
						</div>
					</form>				
				</div>
		    </div>
	  	</div>
	</div>

	<script src="libs/jquery/jquery.min.js"></script>
	<script src="libs/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>