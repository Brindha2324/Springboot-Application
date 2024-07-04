<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
 
<head>
    <title>Registration for Free</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .registration-form {
            max-width: 400px;
            margin: 0 auto;
        }
 
        .registration-form h2 {
            text-align: center;
        }
    </style>
</head>
 
<body>
    <div class="container">
        <div class="registration-form mt-5">
            <h2>Registration for Free</h2>
            <form id="registration-form" action="RegisterServlet" method="post">
                <!-- Login Id (Auto-generated) -->
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="name" class="form-control">
                </div>
                <!-- Password -->
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" class="form-control" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$" title="Password must contain at least one number, one lowercase and one uppercase letter, and at least 8 characters" required>
                </div>
                <!-- First Name -->
                <div class="form-group">
                    <label for="firstName">First Name:</label>
                    <input type="text" id="firstName" name="firstName" class="form-control" required>
                </div>
                <!-- Last Name -->
                <div class="form-group">
                    <label for="lastName">Last Name:</label>
                    <input type="text" id="lastName" name="lastName" class="form-control" required>
                </div>
                <!-- Age -->
                <div class="form-group">
                    <label for="age">Age:</label>
                    <input type="number" id="age" name="age" class="form-control" required>
                </div>
                <!-- Gender (Radio Buttons) -->
                <div class="form-group">
                    <label>Gender:</label>
                    <div class="form-check">
                        <input type="radio" id="male" name="gender" value="Male" class="form-check-input" required>
                        <label for="male" class="form-check-label">Male</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" id="female" name="gender" value="Female" class="form-check-input" required>
                        <label for="female" class="form-check-label">Female</label>
                    </div>
                </div>
                <!-- Contact Number -->
                <div class="form-group">
                    <label for="contactNumber">Contact Number:</label>
                    <input type="tel" id="contactNumber" name="contactNumber" class="form-control" required>
                </div>
                <!-- Email -->
                <div class="form-group">
                    <label for="email">E-mail:</label>
                    <input type="email" id="email" name="email" class="form-control" required>
                </div>
                <!-- Address -->
                <div class="form-group">
                    <label for="address">Address:</label>
                    <textarea id="address" name="address" class="form-control" rows="4" required></textarea>
                </div>
                <!-- Zip Code (Pre-populated) -->
                <div class="form-group">
                    <label for="city">City:</label>
                    <select id="city" name="city" class="form-control" required>
                        <option value="">Select City</option>
                        <option value="Mumbai">Mumbai</option>
                        <option value="Delhi">Delhi</option>
                        <option value="Bangalore">Bangalore</option>
                        <!-- Add more cities here -->
                    </select>
                </div>
 
                <!-- Zip Code (Dropdown for Zip Codes based on selected city) -->
                <div class="form-group">
                    <label for="zipCode">Zip Code:</label>
                    <select id="zipCode" name="zipCode" class="form-control" required>
                        <option value="">Select City First</option>
                        <option value="400001">400001</option>
                        <option value="123443">123443</option>
                    </select>
                </div>
                <!-- Rest of the form fields (same as previous example) -->
                <!-- Register and Reset Buttons -->
                <div class="form-group">
                    <input type="submit" value="Register" class="btn btn-primary">
                    <input type="reset" value="Reset" class="btn btn-secondary">
                </div>
            </form>
        </div>
    </div>
 </body>
 
</html>