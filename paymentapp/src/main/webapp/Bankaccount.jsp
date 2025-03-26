<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        /* Global Styles */
        * {
            margin: 50;
            padding: 50;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        
        /* Background */
        body {
            background: linear-gradient(135deg, #0d0d0d, #290a37);
            color: white;
            overflow: hidden;
        }
        
        header h2 {
            font-size: 24px;
            color: #a855f7; /* Purple Neon */
        }
         .bank-box {
            border: 2px solid purple;
            padding: 20px;
            width: 160px;
            border-radius: 5px;
            text-align: left;
            color: #fff;
        }
        
        .bank-box p {
            color: white;
            margin: 5px 0;
        }
        
        .edit-link {
            color: green;
            text-decoration: none;
            font-weight: bold;
        }
        
        .edit-link:hover {
            text-decoration: underline;
        }
        
        /* Add Bank Box */
        .add-box {
            border: 2px solid green;
            width: 100px;
            height: 100px;
            border-radius: 5px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        .add-box a {
            color: green;
            font-size: 25px;
            font-weight: bold;
            text-decoration: none;
        }
        
        .add-box a:hover {
            text-decoration: underline;
        }
        .card {
            background: rgba(255, 255, 255, 0.08);
            padding: 20px;
            border-radius: 15px;
            backdrop-filter: blur(12px);
            box-shadow: 0px 10px 30px rgba(128, 0, 128, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.15);
            margin-bottom: 20px;
        }
        
        .card h2 {
            color: #a855f7;
            margin-bottom: 10px;
            font-size: 20px;
        }
        
        .card p {
            font-size: 14px;
            color: rgba(255, 255, 255, 0.9);
        }
        </style>
        </head>
        <body>
        
 <div class="card">
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
                        <a href="addAccount.jsp">[+]</a>
                    </div>
                </div>
            </div>
</body>
</html>