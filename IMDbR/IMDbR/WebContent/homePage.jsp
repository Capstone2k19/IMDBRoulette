<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css"
	href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="style/theme.css">

<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
<title>IMDbR</title>
</head>

<body>	
	<%@include file="headerLarge.jsp" %>
	<br>
	<div class="container">
		<center>
		<!-- get info from Paddy's class on searching movies -->
			
		<form method="POST" action='SearchResults' name="frmAddUser">
			<input type="text" name="search" >
			<input type="submit" value="Search">
			<br>
			<br>
			<a href=moviePage.jsp > Surprise Me! </a>
		</form>
		</center>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>