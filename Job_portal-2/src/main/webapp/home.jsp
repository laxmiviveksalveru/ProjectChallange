<%@page import="com.entity.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.JobDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User:VIEW PLACES</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style ="background-color:#49c5b6;">

<%--<c:if test="${not empty userobj }">
<c:redirect url="login.jsp"/>
</c:if>--%>
<%@include file="all_component/navbar.jsp" %>
<div class="container">
<div class="row" >
<div class="col-md-12">
<h5 class="text-center text-primary">ALL places</h5> 
<c:if test="${not empty succMsg }">
<div  class="alert alert-success" role="alert" >${succMsg}</div>
<c:remove var="succMsg"/>
</c:if>
<div class="card">
<div class="card-body" style=color:”#DF6C4F;”>
<form class="form-inline" action="more_view.jsp"method="get">
<div class="form-group col-md-5 mt-1"  >
<h5  >Location</h5>
</div>
<div class="form-group col-md-4 mt-1">
<h5 style=color:”red;”>Category</h5>
</div>
<div class="form-group col-md-5">
<select name="Loc" class="custom-select " id="inlineFormCustomSelectionPref">
<option value="Lo" selected>choose..</option>
<option value="Andhra">Andhra</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>

<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Banglore</option>
<option value="Kerala">Kerala</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Manipur">Manipur</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Odisha">Odisha</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu	">Tamil Nadu	</option>
<option value="Telangana">Telangana</option>
<option value="Tripura">Tripura</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="Uttarakhand	">Uttarakhand	</option>
<option value="West Bengal">West Bengal</option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>


</select>
</div>
<div class="form-group col-md-5">
<select class="custom-select" id="inlineFormCustomSelectpref" name="cat">
<option value ="ca" selected>Choose..</option>
<option value="Holiday">Holiday trip</option>
<option value="smallholiday"> smallholiday</option>
<option value="Budgettrip">Budget Holiday trip</option>
<option value="Bestholiday">Best of Best Holiday trip</option>
<option value="specialtrip">our special of nature Trip </option>
</select>
</div>
<button class="btn btn-success">Submit</button>


</form>
</div>
</div>
<%JobDAO dao = new JobDAO(DBConnect.getConn());
List<Jobs>list = dao.getAllJobsForUser();
for(Jobs j:list){
%>
<div class ="card mt-2" >
<div class="card-body">
<div class="text-center text-primary">
<i class="far fa-clipboard fa-2x"></i></div>
<h6><%=j.getTitle()%></h6>

<%
if (j.getDescription().length() > 0 && j.getDescription().length()<120 ){
%>
<p><%=j.getDescription()%>.
</p>
<% 
} else {%>
<p><%=j.getDescription().substring(0, 120) %>...
</p>
<%
}
%>


<br>
<div class="form-row">
<div class="form-group col-md-3">
<input type="text" class="form-control form-control-sm" value="Location: <%=j.getLocation()%>" readonly>
</div>



<div class="form-group col-md-3">
<input type="text" class="form-control form-control-sm" value="Category: <%=j.getCategory() %>"readonly>
</div>
</div>
<h6>
Publish Date:<%=j.getPdate().toString() %></h6>
<div class="text-center" >
<a href="one_view.jsp?id=<%=j.getId() %>"
class="btn btn-sm bg-success text-white">View More</a></div></div>
</div>
<%} %>

</div>
</div>
</div>
</body>
</html>