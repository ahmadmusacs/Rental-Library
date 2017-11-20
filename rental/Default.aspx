<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
                    <li><a href="#view" class="active" ><i class="fa fa-bars"></i>&nbsp;&nbsp;All Students</a></li>
                    <li><a href="#add"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Student</a></li>
                    <li><a href="#edit"><i class="fa fa-minus"></i>&nbsp;&nbsp;Edit Student</a></li>
                    <li><a href="#remove"><i class="fa fa-remove"></i>&nbsp;&nbsp;Remove Student</a></li>
                    <li class="divider"></li>
                    <!-- books -->
                    <li class="nav-header"><i class="fa fa-paste">&nbsp;&nbsp;</i>Books</li>
                    <li><a href="#view" ><i class="fa fa-bars"></i>&nbsp;&nbsp;All Books</a></li>
                    <li class="#add" ><a href="#"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add Book</a></li>
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
            <h1 class="title">All students</h1>
            <div class="innerdiv">
                <asp:ListView ID="lvCustomers" runat="server" GroupPlaceholderID="groupPlaceHolder1"
                    ItemPlaceholderID="itemPlaceHolder1">
                    <LayoutTemplate>
                        <table class="table table-striped">
                            <tr>
                                <th>Roll
                                </th>
                                <th>Name
                                </th>
                                <th>
                                Email
                                </th>
                                <th>
                                Password
                                </th>
                               
                            </tr>
                            <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
                            <tr>
                                <td colspan="4">
                                    <asp:DataPager ID="DataPager1" runat="server" PagedControlID="lvCustomers" PageSize="10">
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <GroupTemplate>
                        <tr>
                            <asp:PlaceHolder runat="server" ID="itemPlaceHolder1"></asp:PlaceHolder>
                        </tr>
                    </GroupTemplate>
                    <ItemTemplate>

                        <td>
                            <%# Eval("roll") %>
                        </td>
                        <td>
                            <%# Eval("name") %>
                        </td>
                        <td>
                            <%#Eval("email") %>
                        </td>
                        <td>
                            <%#Eval("password") %>
                        </td>
                       
                    </ItemTemplate>
                </asp:ListView>
                <!-- view all students 
 				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>First Name</th>
							<th>Last Name</th>
						</tr>
					</thead>	
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
							</td>
							<td>roll</td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>name</td>
							<td>roll</td>
							
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>Larry</td>
							<td>the Bird</td>
							
						</tr>
					</tbody>
				</table> 
                -->
                <!-- view all groups -->
                <!--
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
				  <div class="panel panel-default">
				    <div class="panel-heading" role="tab" id="headingOne">
				      <h4 class="panel-title">
				        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
				          Collapsible Group Item #1
				        </a>
				      </h4>
				    </div>
				    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
				      <div class="panel-body">
				        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
				      </div>
				    </div>
				  </div>
				  <div class="panel panel-default">
				    <div class="panel-heading" role="tab" id="headingTwo">
				      <h4 class="panel-title">
				        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
				          Collapsible Group Item #2
				        </a>
				      </h4>
				    </div>
				    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
				      <div class="panel-body">
				        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
				      </div>
				    </div>
				  </div>
				  <div class="panel panel-default">
				    <div class="panel-heading" role="tab" id="headingThree">
				      <h4 class="panel-title">
				        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
				          <table class="table">
				          	<tbody>
				          		<tr>
				          			<td>column name</td>
				          			<td>column name</td>
				          			<td>column name</td>
				          			<td>column name</td>
				          		</tr>
				          	</tbody>
				          </table>
				        </a>
				      </h4>
				    </div>
				    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
				      <div class="panel-body">
				     <table class="table table-striped">
									<thead>
										<tr>
											<th>#</th>
											<th>First Name</th>
											<th>Last Name</th>
											<th>Username</th>
											<th>test</th>
										</tr>
									</thead>	
									<tbody>
										<tr>
											<th scope="row">1</th>
											<td>Mark</td>
											<td>Otto</td>
											<td>@mdo</td>
											<td>Hudai</td>
										</tr>
										<tr>
											<th scope="row">2</th>
											<td>Jacob</td>
											<td>Thornton</td>
											<td>@fat</td>
											<td>Hudai</td>
										</tr>
										<tr>
											<th scope="row">3</th>
											<td>Larry</td>
											<td>the Bird</td>
											<td>@twitter</td>
											<td>Hudai</td>
										</tr>
									</tbody>
								</table> 
				      </div>
				    </div>
				  </div>
				</div> 
                    -->
                <!-- Add student -->
                <!-- 				<form >
					<div class="form-group">
						<label for="exampleInputEmail1">Name</label>
						<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label>
						<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
					</div>
					<div class="form-group">
						<label for="exampleInputFile">File input</label>
						<input type="file" id="exampleInputFile">
						<p class="help-block">Example block-level help text here.</p>
					</div>
					<div class="checkbox">
						<label>
						<input type="checkbox"> Check me out
						</label>
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form> -->

                <!-- remove student -->
                <!--
                    <form action="search.html" class="search">
					<div class="input-group">			
						<input type="text" class="form-control" placeholder = "Search for books/thesis paper/journal">
						<span class="input-group-btn ">
							<button class="btn btn-default" type="button"><i class="fa fa-search"></i>&nbsp;Search</button>
						</span>
					</div>
				</form>	
                 -->

            </div>
        </div>
        <div class="footer">
        </div>
    </div>

    <script src="libs/jquery/jquery.min.js"></script>
    <script src="libs/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
