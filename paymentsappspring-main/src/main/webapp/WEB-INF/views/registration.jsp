<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #f0f4ff, #dfe9f3);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: 'Segoe UI', sans-serif;
        }

        .register-box {
            background: #ffffff;
            padding: 30px;
            border-radius: 16px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 450px;
        }

        .register-box h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #0047ab;
            font-weight: bold;
        }

        label {
            font-weight: 500;
            margin-bottom: 5px;
            color: #333;
        }

        .form-control {
            border-radius: 8px;
            padding: 10px;
        }

        .btn-register {
            background-color: #0047ab;
            color: #fff;
            padding: 10px;
            font-weight: 600;
            border: none;
            border-radius: 25px;
            transition: background 0.3s ease;
        }

        .btn-register:hover {
            background-color: #003380;
        }

        .login-link {
            margin-top: 15px;
            text-align: center;
        }

        .login-link a {
            color: #0047ab;
            text-decoration: none;
        }

        .login-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="register-box">
    <h2>Create Account</h2>
    <form action="/register" method="POST">
        <div class="mb-3">
            <label for="firstName">First Name</label>
            <input type="text" id="firstName" name="firstName" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="lastName">Last Name</label>
            <input type="text" id="lastName" name="lastName" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="phone">Phone Number</label>
            <input type="tel" id="phone" name="phoneNumber" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="address">Address</label>
            <input type="text" id="address" name="address" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="userName">User Name</label>
            <input type="text" id="userName" name="userName" class="form-control" required>
        </div>
        <div class="mb-4">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" class="form-control" required>
        </div>
        <button type="submit" class="btn btn
