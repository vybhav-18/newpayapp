<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Bank Account</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #f8fafc, #e2e8f0);
            font-family: 'Segoe UI', sans-serif;
        }

        .container {
            max-width: 720px;
            margin-top: 60px;
        }

        .form-box {
            background-color: #ffffff;
            padding: 40px 35px;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.07);
            border: 1px solid #d1d5db;
        }

        .form-heading {
            text-align: center;
            color: #6366f1; /* Indigo */
            font-weight: 700;
            font-size: 30px;
            margin-bottom: 35px;
        }

        .form-label {
            font-weight: 600;
            color: #1f2937; /* Slate */
        }

        .form-control,
        .form-select {
            border-radius: 8px;
            border: 1px solid #cbd5e1;
        }

        .form-control:focus,
        .form-select:focus {
            border-color: #6366f1;
            box-shadow: 0 0 0 0.2rem rgba(99, 102, 241, 0.25);
        }

        .btn-custom {
            background: linear-gradient(to right, #6366f1, #7c3aed);
            border: none;
            font-weight: 600;
            padding: 10px 25px;
            color: #fff;
            border-radius: 10px;
            transition: all 0.3s ease;
        }

        .btn-custom:hover {
            background: linear-gradient(to right, #4f46e5, #6d28d9);
        }

        @media (min-width: 768px) {
            .row-cols-1.row-cols-md-2 .col {
                padding-right: 15px;
                padding-left: 15px;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <div class="form-box">
        <div class="form-heading">Add Bank Account</div>
        <form action="/addbankaccount" method="post">
            <div class="row row-cols-1 row-cols-md-2 g-3">
                <div class="col">
                    <label for="bankName" class="form-label">Bank Name</label>
                    <input type="text" class="form-control" id="bankName" name="bankName" required>
                </div>
                <div class="col">
                    <label for="accountNumber" class="form-label">Account Number</label>
                    <input type="text" pattern="\d{9,18}" class="form-control" id="accountNumber" name="accountNumber" required>
                </div>
                <div class="col">
                    <label for="accountType" class="form-label">Account Type</label>
                    <select class="form-select" id="accountType" name="accountType" required>
                        <option value="" selected disabled>Select Type</option>
                        <option value="Savings">Savings</option>
                        <option value="Current">Current</option>
                        <option value="Fixed Deposit">Fixed Deposit</option>
                    </select>
                </div>
                <div class="col">
                    <label for="ifscCode" class="form-label">IFSC Code</label>
                    <input type="text" pattern="^[A-Z]{4}0[A-Z0-9]{6}$" class="form-control" id="ifscCode" name="ifscCode" required>
                </div>
                <div class="col">
                    <label for="balance" class="form-label">Current Balance</label>
                    <input type="number" step="0.01" class="form-control" id="balance" name="balance" required>
                </div>
                <div class="col">
                    <label for="pin" class="form-label">PIN</label>
                    <input type="password" maxlength="4" pattern="\d{4}" class="form-control" id="pin" name="pin" required>
                </div>
            </div>
            <div class="text-center mt-4">
                <button type="submit" class="btn btn-custom">Add Account</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
