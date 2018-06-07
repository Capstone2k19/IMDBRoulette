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
	<%@ include file="headerSmall.jsp"%>.

	<div class = "container">
		<center>
			<!-- Get and dispplay poster, name, year, director, actors, IMDB and RT rating -->
			<img src="movie.getPoster()"  alt="moviePoster" style="width:200px;height:300px;">
			<h2><c:out value="${movie.getTitle()}" />(<c:out value="${movie.getYear()}"/>) </h2>
			<p> Director: <c:out value="${movie.getDirector()}" /><br>
				Starring: <c:out value="${movie.getActors()}" /><br>
				IMDB Rating: <c:out value="${movie.getIMDBRating()}" /><br>
				RT Score: <c:out value="${movie.getRTScore()}" /><br>
				<br>
			</p>
			
			<!-- Print one sentence plot of the movie -->
			<h3>Plot</h3><br>
			<p><c:out value="${movie.getPlot()}" /> </p><br>
			
			<!-- If there is a trailer print the link for it-->
			<p id="demo"></p>
			<script>
				function trailer(){
					var link = new movie.getTrailer();
					var text;
					if (link != NULL ){
						text = "Trailer: " + link;
					} else if(!available){
						text = "";
					}
					document.getElementById("demo").innerHMTL = text;
				}
			</script>
			
			<!-- If the movie is available on netflix, print link to the movie on netflix -->
			<p id="demo"></p>
			<script>
				function netflix(){
					boolean available = new movie.getOnNetflix();
					var text;
					if (available){
						var link = movie.getNLink();
						text = "Available to stream:" + link;
					} else if(!available){
						text = "Not available to stream."
					}
					document.getElementById("demo").innerHMTL = text;
				}
			</script>
			
			<!-- add functions for marking movies as watched or favorite. -->
			
		</center>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>