<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>    
   <!--   isElIgnored is false so that sessionscope name will appear otherwise not -->
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
   
   
   
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  </head>
  <body>
  




	
<div class="container" style="margin-top:20px">
<h5 class="text text-success">Welcome ${sessionScope.name}</h5>


<a class="link-opacity-100" href="PageServlet?name=bookappointment">BOOK APPOINTMENT</a>
<a class="link-opacity-100" href="PageServlet?name=viewappointment">VIEW APPOINTMENT</a>
<a class="link-opacity-100" href="PageServlet?name=cancelappointment">CANCEL APPOINTMENT</a>
<a href="index.jsp">HOME</a>


<c:if test="${sessionScope.page eq 'bookappointment'}">
<c:import url="bookappointment.jsp"></c:import>
</c:if>

<c:if test="${sessionScope.page eq 'viewappointment'}">
<c:import url="viewappointment.jsp"></c:import>
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
            </c:forEach>
        </tbody>
    </table>
    <% session.removeAttribute("list5"); %>
        </c:if>


<c:if test="${sessionScope.page eq 'cancelappointment'}">
<c:import url="cancelappointment.jsp"></c:import>
</c:if>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>




