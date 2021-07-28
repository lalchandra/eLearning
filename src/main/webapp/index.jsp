<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>E-Learning</title>
	<style>  
	.container{  
	text-align: center;  
	width: 200px;  
	height: 100px;  
	padding-top: 10px;  
	}  
	.container:hover  {
	 background-color: #80ff80;
   }
	
	#btn{  
	font-size: 10px;  
	}  
	</style> 
	</head>
	<body>
	   
	 <div align="center">
	<h2>Welcome to E-Learning Portal</h2>
	
	</div>  
	<div align="center">
	 <button class ="container" onClick="window.location.href='login.jsp';"> ADMIN </button> 
	 
	 <button class ="container" onClick="window.location.href='userIndex.jsp';"> USER </button> 
	 
	</div>
	
	</body>
	</html>
