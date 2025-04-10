<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Send Money</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #dff6ff, #fdfbfb);
            font-family: 'Segoe UI', sans-serif;
        }

        .form-container {
            max-width: 600px;
            margin: 60px auto;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            border-top: 5px solid #ff4d4d;
        }

        .form-heading {
            font-size: 28px;
            font-weight: 700;
            text-align: center;
            color: #ff4d4d;
            margin-bottom: 30px;
        }

        label {
            font-weight: 600;
            color: #333;
        }

        .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.3);
        }

        .form-check-label {
            color: #555;
        }

        .btn-send {
            background-color: #ff4d4d;
            color: white;
            font-weight: bold;
            padding: 10px 30px;
            border: none;
            border-radius: 30px;
            transition: all 0.3s ease;
        }

        .btn-send:hover {
            background-color: #e60000;
        }

        .form-section {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="form-container">
        <div class="form-heading">Send Money</div>
        <form action="sendMoney" method="post">
            <div class="form-section">
                <label for="amount" class="form-label">Amount</label>
                <input type="number" id="amount" name="amount" class="form-control" placeholder="Enter amount" required>
            </div>

            <div class="form-section">
                <label for="fromAccount" class="form-label">From Account</label>
                <select id="fromAccount" name="fromAccount" class="form-select" required>
                    <option value="">Select Account</option>
                    <option value="1234">Bank A - 1234</option>
                    <option value="5678">Bank B - 5678</option>
                    <!-- You can dynamically populate this with server-side logic -->
                </select>
            </div>

            <div class="form-section">
                <label class="form-label">Transfer To</label>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="transferType" id="toAccount" value="account" checked>
                    <label class="form-check-label" for="toAccount">Account Number</label>
                </div>
                <input type="text" class="form-control mt-2" name="toAccountNumber" placeholder="Enter Account Number">

                <div class="form-check mt-3">
                    <input class="form-check-input" type="radio" name="transferType" id="toWallet" value="wallet">
                    <label class="form-check-label" for="toWallet">Wallet</label>
                </div>
                <input type="text" class="form-control mt-2" name="toWallet" placeholder="Enter Wallet ID">
            </div>

            <div class="text-center mt-4">
                <button type="submit" class="btn btn-send">SEND</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
