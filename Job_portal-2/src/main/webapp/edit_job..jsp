

<%@page import="com.entity.Jobs"%>
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
<title>Edit Places</title>
<%@include file="all_component/all_css.jsp" %>
</head>
<body style="background-color:#f0f1f2;">
<%@include file ="all_component/navbar.jsp"%>
<div class="container p-2">
<div class="col-md-10 offset-md-1">
<div class="card">
<div class="card-body">
<div class="text-center text-sucess">
<i class="fas fa-user-friends fa-3x"></i>



<% int id = Integer.parseInt(request.getParameter("id"));

JobDAO dao = new JobDAO(DBConnect.getConn());
Jobs j =dao.getJobById(id);







%>

<h5>Edit places</h5>
</div>
<form action="update" method="post">
<input type="hidden" value="<%=j.getId()%>" name="id">
<div class="form-group">
<label>Enter Title</label> <input type="text" name="title"
required class="form-control" value="<%=j.getTitle()        %>">
</div>
<div class="form-row">
<div class="form-group col-md-4">
<label>Location</label><select name="location" class="custom-select " id="inlineFormCustomSelectionPref">
<option value="<%=j.getLocation()%>"><%=j.getLocation() %></option>
<option value="Odisha">Odisha</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Gujarat">Gujarat</option>
<option value="Bhubaneswar">Bhubaneswar</option>
<option value="Delhi">Delhi</option>
<option value="Banglore">Banglore</option>
<option value="Chennai">Chennai</option>
<option value="Hydrabad">Hydrabad</option>
</select>
</div>
<div class="form-group col-md-4">
<label > Category</label><select class="custom-select" id="inlineFormCustomSelectpref" name="category">
<option value="<%=j.getCategory()%>"><%=j.getCategory() %></option>
<option value="Holiday">Holiday trip</option>
<option value="smallholiday"> small Holiday trip</option>
<option value="Budgettrip">Budget Holiday trip</option>
<option value="Bestholiday">Best of Best Holiday trip</option>
<option value="specialtrip">our special of nature Trip </option>


</select></div>
<div class="form-group col-md-4">
<label> Status</label>
<select class="form-control" name="status">
<option class ="Active" value="<%=j.getStatus()%>"><%=j.getStatus() %></option>
<option class="Active" value="Active"> Active</option>
<option class="Inactive" value="Inactive">Inactive</option>
</select></div>
</div>
<div class="form-group">
<label> Enter Description</label>
<textarea required rows="6" cols="" name="desc"
class="form-control"><%=j.getDescription() %></textarea>
</div>
<button class="btn btn-success">Update  place</button>
</form>
</div>
</div>
</div></div>
</body>
</html>