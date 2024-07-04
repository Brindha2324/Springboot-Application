<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>    
   <!--   isElIgnored is false so that sessionscope name will appear otherwise not -->
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
   
   
   
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Loading...</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  </head>
  <body>
  




	
<div class="container" style="margin-top:20px">
<h5 class="text text-success">Welcome ${sessionScope.name}</h5>


<a class="link-opacity-100" href="PageServlet2?name=noofdoctors">NO OF DOCTORS</a>
<a class="link-opacity-100" href="PageServlet2?name=noofpatients">NO OF PATIENTS</a>
<!-- <a class="link-opacity-100" href="PageServlet1?name=patientsdetails">VIEW PATIENT DETAILS</a> -->
<a href="index.jsp">HOME</a>




<c:if test="${sessionScope.page eq 'noofdoctors'}">
<c:import url="noofdoctors.jsp"></c:import>
</c:if>

<c:if test="${sessionScope.page eq 'noofpatients'}">
<c:import url="noofpatients.jsp"></c:import>
</c:if>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>




