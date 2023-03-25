<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Package Page</title>


<%@include file="all_component/all_css.jsp" %>
<style type="text/css">
.back-img{
background: url("img/xr.jpg");
height:90vh;
width:100%;
background-repeat:no-repeat;
background-size:cover;
}


</style>
</head>
<body >
<%@include file ="all_component/navbar.jsp"%>
<div class="continer-fluid back-img">
<div class="row p-4">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">
<div class="text-center">
<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>

<h5>Registration</h5>

</div>
 <c:if test="${not empty succMsg }">
<h4 class ="text-center text-success">${succMsg }</h4>
<c:remove var="succMsg" />
</c:if>
<c:if test="${not empty succMsg }">
<h4 class ="text-center text-danger">${succMsg }</h4>
<c:remove var="succMsg"/>
</c:if> 
<form action="vh" method="post">
<div class="form-group">
<label> First name </label><input type="text" required="required" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
name="name">
</div>




<div class="form-group">
<label> Enter Email</label><input type="email" required="required" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
name="email"></div>
<div class="form-group col-md-20">
<i class="fa-solid fa-tree-city"></i>
<select name="placex" class="custom-select " id="inlineFormCustomSelectionPref">
<option value="Lo" selected>Please renter the place you selected</option>
<option value="Andhra">Andhra</option>
<option value="ArunachalPradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>

<option value="Haryana">Haryana</option>
<option value="HimachalPradesh">Himachal Pradesh</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Banglore</option>
<option value="Kerala">Kerala</option>
<option value="MadhyaPradesh">Madhya Pradesh</option>
<option value="Manipur">Manipur</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Odisha">Odisha</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="TamilNadu	">Tamil Nadu	</option>
<option value="Telangana">Telangana</option>
<option value="Tripura">Tripura</option>
<option value="UttarPradesh">Uttar Pradesh</option>
<option value="Uttarakhand	">Uttarakhand	</option>
<option value="WestBengal">West Bengal</option>
<option value="Andaman_Nicobar">Andaman and Nicobar Islands</option>


</select>
</div>
<div class="form-group col-md-8">
<i class="fa-sharp fa-solid fa-indian-rupee-sign"></i>
<select class="custom-select" id="inlineFormCustomSelectpref" name="price">
<option value ="ca" selected>Choose package </option>
<option value="Holiday">Holiday trip(14000 rupees)</option>
<option value="smallholiday"> smallholiday(8000 rupees)</option>
<option value="Budgettrip">Budget Holiday trip(5000 rupees)</option>
<option value="Bestholiday">Best of Best Holiday trip(20000 rupees)</option>
<option value="specialtrip">our special of nature Trip (25000 rupees)</option>
</select>
</div>


<button type="submit"
class="btn btn-primary badge-pill btn-block">Register</button>

</form>

</div>
</div>
</div>
</div>
</div>










</body>
</html>