<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.vybhav.mypaymentspringapp.model.UserProfileModel" %>
<%
    UserProfileModel user = (UserProfileModel)request.getAttribute("userProfile");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment App Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8fafc;
            font-family: 'Segoe UI', sans-serif;
            color: #333;
            transition: background 0.3s, color 0.3s;
        }

        .dark-mode {
            background-color: #121212;
            color: #e0e0e0;
        }

        .app-header {
            background: linear-gradient(90deg, #6c63ff, #44c9de);
            color: white;
            padding: 24px 30px;
            border-radius: 16px;
            box-shadow: 0 8px 20px rgba(108, 99, 255, 0.2);
        }

        .logout-btn, .theme-toggle {
            border-radius: 8px;
            font-weight: 500;
        }

        .logout-btn {
            background-color: #ef476f;
            color: white;
            border: none;
        }

        .theme-toggle {
            background-color: #333333;
            color: white;
            border: none;
        }

        .section {
            background-color: #ffffff;
            border-radius: 18px;
            padding: 25px 30px;
            margin-top: 30px;
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.04);
        }

        .dark-mode .section {
            background-color: #1e1e1e;
            box-shadow: 0 4px 12px rgba(255, 255, 255, 0.05);
        }

        .section h4 {
            font-weight: 700;
            color: #6c63ff;
        }

        .card {
            border: none;
            border-radius: 14px;
            background: #eef4ff;
            transition: transform 0.2s ease;
        }

        .card:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 12px rgba(108, 99, 255, 0.1);
        }

        .dark-mode .card {
            background-color: #2a2a2a;
        }

        .btn-primary {
            background: linear-gradient(90deg, #6c63ff, #44c9de);
            border: none;
            font-weight: 600;
            border-radius: 8px;
        }

        .btn-outline-primary {
            border-color: #6c63ff;
            color: #6c63ff;
            font-weight: 500;
        }

        .btn-success {
            background-color: #06d6a0;
            font-weight: 600;
            border-radius: 8px;
        }

        .list-group-item {
            background-color: #f4f7ff;
            margin-bottom: 8px;
            border-radius: 8px;
        }

        .dark-mode .list-group-item {
            background-color: #252525;
        }
    </style>
</head>
<body>

<div class="container-fluid p-4" id="main-container">
    <!-- Header -->
    <div class="row app-header align-items-center mb-4">
        <div class="col-md-8 text-center text-md-start">
            <h2 class="m-0">💸 Payment App Dashboard</h2>
        </div>
        <div class="col-md-4 text-end d-flex justify-content-end gap-2 mt-3 mt-md-0">
            <button onclick="toggleTheme()" class="btn theme-toggle">🌗 Toggle Theme</button>
            <form action="/logout">
                <button class="btn logout-btn">Logout</button>
            </form>
        </div>
    </div>

    <!-- Profile Section -->
    <div class="row section">
        <div class="col-12">
            <h4>👤 Profile Information</h4>
            <p><strong>First Name:</strong> <%=user.getFirstName()%></p>
            <p><strong>Last Name:</strong> <%=user.getLastName()%></p>
            <p><strong>Phone Number:</strong> <%=user.getPhoneNumber()%></p>
            <p><strong>Email:</strong> <%=user.getEmail()%></p>
            <p><strong>Address:</strong> <%=user.getAddress()%></p>
        </div>
    </div>

    <!-- Primary Bank Account -->
    <div class="row section">
        <div class="col-12">
            <div class="d-flex justify-content-between align-items-center mb-3">
                <h4>🏦 Primary Bank Account</h4>
                <a href="/sendmoney" class="btn btn-primary">Send Money</a>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <p><i class="bi bi-bank2 me-2"></i><strong>Bank Name:</strong> XYZ Bank</p>
                    <p><strong>Account No:</strong> 1234</p>
                    <p><strong>Balance:</strong> ₹25,000</p>
                </div>
                <div class="col-md-6">
                    <p><i class="bi bi-credit-card-2-front me-2"></i><strong>IFSC:</strong> XYZ000123</p>
                    <p><strong>Branch:</strong> Main Branch</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Linked Bank Accounts -->
    <div class="row section">
        <div class="col-12 mb-3">
            <h4>🏦 Linked Bank Accounts</h4>
        </div>
        <div class="col-md-3 col-sm-6 mb-3">
            <div class="card p-3 text-center">
                <i class="bi bi-bank fs-3 text-primary mb-2"></i>
                <p><strong>SBI</strong></p>
                <p>Acct: 4567</p>
                <p>Balance: ₹5,000</p>
            </div>
        </div>
        <div class="col-md-3 col-sm-6 mb-3">
            <div class="card p-3 text-center">
                <i class="bi bi-bank fs-3 text-primary mb-2"></i>
                <p><strong>HDFC</strong></p>
                <p>Acct: 6789</p>
                <p>Balance: ₹10,000</p>
            </div>
        </div>
        <div class="col-md-3 col-sm-6 mb-3">
            <div class="card p-3 text-center">
                <i class="bi bi-bank fs-3 text-primary mb-2"></i>
                <p><strong>ICICI</strong></p>
                <p>Acct: 9876</p>
                <p>Balance: ₹15,000</p>
            </div>
        </div>
        <div class="col-md-3 col-sm-6 mb-3 d-flex align-items-center justify-content-center">
            <a href="/addbankaccount" class="btn btn-success w-100">+ Add Account</a>
        </div>
    </div>

    <!-- Recent Transactions -->
    <div class="row section">
        <div class="col-12 d-flex justify-content-between align-items-center">
            <h4>🧾 Recent Transactions</h4>
            <a href="/detailedstatementpage" class="btn btn-outline-primary">Detailed Statement</a>
        </div>
        <div class="col-12 mt-3">
            <ul class="list-group">
                <li class="list-group-item">💳 Paid ₹500 to Amazon - 01 Apr</li>
                <li class="list-group-item">📥 Received ₹1200 from Rahul - 30 Mar</li>
                <li class="list-group-item">💳 Paid ₹300 to Flipkart - 28 Mar</li>
            </ul>
        </div>
    </div>
</div>

<script>
    function toggleTheme() {
        document.body.classList.toggle("dark-mode");
        document.getElementById('main-container').classList.toggle("dark-mode");
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
