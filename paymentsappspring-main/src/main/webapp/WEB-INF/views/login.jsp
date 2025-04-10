<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #e0f7fa, #fffde7);
            font-family: 'Segoe UI', sans-serif;
        }

        .login-card {
            max-width: 420px;
            margin: 80px auto;
            padding: 30px 25px;
            border-radius: 20px;
            background-color: #ffffff;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .login-title {
            text-align: center;
            font-weight: bold;
            font-size: 26px;
            color: #0077b6;
            margin-bottom: 25px;
        }

        .form-label {
            font-weight: 600;
            color: #37474f;
        }

        .form-control {
            border-radius: 10px;
        }

        .btn-login {
            background: linear-gradient(135deg, #0077b6, #00b4d8);
            border: none;
            color: white;
            font-weight: bold;
            border-radius: 10px;
            transition: background 0.3s ease;
        }

        .btn-login:hover {
            background: linear-gradient(135deg, #00b4d8, #0077b6);
        }

        .register-link {
            text-align: center;
            margin-top: 15px;
        }

        .error-message {
            color: #d9534f;
            text-align: center;
            font-weight: bold;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="login-card">
        <% String user = (String) request.getAttribute("error"); %>
        <% if (user != null) { %>
            <div class="error-message">Login Unsuccessful</div>
        <% } %>
        <div class="login-title">User Login</div>
        <form action="/login" method="post">
            <div class="mb-3">
                <label class="form-label">Username</label>
                <input type="text" name="userName" class="form-control" placeholder="Enter your username" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <input type="password" name="password" class="form-control" placeholder="Enter your password" required>
            </div>
            <button type="submit" class="btn btn-login w-100">Login</button>
        </form>
        <div class="register-link">
            <a href="/register">Don't have an account? <strong>Register</strong></a>
        </div>
    </div>
</div>

</body>
</html>
