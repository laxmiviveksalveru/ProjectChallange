<%@page import="com.DB.DBConnect" %>
<%@page import="java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<%@include file="all_component/all_css.jsp" %>
<style type="text/css">
.back-img{
float:right;
background: url("img/vht.jpg");
width:104%;

height:60vh;
background-repeat:no-repeat;
background-size: cover;
}
</style>
</head>
<body>

<%@include file ="all_component/navbar.jsp"%>
<div class= "container-fluid back-img">
<div class ="text-center">
<h1  class = "text-black p-4" > <a class="btn btn-outline-light"><i class="fa-sharp fa-solid fa-mountain-city"></i></a> &nbsp;Travel portal</h1>
</div>
</div>
<%@include file="all_component/footer.jsp" %>
</body>
</html>