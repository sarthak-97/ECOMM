<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
  <title>INDEX</title>

   <script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>


<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/css/materialize.min.css">
<link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/js/materialize.min.js"></script>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body >
  
    
  <nav class="white" role="navigation">
    <div class="nav-wrapper container">
      <a id="logo-container" href="#" class="brand-logo"><span style="font-family: "Comic Sans MS";"><img src="imgs/Logo.JPG" height="60"></span></a>
      <ul class="right hide-on-med-and-down">
        <li><a id="modlbtn" data-target="modal1">${data}</a></li>
        <li><a href="#">About</a></li>
                <li><a href="services">Services</a></li>
        <li><a href="#">Contact Us</a></li>
        
         <li><a href="logout">${username}</a></li>
      </ul>

      <ul id="nav-mobile" class="side-nav">
          <li><a id="modlbtn" data-target="modal1">${data}</a></li>
        <li><a href="#">About</a></li>
        <li><a href="services">Services</a></li>
        <li><a href="#">Contact Us</a></li>
          <li><a href="logout">${username}</a></li>
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>
 <div id="main">
		<div id="ques" style="height: 100%; width: 700px; margin: 0 auto;"
			align="center">
			
<div id="modal1" class="modal">
				<div class="modal-content">
					<div class="card col s6 offset-s3"
						style="margin-top: 20px; padding: 20px;">
						<div class="card-content" align="center">
							<p style="font-size: 30px; color: #0572d2;">GET STARTED</p>
						</div>
						<div class="card-tabs">
							<ul class="tabs tabs-fixed-width"
								style="background: rgba(255, 255, 255, .7);">
								<li class="tab" onclick="indicator();"><a class="active"
									href="#login_form" style="color: #1E88E5;">Login</a></li>
								<li class="tab" onclick="indicator();"><a
									href="#signup_form" style="color: #1E88E5;">Sign Up</a></li>
							</ul>
						</div>
						<div class="card-content " id="cards" style="margin-top: 0;">
							<div id="login_form">
							<form  action="login" autocomplete="on" method="post"> 
							<p> 
                                    <label for="username" class="uname" > Your email  </label>
                                    <input id="username" name="id" required="required" type="email" placeholder=" mymail@mail.com"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd"> Your password </label>
                                    <input id="password" name="pass" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                                </p>
									<div align="center">
										<button type="submit"
											class="waves-effect waves-light btn blue"
											style="margin-bottom: 0;">Submit</button>
									</div>
								</form>
							</div>
							<div id="signup_form">
								<form action="signup" method="post">
							<p> 
                                    <label for="usernamesignup" class="uname" >Your First Name</label>
                                    <input id="usernamesignup" name="FirstName" required="required" type="text" placeholder="mysuperusername690" />
                                </p>
                                <p> 
                                    <label for="usernamesignup" class="uname" >Your Last Name</label>
                                    <input id="usernamesignup" name="LastName" required="required" type="text" placeholder="mysuperusername690" />
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail"  > Your email</label>
                                    <input id="emailsignup" name="EmailId" required="required" type="email" placeholder="mysupermail@mail.com"/> 
                                </p>
                                <p> 
                                    <label for="usernamesignup" class="uname" >Country</label>
                                    <input id="usernamesignup" name="country" required="required" type="text" placeholder="mysuperusername690" />
                                </p>
                                <p> 
                                    <label for="usernamesignup" class="uname" >Contact Number</label>
                                    <input id="usernamesignup" name="contact" required="required" pattern="[7-9]{1}[0-9]{9}" type="text" placeholder="without 0 ie 9898989888" />
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" >Your password </label>
                                    <input id="passwordsignup" name="password" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" >Please confirm your password </label>
                                    <input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
									<div align="center">
										<button type="submit"
											class="waves-effect waves-light btn blue"
											style="margin-bottom: 0;">Submit</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
      
      </div>
      </div>
      
  <div class="slider" style="display:block">
    <ul class="slides">
      <li>
        <img src="http://lorempixel.com/580/250/nature/1"> <!-- random image -->
        <div class="caption center-align">
          <h3>This is our big Tagline!</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
        </div>
      </li>
      <li>
        <img src="http://lorempixel.com/580/250/nature/2"> <!-- random image -->
        <div class="caption left-align">
          <h3>Left Aligned Caption</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
        </div>
      </li>
      <li>
        <img src="http://lorempixel.com/580/250/nature/3"> <!-- random image -->
        <div class="caption right-align">
          <h3>Right Aligned Caption</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
        </div>
      </li>
      <li>
        <img src="http://lorempixel.com/580/250/nature/4"> <!-- random image -->
        <div class="caption center-align">
          <h3>This is our big Tagline!</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
        </div>
      </li>
    </ul>
  </div>
  
   <div id="snackbar">${invalid}</div>

  <div class="container">
    <div class="section">

      <!--   Icon Section   -->
      <div class="row">
        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center light-blue-text"><i class="material-icons">flash_on</i></h2>
            <h5 class="center">Speeds up development</h5>

            <p class="light">We did most of the heavy lifting for you to provide a default stylings that incorporate our custom components. Additionally, we refined animations and transitions to provide a smoother experience for developers.</p>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center light-blue-text"><i class="material-icons">group</i></h2>
            <h5 class="center">User Experience Focused</h5>

            <p class="light">By utilizing elements and principles of Material Design, we were able to create a framework that incorporates components and animations that provide more feedback to users. Additionally, a single underlying responsive system across all platforms allow for a more unified user experience.</p>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center light-blue-text"><i class="material-icons">settings</i></h2>
            <h5 class="center">Easy to work with</h5>

            <p class="light">We have provided detailed documentation as well as specific code examples to help new users get started. We are also always open to feedback and can answer any questions a user may have about Materialize.</p>
          </div>
        </div>
      </div>

    </div>
    <br><br>

    <div class="section">
  
           <%
		        int i = 1;
			%>
		

		<c:forEach var="itemslist" items="${items}" begin="0" end="4">
		
			<table class=" bordered highlight ">
			    <tr>
			    	<td rowspan="3"><a href="/viewitem?itemid=${itemslist.ItemId}"><img src="${itemslist.ItemImageUrl}" ></a></td>
			    	<td><c:out value=" ${itemslist.ItemBrandName }" escapeXml="false"/></td>
			   </tr>
			   <tr>
			   		<td></td>
			   		<td> <c:out	value=" ${itemslist.ItemPrice }" escapeXml="false"/></td>
			   		
			    </tr>
			    
				<%
						i = i + 1;
					%>
				 </table>    
				</c:forEach>
			
		</div>
  </div>

  <footer class="page-footer light-blue lighten-1">
    <div class="container">
      <div class="row">
        <div class="col l6 s12">
          <h5 class="white-text">Company Bio</h5>
          <p class="grey-text text-lighten-4">We are a team of college students working on this project like it's our full time job. Any amount would help support and continue development on this project and is greatly appreciated.</p>


        </div>
        <div class="col l3 s12">
          <h5 class="white-text">Settings</h5>
          <ul>
            <li><a class="white-text" href="#!">Link 1</a></li>
            <li><a class="white-text" href="#!">Link 2</a></li>
            <li><a class="white-text" href="#!">Link 3</a></li>
            <li><a class="white-text" href="#!">Link 4</a></li>
          </ul>
        </div>
        <div class="col l3 s12">
          <h5 class="white-text">Connect</h5>
          <ul>
            <li><a class="white-text" href="#!">Link 1</a></li>
            <li><a class="white-text" href="#!">Link 2</a></li>
            <li><a class="white-text" href="#!">Link 3</a></li>
            <li><a class="white-text" href="#!">Link 4</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="footer-copyright">
      <div class="container">
      Made by Materialize
      </div>
    </div>
  </footer>


  <!--  Scripts-->
 
  <script src="js/init.js"></script>
<script>
$(document).ready(function(){
    $('.slider').slider();
  });
$('.slider').slider('pause');
//Start slider
$('.slider').slider('start');
//Next slide
$('.slider').slider('next');
//Previous slide
$('.slider').slider('prev');
   
      
     
</script>
<script>
	function indicator() {
		$(".indicator").css("background", "#1E88E5");
	}
	function snackBar() {
		var x = document.getElementById("snackbar")
		if ($('#snackbar').is(':empty')) {
			return;
		} else {
			x.className = "show";
			setTimeout(function() {
				x.className = x.className.replace("show", "");
			}, 3000);
		}
	}
	$(function() {
		indicator();
		snackBar();
	});
	$(document).ready(function() {
		$(".indicator").css("background", "#1E88E5");
		// the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
		$('.modal').modal();
	});
	$('.modal').modal({
		dismissible : true, // Modal can be dismissed by clicking outside of the modal
		opacity : .5, // Opacity of modal background
		inDuration : 300, // Transition in duration
		outDuration : 200, // Transition out duration
		startingTop : '4%', // Starting top style attribute
		endingTop : '10%', // Ending top style attribute
		ready : function(modal, trigger) { // Callback for Modal open. Modal and trigger parameters available.
			alert("Ready");
			console.log(modal, trigger);
		},
		complete : function() {
			alert('Closed');
		} // Callback for Modal close
	});
	$('#modlbtn').on('click', function() {
		indicator();
	});
</script>

<style>

#login_form, #signup_form {
	padding: 20px 45px;
}
#login_form h3 {
	font-size: 30px;
	margin: 0;
}
#cards button {
	margin-top: 10px;
	margin-bottom: 15px;
}
#cards {
	padding: 0;
	margin-top: 50px;
}
.indicator {
	background: #1E88E5;
}
#mdlbtn {
	/* 	margin-top:300px; */
	
}
/* snackbar */
/* The snackbar - position it at the bottom and in the middle of the screen */
#snackbar {
	visibility: hidden; /* Hidden by default. Visible on click */
	min-width: 250px; /* Set a default minimum width */
	margin-left: -125px; /* Divide value of min-width by 2 */
	background-color: #333; /* Black background color */
	color: #fff; /* White text color */
	text-align: center; /* Centered text */
	border-radius: 2px; /* Rounded borders */
	padding: 16px; /* Padding */
	position: fixed; /* Sit on top of the screen */
	z-index: 1; /* Add a z-index if needed */
	left: 50%; /* Center the snackbar */
	bottom: 60px; /* 30px from the bottom */
}
/* Show the snackbar when clicking on a button (class added with JavaScript) */
#snackbar.show {
	visibility: visible; /* Show the snackbar */
	/* Add animation: Take 0.5 seconds to fade in and out the snackbar. 
However, delay the fade out process for 2.5 seconds */
	-webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
	animation: fadein 0.5s, fadeout 0.5s 2.5s;
}
/* Animations to fade the snackbar in and out */
@
-webkit-keyframes fadein {
	from {bottom: 0;
	opacity: 0;
}
to {
	bottom: 30px;
	opacity: 1;
}
}
@
keyframes fadein {
	from {bottom: 0;
	opacity: 0;
}
to {
	bottom: 30px;
	opacity: 1;
}
}
@
-webkit-keyframes fadeout {
	from {bottom: 30px;
	opacity: 1;
}
to {
	bottom: 0;
	opacity: 0;
}
}
@
keyframes fadeout {
	from {bottom: 30px;
	opacity: 1;
}
to {
	bottom: 0;
	opacity: 0;
}
}
	
</style>

  </body>
</html>
