<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            height: 100vh;
            background: linear-gradient(135deg, #6f86d6, #48c6ef);
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            font-family: 'Segoe UI', sans-serif;
        }
        .welcome-box {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 16px;
            text-align: center;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.2);
        }
        .welcome-box h1 {
            font-size: 36px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="welcome-box">
        <h1>Welcome to My World!</h1>
    </div>
</body>
</html>
