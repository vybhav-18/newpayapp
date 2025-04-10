<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Statement Request</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #e8f0ff, #f0f5ff);
            font-family: 'Segoe UI', sans-serif;
        }

        .form-heading {
            text-align: center;
            font-size: 26px;
            font-weight: 600;
            color: #4b0082;
            background-color: #f2e9ff;
            border: 1px solid #c8b6ff;
            padding: 15px 20px;
            border-radius: 12px;
            margin: 40px auto 30px;
            max-width: 600px;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.05);
        }

        .form-box {
            background-color: #ffffff;
            padding: 35px;
            border-radius: 18px;
            box-shadow: 0 12px 28px rgba(0, 0, 0, 0.08);
            border: 1px solid #cfd8ff;
            max-width: 720px;
            margin: auto;
        }

        label {
            font-weight: 500;
            color: #4b0082;
        }

        .form-check-label {
            color: #4b0082;
            font-weight: 500;
        }

        .form-check-input:checked {
            background-color: #6a5acd;
            border-color: #6a5acd;
        }

        .btn-generate {
            background-color: #6a5acd;
            color: white;
            font-weight: 600;
            border: none;
            border-radius: 25px;
            padding: 10px 30px;
            box-shadow: 0 4px 10px rgba(106, 90, 205, 0.3);
            transition: all 0.3s ease;
        }

        .btn-generate:hover {
            background-color: #5a4bb7;
        }

        @media (max-width: 576px) {
            .form-check {
                display: block;
                margin-bottom: 10px;
            }

            .form-check-inline {
                display: block;
            }
        }
    </style>
</head>
<body>

<div class="form-heading">📄 Statement Request Page</div>

<div class="form-box">
    <form action="/detailedstatementpage" method="post">
        <div class="row mb-4">
            <div class="col-md-6 col-sm-12 mb-3">
                <label for="startDate">Start Date:</label>
                <input type="date" class="form-control" id="startDate" name="startDate" required>
            </div>
            <div class="col-md-6 col-sm-12">
                <label for="endDate">End Date:</label>
                <input type="date" class="form-control" id="endDate" name="endDate" required>
            </div>
        </div>

        <div class="row mb-4">
            <div class="col-12">
                <div class="d-flex flex-wrap gap-3">
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" id="all" name="txnType" value="ALL">
                        <label class="form-check-label" for="all">ALL</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" id="credit" name="txnType" value="CREDIT">
                        <label class="form-check-label" for="credit">Credit Txns</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" id="debit" name="txnType" value="DEBIT">
                        <label class="form-check-label" for="debit">Debit Txns</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" id="wallet" name="txnType" value="WALLET">
                        <label class="form-check-label" for="wallet">Wallet Txns</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" id="bank" name="txnType" value="BANK">
                        <label class="form-check-label" for="bank">Bank Txns</label>
                    </div>
                </div>
            </div>
        </div>

        <div class="text-center">
            <button type="submit" class="btn btn-generate">GENERATE</button>
        </div>
    </form>
</div>

</body>
</html>
