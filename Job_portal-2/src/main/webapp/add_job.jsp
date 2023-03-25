

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_component/all_css.jsp" %>
</head>
<body style="background-color:#f0f1f2;">
<%@include file ="all_component/navbar.jsp"%>
<div class="container p-2">
<div class="col-md-10 offset-md-1">
<div class="card" style=color:”red”>
<div class="card-body" style=color:”red”>
<div class="text-center text-sucess">
<i class="fas fa-user-friends fa-3x"></i>
<c:if test="${not empty succMsg }">
<div  class="alert alert-success" role="alert" >${succMsg}</div>
<c:remove var="succMsg"/>
</c:if>
<h5>add places</h5>
</div>
<form action="add_job" method="post">
<div class="form-group">
<label>Enter Title</label> <input type="text" name="title"
required class="form-control">
</div>
<div class="form-row">
<div class="form-group col-md-29">
<label>Location</label><select name="location" class="custom-select " id="inlineFormCustomSelectionPref">
<option selected>choose..</option>
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
<div class="form-group col-md-4">
<label > Category</label><select class="custom-select" id="inlineFormCustomSelectpref" name="category">
<option value="Holiday">Holiday trip</option>
<option value="smallholiday"> small Holiday trip</option>
<option value="Budgettrip">Budget Holiday trip</option>
<option value="Bestholiday">Best of Best Holiday trip</option>
<option value="specialtrip">our special of nature Trip </option>


</select></div>
<div class="form-group col-md-4">
<label> Status</label>
<select class="form-control" name="status">
<option class="Active" value="Active"> Active</option>
<option class="Inactive" value="Inactive">Inactive</option>
</select></div>
</div>
<div class="form-group">
<label> Enter Description</label>
<textarea required rows="6" cols="" name="desc"
class="form-control"></textarea>
</div>
<button class="btn btn-success">Publish place</button>
</form>
</div>
</div>
</div></div>
</body>
</html>