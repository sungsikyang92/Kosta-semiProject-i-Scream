<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/myhome.css" />
<link href="https://fonts.googleapis.com/css?family=https://fonts.googleapis.com/css?family=Inconsolata:400,500,600,700|Raleway:400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(document).ready(function(){
	})

</script>
</head>
<body>
<div class="container">
	<c:import url="header.jsp"/>
	<hr>   
		<div class="row content content-custom">
		    <div class="col-sm-9 text-left"> 
				<c:import url="${requestScope.url }"></c:import>
		    </div>
		    <!-- 오른쪽 사이드바 start -->
		    <div class="col-sm-3 sidenav">
		    	<c:import url="right.jsp"/>
		    </div>
		     <!-- 오른쪽 사이드바 end -->
		</div>
	<hr>   
	<c:import url="footer.jsp"/>
</div>

</body>
</html>