<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.vybhav.mypaymentspringapp.model.UserRegistrationModel" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit User Profile</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #e3f2fd, #fce4ec);
            margin: 0;
            padding: 40px 20px;
        }

        .form-container {
            background-color: #ffffff;
            max-width: 600px;
            margin: auto;
            padding: 35px 30px;
            border-radius: 16px;
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.08);
            border: 1px solid #dfe3ee;
        }

        .form-container h2 {
            text-align: center;
            color: #1a237e;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: 600;
            color: #333;
        }

        input[type=text],
        input[type=email],
        input[type=tel],
        input[type=password] {
            width: 100%;
            padding: 12px 14px;
            margin-bottom: 18px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 15px;
            transition: border-color 0.3s ease;
        }

        input[type=text]:focus,
        input[type=email]:focus,
        input[type=tel]:focus,
        input[type=password]:focus {
            border-color: #1e88e5;
            outline: none;
        }

        input[type=submit] {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            background: linear-gradient(90deg, #1e88e5, #42a5f5);
            color: white;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-weight: bold;
            transition: background 0.3s ease;
        }

        input[type=submit]:hover {
            background: linear-gradient(90deg, #1565c0, #1e88e5);
        }

        @media (max-width: 600px) {
            .form-container {
                padding: 25px 20px;
            }
        }
    </style>
</head>
<body>
<% 
    UserRegistrationModel user = (UserRegistrationModel)request.getAttribute("userEditProfile");
    if (user != null) {
%>
    <div class="form-container">
        <h2>Edit Profile</h2>
        <form action="/editprofilepage" method="POST">
            <label for="firstName">First Name</label>
            <input type="text" name="firstName" value="<%= user.getFirstName() %>" required>

            <label for="lastName">Last Name</label>
            <input type="text" name="lastName" value="<%= user.getLastName() %>" required>

            <label for="phoneNumber">Phone Number</label>
            <input type="tel" name="phoneNumber" value="<%= user.getPhoneNumber() %>" required>

            <label for="email">Email</label>
            <input type="email" name="email" value="<%= user.getEmail() %>" required>

            <label for="address">Address</label>
            <input type="text" name="address" value="<%= user.getAddress() %>" required>

            <label for="userName">User Name</label>
            <input type="text" name="userName" value="<%= user.getUserName() %>" required>

            <label for="password">Password</label>
            <input type="password" name="password" value="<%= user.getPassword() %>" required>

            <input type="submit" value="Update">
        </form>
    </div>
<% } %>
</body>
</html>
