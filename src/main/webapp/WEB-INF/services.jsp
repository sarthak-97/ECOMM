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
  
    
  <nav class="white nav-extended" role="navigation">
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
    </div>
       <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
     
   
       <div class="  nav-content">
      <ul class="tabs " >
         <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
         <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
          <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li> 
           <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
        <li class="tab"><a href="#recharge" style="color:black" >Recharge</a></li>
        <li class="tab"><a class="" href="#billpay" style="color:black">Bill Pay</a></li>
       <li class="tab"><a class="" href="#booking" style="color:black">Booking</a></li>
       <li class="tab"><a class="" href="#jobs" style="color:black">Jobs</a></li>
       <li class="tab"><a class="" href="#medical" style="color:black">Medical</a></li>
        <li class="tab"><a class="" href="#insurance" style="color:black">Insurance</a></li>
                   <li class="tab"><a class="" href="#fees" style="color:black">Fees</a></li>
                       <li class="tab"><a class="" href="#others" style="color:black">Others</a></li>
      </ul>
      </div>
   
    </div>
  </nav>
  
  <br>
  	<div id="recharge" class="col s12">
  	
  			<h1>Recharge</h1>
  		       <p class="light">By utilizing elements and principles of Material Design, we were able to create a framework that incorporates components and animations that provide more feedback to users.
  		       
  		        Additionally, a single underlying responsive system across all platforms allow for a more unified user experience.</p>
  	</div>
  	
    <div id="billpay" class="col s12">
  
  			<h1>BillPay</h1>
  			       <p class="light">By utilizing elements and principles of Material Design, we were able to create a framework that incorporates components and animations that provide more feedback to users. Additionally, a single underlying responsive system across all platforms allow for a more unified user experience.</p>
  			
  			</div>
    <div id="booking" class="col s12">
    
        <h1>Booking</h1>
        
        </div>
  <div id="jobs" class="col s12">Jobs</div>
  <div id="medical" class="col s12">Medical</div>
  <div id="insurance" class="col s12">Insurance</div>
  <div id="fees" class="col s12">Fees</div>
  <div id="others" class="col s12">Others</div>
  
 </body>
 </html>
 