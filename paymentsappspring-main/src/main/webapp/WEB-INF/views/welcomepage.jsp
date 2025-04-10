<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome to My Payment App</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #f0f4ff, #e8f0fe);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 90%;
            max-width: 450px;
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 10px;
            font-size: 2rem;
        }

        p {
            color: #555;
            margin-bottom: 30px;
        }

        .btn {
            display: inline-block;
            margin: 10px 8px;
            padding: 12px 30px;
            background-color: #0066ff;
            color: #ffffff;
            text-decoration: none;
            border-radius: 8px;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .btn:hover {
            background-color: #004bb5;
            transform: scale(1.05);
        }

        @media screen and (max-width: 500px) {
            h1 {
                font-size: 1.5rem;
            }

            .btn {
                padding: 10px 20px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to My Payment App</h1>
        <p>Your secure and fast payment solution.</p>
        <a href="/login" class="btn">Login</a>
        <a href="/register" class="btn">Register</a>
    </div>
</body>
</html>
