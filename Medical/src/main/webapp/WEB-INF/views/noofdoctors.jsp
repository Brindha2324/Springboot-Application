<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>    
   <!--   isElIgnored is false so that sessionscope name will appear otherwise not -->
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
   
   
   
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Doctors available</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  </head>
  <body>
  

<%
// Retrieve the doctor count from the session
Integer doctorCount = (Integer) session.getAttribute("doctorCount");

if (doctorCount != null) {
%>
    <p><h2>Number of Doctors in the Hospital: <%= doctorCount %></h2></p>
<% } else { %>
    <p>Doctor count not available.</p>
<% } %>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>




