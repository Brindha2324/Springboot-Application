<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: #f0f0f0;
}

.header {
    padding: 20px;
    text-align: center;
    background-color: #d8f0ec;
    color: white;
}

.header img {
    max-width: 100%;
    height: auto;
}

.navbar {
    overflow: hidden;
    background-color: #333;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 20px;
}

.navbar a {
    color: white;
    text-align: center;
    padding: 14px 20px;
    text-decoration: none;
    transition: all 0.3s ease;
    margin: 0 10px;
}

.navbar a:hover {
    background-color: #ddd;
    color: black;
}

.navbar a.active {
    background-color: #4CAF50;
    color: white;
}

.content {
    padding: 20px;
}

.marquee {
    background-color: #03453b;
    color: white;
    padding: 10px 20px;
    font-size: 24px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    margin: 20px 0;
}

.marquee:hover {
    background-color: #023641;
}



</style>
</head>
<body>
<div class="navbar">
    <img src="./& SONS.gif" height="80" width="150" alt="Medx Logo">
    <div>
        <a href="index.jsp">HOME</a>
        <a href="adminlogin.jsp">ADMIN</a>
        <a href="doctorlogin.jsp">DOCTOR</a>
        <a href="patientlogin.jsp">PATIENT</a>
        <a href="aboutus.jsp">ABOUT US</a>
        <a href="contactus.jsp">CONTACT US</a>
    </div>
</div>

<div class="content">
    <div class="marquee">Welcome to MedxTotalCare</div>

    <img src="./background.jpg" height="800" width="1800" alt="Background Image">
    <p>
        <h1>Our healthcare professionals are dedicated to providing the best possible care for patients,
        and are supported by well-equipped Laboratory and complete radiology and imaging services provided at Medx.</h1>
        <h2>Pharmacy</h2>
        <h3>Welcome to MedxTotalCare Pharmacy-Your trusted source for quality Medications and Expert Pharmacy Services!!!!!!!</h3>
        <h2>Optical</h2>
        <h3>Welcome to our In-Clinic Optical Shop-Enhancing your Vision, Inside and Out!!!!</h3>
        <h2>Patient Pick-Up and Drop</h2>
        <h3>Patient Pick-Up and Drop Services-Convenient Healthcare at your Doorstep.</h3>
        <h2>Doctors Home Visit</h2>
        <h3>Special Services: Doctor’s Visit at the Comfort of Your Home</h3>
        <h2>Pre-medical Check up</h2>
        <h3>Are you a company that values the health and well-being of your employees??? Look no further!!!!</h3>
        <h2>Insurance</h2>
        <h3>Insurance Services at Medx Medical Care: Safeguarding your health and peace of mind.</h3>
        <h2>Home Sample Collection</h2>
        <h3>Home Sample Collection-Bringing Convenience to your Doorstep.</h3>
        <h2>Medication Refill</h2>
        <h3>The MedxTotalCare medical representative will take the required refill to their doorstep at any moment.</h3>
    </p>
</div>

</body>
</html>
