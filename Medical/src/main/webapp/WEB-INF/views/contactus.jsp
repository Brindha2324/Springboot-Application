<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 
<meta charset="UTF-8">
<title>About MedxTotalCare</title>
<style>
.about-us{
  /* height: 100vh;*/
  width: 100%;
  padding: 90px 0;
  background: #eadaf0;
}
.pic{
  height: auto;
  width:  302px;
}
.about{
  width: 1130px;
  max-width: 85%;
  margin: 0 auto;
  display: flex;
  align-items: center;
  justify-content: space-around;
}
body {
  margin:0;
  padding:0;
  background: #ebebeb;
}
ul {
  position:absolute;
  top:50%;
  left:50%;
  transform:translate(-50%,-50%);
  margin:0;
  padding:0;
  display:flex;
}
ul li {
  list-style:none;
}
ul li a {
  display:block;
  position:relative;
  width:100px;
  height:100px;
  line-height:100px;
  font-size:40px;
  text-align:center;
  text-decoration:none;
  color:#404040;
  margin: 0 30px;
  transition:.5s;
}
ul li a span {
  position:absolute;
  transition: transform .5s;
}
ul li a span:nth-child(1),
ul li a span:nth-child(3){
  width:100%;
  height:3px;
  background:#404040;
}
ul li a span:nth-child(1) {
  top:0;
  left:0;
  transform-origin: right;
}
ul li a:hover span:nth-child(1) {
  transform: scaleX(0);
  transform-origin: left;
  transition:transform .5s;
}
 
ul li a span:nth-child(3) {
  bottom:0;
  left:0;
  transform-origin: left;
}
ul li a:hover span:nth-child(3) {
  transform: scaleX(0);
  transform-origin: right;
  transition:transform .5s;
}
 
ul li a span:nth-child(2),
ul li a span:nth-child(4){
  width:3px;
  height:100%;
  background:#404040;
}
ul li a span:nth-child(2) {
  top:0;
  left:0;
  transform:scale(0);
  transform-origin: bottom;
}
ul li a:hover span:nth-child(2) {
  transform: scale(1);
  transform-origin: top;
  transition:transform .5s;
}
ul li a span:nth-child(4) {
  top:0;
  right:0;
  transform:scale(0);
  transform-origin: top;
}
ul li a:hover span:nth-child(4) {
  transform: scale(1);
  transform-origin: bottom;
  transition:transform .5s;
}
 
.facebook:hover {
  color: #3b5998;
}
.facebook:hover span {
  background: #3b5998;
}
.twitter:hover {
  color: #1da1f2;
}
.twitter:hover span {
  background: #1da1f2;
}
.instagram:hover {
  color: #c32aa3;
}
.instagram:hover span {
  background: #c32aa3;
}
.google:hover {
  color: #dd4b39;
}
.google:hover span {
  background: #dd4b39;
}
ul li a .twitter {
  color: #1da1f2;
}
ul li a:hover:nth-child(3) {
  color: #c32aa3;
}
ul li a:hover:nth-child(4) {
  color: #dd4b39;
}
 
h1{
text-align: center;
/*margin-top: 60px;*/
}
 
h2{
text-align: center;
margin-top: 150px;
}
 
.contact-form {
      text-align: center;
      width: 100%;
    }
    .contact-form form {
      max-width: 400px;
      margin: 0 auto;
    }
    .contact-form input,
    .contact-form textarea {
      width: 100%;
      padding: 10px;
      margin: 5px 0;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    .contact-form button {
      background-color: #404040;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
h3{
/*margin-top: 300px;*/
/*margin-right: 200px;*/
text-align: center;
margin-bottom: 40px;
font-size: 20px;
}  
 
.location {
display: flex;
flex-direction: column;
justify-content: center;
align-items: center;
margin-top: 600px;
margin-bottom: 20px;
}
      
</style>
</head>
 
<body>
<section class="about-us">
    <div class="about">
 
<h1>CONTACT US</h1>
<ul>
  <li>
  
    <a class="facebook" href="https://www.facebook.com/medexny">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
<!--       <i class="fa fa-facebook" aria-hidden="true"></i> -->
      <i class="fa fa-facebook-square" aria-hidden="true"></i>
      
    </a>
  </li>
  <li>
    <a class="twitter" href="https://twitter.com/DtcMedxTotalCare">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      <i class="fa fa-twitter" aria-hidden="true"></i>
    </a>
  </li>
  <li>
    <a class="instagram" href="https://www.instagram.com/medxtotalcare/">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      <i class="fa fa-instagram" aria-hidden="true"></i>
    </a>
  </li>
  <li>
    <a class="google" href="https://www.medexdtc.com/about-medxtotalcare/">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      <i class="fa fa-google-plus" aria-hidden="true"></i>
    </a>
  </li>
</ul>
</div>
<div class="location">
  <h3>OUR LOCATION</h3>
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1511.9489515658925!2d-73.836471!3d40.720264!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2609e99107c8d%3A0xea131bcd6530b924!2s111-29%20Queens%20Blvd%2C%20Queens%2C%20NY%2011375%2C%20USA!5e0!3m2!1sen!2suk!4v1698564390959!5m2!1sen!2suk" width="350" height="350" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>
 
 
</section>
 
<div class="contact-form">
<h2>Any Query ? let us know</h2>
    <form action="Submit_formServlet">
      <input type="text" name="full_name" placeholder="Full Name" required>
      <input type="email" name="email" placeholder="E-Mail Id" required>
      <input type="text" name="subject" placeholder="Subject" required>
      <textarea name="message" placeholder="Message" required></textarea>
      <button type="submit">Submit</button>
      <button type="reset">Reset</button>
    </form>
    <br><br>
    <form>
    <a href="index.jsp">HOME</a>   
    
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
  
<br>
<br>
<br>
</body>
</html>