<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AdminLogin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  </head>
  <body>

    
    <div class="container">
    <h3 class="text-success">Admin Login Page!!!</h3>
    
    <%if(session.getAttribute("error")!=null){%>
<h4 style="color:red"><%= session.getAttribute("error") %></h4>
<% 	}%>
    
    <%session.invalidate(); %>
    <form action="AdminLoginServlet" method="post">
    Name:<input type="text" name="username" class="form-control">
    Password:<input type="password" name="password" class="form-control"><br>
    <input type="submit" value="login" class="btn btn-primary btn-block">
    </form>
    
    <br><br>
  
  <form><a href="index.jsp">HOME</a></form>
    
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
</body>
</html>

