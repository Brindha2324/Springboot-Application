<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AppointmentCancelation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  </head>
  <body>
    <div class="container" style="margin-top:20px">
    <h4 class="text text-primary">Cancel</h4>
    <form id="booking-form" action="DeleteAppointmentServlet">
    
    
    <label for="username">Enter name:</label>
        <input type="text" id="username" name="username">
        <br>
        
        <label for="appointment-date">Select Date:</label>
        <input type="date" id="appointmentdate" name="appointmentdate">
        <br>

        <label for="timeslot">Select Time Slot:</label>
        <select id="timeslot" name="timeslot">
            <option value="morning">Morning</option>
            <option value="afternoon">Afternoon</option>
            <option value="evening">Evening</option>
        </select>
        <br>

        <input type="submit" value="Cancel Appointment">
        <input type="reset" value="Reset">
    </form>
    
    
    <c:if test="${sessionScope.ok ne null }">
    <h3 class="text text-success">${sessionScope.ok}</h3>
    <% session.removeAttribute("ok"); %>
    </c:if>
     <c:if test="${sessionScope.no ne null }">
    <h3 class="text text-danger">${sessionScope.no}</h3>
  	<% session.removeAttribute("no"); %>
    </c:if>
    
   </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>