<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>    
   <!--   isElIgnored is false so that sessionscope name will appear otherwise not -->
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
   
   
   
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Doctors</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  </head>
  <body>
  




	
<div class="container" style="margin-top:20px">
<h5 class="text text-success">Welcome ${sessionScope.name}</h5>


<a class="link-opacity-100" href="PageServlet1?name=seminardetails">SEMINAR DETAILS</a>
<a class="link-opacity-100" href="PageServlet1?name=doctorappointment">VIEW APPOINTMENT AND PATIENT DETAILS</a>
<!-- <a class="link-opacity-100" href="PageServlet1?name=patientsdetails">VIEW PATIENT DETAILS</a> -->
<a href="index.jsp">HOME</a>


<c:if test="${sessionScope.page eq 'seminardetails'}">

<table class="table table-bordered table-striped" style="margin-top:20px">
<tr><th>SEMINAR ID</th><th>TOPIC</th><th>DATE</th>
</tr>
<c:forEach items="${sessionScope.list}" var="e">
<tr>
<td>${e.semid()}</td>
<td>${e.topic()}</td>
<td>${e.date()}</td>
</tr>
</c:forEach>
</c:if>

<c:if test="${sessionScope.page eq 'doctorappointment'}">
<c:import url="doctorappointment.jsp"></c:import>
</c:if>
<%-- <table class="table table-bordered table-striped" style="margin-top:20px">
<tr><th>USERNAME</th><th>APPOINTMENTDATE</th><th>TIMESLOT</th><th>DOCTORLIST</th></tr>
<c:forEach items="${sessionScope.list}" var="e">
<tr>
<td>${e.username()}</td>
<td>${e.appointmentdate()}</td>
<td>${e.timeslot()}</td>
<td>${e.doctorlist()}</td>
</tr>
</c:forEach> --%>

<c:if test="${sessionScope.list5 ne null}">
        <table class="table table-bordered" >
        <thead>
            <tr>
                <th>USERNAME</th>
                <th>APPOINTMENTDATE</th>
                <th>TIMESLOT</th>
                <th>DOCTORLIST</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="e" items="${sessionScope.list5}">
                <tr>               
                    <td>${e.username()}</td>
                    <td>${e.appointmentdate()}</td>
                    <td>${e.timeslot()}</td>
                    <td>${e.doctorlist()}</td>
                </tr>
                
                
                 <c:set var="usernames" value="${e.username()}" scope="session" />
                <c:set var="usernamesList" value="${usernamesList},${usernames}" scope="session" />
                
            
            
            </c:forEach>
        </tbody>
    </table>
    
    <form action="doctorViewPatientDetailsServlet" method="post">
    <label for="name">Select Patient:</label>
    <select name="name" id="name">
        <c:forEach items="${usernamesList}" var="username">
            <option value="${username}">${username}</option>
        </c:forEach>
    </select>
    <input type="submit" value="View Details">
</form>
    
    
    <% session.removeAttribute("list5"); %>
        </c:if>

    
    
    
    <c:if test="${sessionScope.list6 ne null}">
        <table class="table table-bordered" >
        <thead>
            <tr>
                <th>NAME</th>
                <th>PASSWORD</th>
                <th>FIRSTNAME</th>
                <th>LASTNAME</th>
                <th>AGE</th>
                <th>GENDER</th>
                <th>CONTACT NUMBER</th>
                <th>EMAIL</th>
                <th>ADDRESS</th>
                <th>CITY</th>
                <th>ZIPCODE</th>
                
            </tr>
        </thead>
        <tbody>
            <c:forEach var="e" items="${sessionScope.list6}">
                <tr>               
                    <td>${e.name()}</td>
                    <td>${e.password()}</td>
                    <td>${e.firstName()}</td>
                    <td>${e.lastName()}</td>
                    <td>${e.age()}</td>
                    <td>${e.gender()}</td>
                    <td>${e.contactNumber()}</td>
                    <td>${e.email()}</td>
                    <td>${e.address()}</td>
                    <td>${e.city()}</td>
                    <td>${e.zipCode()}</td>                    
                </tr>
                
                
                </c:forEach>
                </tbody>
                </table>
                </c:if>
                

<%-- <c:if test="${sessionScope.page eq 'patientsdetails'}">
<c:import url="patientsdetails.jsp"></c:import>
</c:if> --%>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>




