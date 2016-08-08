<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ArtistsLists</title>
	<script src = "jquery-3.0.0.min.js"></script>
	<script type="text/javascript" src="js/jssor.slider.min.js"></script>
    <!-- use jssor.slider.debug.js instead for debug -->    
    <link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap.min.css">
    <!-- Optional theme -->
    <link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap-theme.min.css"> 
</head>
<body>
 <header>
      <div class="navbar navbar-default navbar-fixed-top navbar-inverse">
        <div class = "container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
              <a href="#" class="navbar-left"></a>
            </div>
            <div class="collpase navbar-collapse" id="example">
                <ul class="nav navbar-nav">
                    <li><a href="index.html">OURtist</a></li>
                    <li><a href="index.html"><span class = "glyphicon glyphicon-home"></span></a></li> 
                    <li><a href="Artworks.html">Artworks</a></li>
                    <li><a href="Artists.html">Artists</a></li>
					<li><a href="SubmitForm.html">Submit your art</a></li>
                    
                </ul>
              
                
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="sign_up.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                    <li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                </ul>
                
                  
                 <form action="" class="navbar-form navbar-right" role="search">
                    <div class="input-group" id = "searchid">
                    <input type="text" class="form-control" placeholder = "Search"/>
                        <span class="input-group-addon">
                            <i class="fa fa-search"></i>
                            <a href="Artworks.html"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>
                        </span>
                    </div>
                </form>
               
        </div>
        </div>
    </div>
    </header> <br><br><br><br>
    <div class="container">
        <h1>Artists</h1>
			</div>
    <br><br>
    <div class="container">
      <div class="row">
            <div class="col-md-7">
                <a href="#">
                    <img class="img-responsive" src="images/Juan.jpg" alt="" style="min-height:50px;height:300px; min-width: 20px;width:700px;">
                </a>
            </div>
            <div class="col-md-5">
                <h3>Featured Artist</h3>
                <h4>Artist Name</h4>
                <p>Description of Artist.</p>
            </div>
      </div>
      <br>
      <div class="row">
		<c:forEach items = "${artistslists}" var = "a">
			<div class="col-sm-6 col-md-4">
          <div class="thumbnail">
            <img src="images/Art4.jpg" alt="Painting" style="min-height:50px;height:166px; min-width: 20px;width:450px;">
            <div class="caption">
              <h3 style = "margin:3px; text-align:center;width:100%">${a.name} <br></h3>
              <p style = "margin:3px; text-align:center;width:100%">${a.phone_number}<br>
			${a.info}<br>
			${a.views}<br> <br> <br></p>
            </div>
          </div>
        </div>

		</c:forEach>
	  </div>
    </div>
    
    <br><br>
    
    <footer>
        <div class="container">
            <div class="row">
        <hr>
            <div class="col-lg-12">
      
            <div class="col-md-8">
                <p class="muted pull-right">© 2016 Burugs. All rights reserved</p>
            </div>
            </div>
            </div>
        </div>
        
        
    </footer>
</body>
</html>