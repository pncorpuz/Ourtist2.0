<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WELCOME PAGE</title>
    <link rel="stylesheet" href="css/Slider.css">
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/jssor.slider.min.js"></script>
    
    <link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap.min.css">
    
    <link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap-theme.min.css">
    
    <style>
        
        #searchid{
            
            
            right:15px;
        }
        
    </style>
    
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
                    <li><a href="index.jsp">OURtist</a></li>
                    <li><a href="index.html"><span class = "glyphicon glyphicon-home"></span></a></li> 
                    <li><a href="Artworks.html">Artworks</a></li>
                    <li><a href="Artists.html">Artists</a></li>
                    <li><a href="SubmitForm.html">Submit your art</a></li>
                    
                </ul>
              
                
                <ul class="nav navbar-nav navbar-right">
                
                <% if(session.getAttribute("name") == null){ %>
					<li><a href="sign_up.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				<%}
                
                else{%>
                	<li><a href="sign_up.html"><span class="glyphicon glyphicon-user"></span>${name }</a></li>
                	<li><a href="LogoutServlet"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                <%} %>
					
				
                    
                    
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
      <script>
          jssor_1_slider_init = function() {
              
              var jssor_1_SlideoTransitions = [
                [{b:5500,d:3000,o:-1,r:240,e:{r:2}}],
                [{b:-1,d:1,o:-1,c:{x:51.0,t:-51.0}},{b:0,d:1000,o:1,c:{x:-51.0,t:51.0},e:{o:7,c:{x:7,t:7}}}],
                [{b:-1,d:1,o:-1,sX:9,sY:9},{b:1000,d:1000,o:1,sX:-9,sY:-9,e:{sX:2,sY:2}}],
                [{b:-1,d:1,o:-1,r:-180,sX:9,sY:9},{b:2000,d:1000,o:1,r:180,sX:-9,sY:-9,e:{r:2,sX:2,sY:2}}],
                [{b:-1,d:1,o:-1},{b:3000,d:2000,y:180,o:1,e:{y:16}}],
                [{b:-1,d:1,o:-1,r:-150},{b:7500,d:1600,o:1,r:150,e:{r:3}}],
                [{b:10000,d:2000,x:-379,e:{x:7}}],
                [{b:10000,d:2000,x:-379,e:{x:7}}],
                [{b:-1,d:1,o:-1,r:288,sX:9,sY:9},{b:9100,d:900,x:-1400,y:-660,o:1,r:-288,sX:-9,sY:-9,e:{r:6}},{b:10000,d:1600,x:-200,o:-1,e:{x:16}}]
              ];
              
              var jssor_1_options = {
                $AutoPlay: true,
                $SlideDuration: 800,
                $SlideEasing: $Jease$.$OutQuint,
                $CaptionSliderOptions: {
                  $Class: $JssorCaptionSlideo$,
                  $Transitions: jssor_1_SlideoTransitions
                },
                $ArrowNavigatorOptions: {
                  $Class: $JssorArrowNavigator$
                },
                $BulletNavigatorOptions: {
                  $Class: $JssorBulletNavigator$
                }
              };
              
              var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);
              
              //responsive code begin
              //you can remove responsive code if you don't want the slider scales while window resizing
              function ScaleSlider() {
                  var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                  if (refSize) {
                      refSize = Math.min(refSize, 1920);
                      jssor_1_slider.$ScaleWidth(refSize);
                  }
                  else {
                      window.setTimeout(ScaleSlider, 30);
                  }
              }
              ScaleSlider();
              $Jssor$.$AddEvent(window, "load", ScaleSlider);
              $Jssor$.$AddEvent(window, "resize", ScaleSlider);
              $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
              //responsive code end
          };
      </script>  
      <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 1300px; height: 470px; overflow: hidden; visibility: hidden;">
          <!-- Loading Screen -->
          <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 1300px; height: 500px; overflow: hidden;">
              <div data-p="225.00" style="display: none;">
                  <img data-u="image" src="images/image1.jpg" />
                  <div style="position: absolute; top: 400px; left: 598px; width: 480px; height: 120px; font-size: 30px; color: #FFFEF8; line-height: 38px;">Art Title</div>
              </div>
              <div data-p="225.00" style="display: none;">
                  <img data-u="image" src="images/image2.png" />
                  <div style="position: absolute; top: 400px; left: 598px; width: 480px; height: 120px; font-size: 30px; color: #FFFEF8; line-height: 38px;">Art Title</div>                  
              </div>
              <div data-p="225.00" data-po="80% 55%" style="display: none;">
                  <img data-u="image" src="images/image3.jpg" />
                  <div style="position: absolute; top: 400px; left: 598px; width: 480px; height: 120px; font-size: 30px; color: #FFFEF8; line-height: 38px;">Art Title</div>                  
              </div>
          
          </div>
          <!-- Bullet Navigator -->
          <div data-u="navigator" class="jssorb05" style="bottom:16px;right:16px;" data-autocenter="1">
              <!-- bullet navigator item prototype -->
              <div data-u="prototype" style="width:16px;height:16px;"></div>
          </div>
          <!-- Arrow Navigator -->
          <span data-u="arrowleft" class="jssora22l" style="top:0px;left:12px;width:40px;height:58px;" data-autocenter="2"></span>
          <span data-u="arrowright" class="jssora22r" style="top:0px;right:12px;width:40px;height:58px;" data-autocenter="2"></span>
      </div>  
      <script>
          jssor_1_slider_init();
      </script>
   </header> 
    <!-- #endregion Jssor Slider End -->
    <br><br>
    <div class = "container">
      <div class="row">
        <div class="col-sm-4">
              <div class="thumbnail">
                  <a href = "painting.html"><img src="images/image4.jpg" alt="Painting" style="min-height:50px;height:166px; min-width: 20px;width:450px;"></a>
                  <h3 style = "margin:3px; text-align:center;width:100%">Painting Title</h3>
                  <p style = "margin:3px; text-align:center;width:100%">Artist Name</p>
              </div>
        </div>
        <div class="col-sm-4">
              <div class="thumbnail">
                  <a href = "painting.html"><img src="images/fiesta.jpg" alt="Painting" style="min-height:50px;height:166px; min-width: 20px;width:450px;"></a>
                  <h3 style = "margin:3px; text-align:center;width:100%">Painting Title</h3>
                  <p style = "margin:3px; text-align:center;width:100%">Artist Name</p>
              </div>
        </div>
        <div class="col-sm-4">
              <div class="thumbnail">
                  <a href = "painting.html"><img src="images/FilArt.jpg" alt="Painting" style="min-height:50px;height:166px; min-width: 20px;width:450px;"></a>
                  <h3 style = "margin:3px; text-align:center;width:100%">Painting Title</h3>
                  <p style = "margin:3px; text-align:center;width:100%">Artist Name</p>
              </div>
        </div>
        <div class="col-sm-4">
              <div class="thumbnail">
                  <a href = "painting.html"><img src="images/Art4.jpg" alt="Painting" style="min-height:50px;height:166px; min-width: 20px;width:450px;"></a>
                  <h3 style = "margin:3px; text-align:center;width:100%">Painting Title</h3>
                  <p style = "margin:3px; text-align:center;width:100%">Artist Name</p>
              </div>
        </div>
        <div class="col-sm-4">
              <div class="thumbnail">
                  <a href = "painting.html"><img src="images/Art3.jpg" alt="Painting" style="min-height:50px;height:166px; min-width: 20px;width:450px;"></a>
                  <h3 style = "margin:3px; text-align:center;width:100%">Painting Title</h3>
                  <p style = "margin:3px; text-align:center;width:100%">Artist Name</p>
              </div>
        </div> 
        <div class="col-sm-4">
              <div class="thumbnail">
                  <a href = "painting.html"><img src="images/Art2.jpg" alt="Painting" style="min-height:50px;height:166px; min-width: 20px;width:450px;"></a>
                  <h3 style = "margin:3px; text-align:center;width:100%">Painting Title</h3>
                  <p style = "margin:3px; text-align:center;width:100%">Artist Name</p>
              </div>
        </div> 
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