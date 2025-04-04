<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bank Accounts</title>
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-..." crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        /* Global Styles */
        * {
            margin: 20;
            padding: 20;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        
        /* Background */
        body {
            background: linear-gradient(135deg, #0d0d0d, #290a37);
            color: white;
            height: 100vh;
            display: flex;
            flex-direction: column; /* Stack h2 and container vertically */
            justify-content: center;
            align-items: center;
        }
        
        /* Heading */
        h2 {
            color: #a855f7;
            margin-bottom: 100px; /* Reduced spacing */
            font-size: 24px;
            text-align: center;
        }
        
        /* Bank Accounts Container */
        .bank-accounts-container {
            display: flex; /* Align items in a row */
            gap: 20px; /* Kept gap for spacing */
            flex-wrap: nowrap; /* Keep in a single row */
            justify-content: center; /* Center the row */
            max-width: 95%; /* Wide across the page */
            width: 100%;
        }
        
        /* Bank Box */
        .bank-box {
            border: 2px solid purple;
            padding: 15px; /* Reduced padding for shorter height */
            width: 220px; /* Increased width */
            border-radius: 5px;
            text-align: left;
            color: #fff;
        }
        
        .bank-box p {
            color: white;
            margin: 3px 0; /* Reduced margin for compactness */
            font-size: 14px;
        }
        
        .edit-link {
            color: green;
            text-decoration: none;
            font-weight: bold;
            font-size: 14px;
        }
        
        .edit-link:hover {
            text-decoration: underline;
        }
        
        /* Add Bank Box */
        .add-box {
            width: 140px; /* Increased width */
            height: 100px; /* Reduced height */
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        .add-box a {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 60px;
            height: 60px;
            background: #66bb6a; /* Light green */
            color: white; /* White + symbol */
            font-size: 30px;
            font-weight: bold;
            text-decoration: none;
            border-radius: 50%; /* Circular shape */
            transition: background 0.3s;
        }
        
        .add-box a:hover {
            background: #4caf50; /* Darker green on hover */
        }
    </style>
</head>
<body>
    <h2><i class="fa-solid fa-building-columns"></i> Bank Accounts</h2>
    <div class="bank-accounts-container">
        <!-- Example Bank Box 1 -->
        <div class="bank-box">
            <p>BANK NAME</p>
            <p>Bank Acct No: 1234</p>
            <p>Balance:</p>
            <p>IFSC Code:</p>
            <p>Branch:</p>
            <a href="#" class="edit-link">Edit</a>
        </div>
        <!-- Example Bank Box 2 -->
        <div class="bank-box">
            <p>BANK NAME</p>
            <p>Bank Acct No: 5678</p>
            <p>Balance:</p>
            <p>IFSC Code:</p>
            <p>Branch:</p>
            <a href="#" class="edit-link">Edit</a>
        </div>
        <!-- Example Bank Box 3 -->
        <div class="bank-box">
            <p>BANK NAME</p>
            <p>Bank Acct No: 9012</p>
            <p>Balance:</p>
            <p>IFSC Code:</p>
            <p>Branch:</p>
            <a href="#" class="edit-link">Edit</a>
        </div>
        <!-- Add Bank Account Box -->
        <div class="add-box">
            <a href="addAccount.jsp">+</a>
        </div>
    </div>
</body>
</html>