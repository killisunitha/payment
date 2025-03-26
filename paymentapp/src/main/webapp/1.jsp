<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bank Accounts - Payment App</title>
    <!-- (Optional) Font Awesome for icons -->
    <link rel="stylesheet" 
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" 
          integrity="sha512-..." 
          crossorigin="anonymous" 
          referrerpolicy="no-referrer" />
    <style>
        /* Global Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        /* Body Background */
        body {
            background: linear-gradient(135deg, #0d0d0d, #290a37);
            color: white;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        /* Top Navigation Bar */
        header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(8px);
            padding: 0 20px;
            height: 60px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.4);
        }
        header .logo {
            font-size: 22px;
            font-weight: bold;
            color: #a855f7; /* Neon Purple */
        }
        header .user-section {
            display: flex;
            align-items: center;
        }
        header .user-section i {
            margin-right: 8px;
        }
        header .user-section a {
            color: #f87171; /* Red for Logout link */
            text-decoration: none;
            margin-left: 15px;
        }
        header .user-section a:hover {
            text-decoration: underline;
        }

        /* Main Content Container */
        .main-content {
            flex: 1; /* Grow to fill remaining vertical space */
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: flex-start; /* Align items from the top */
        }

        /* Glassmorphic Card Container */
        .card {
            background: rgba(255, 255, 255, 0.08);
            padding: 20px;
            border-radius: 15px;
            backdrop-filter: blur(12px);
            box-shadow: 0px 10px 30px rgba(128, 0, 128, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.15);
            width: 80%;
            max-width: 1000px; /* Adjust to limit max width */
            margin: 0 auto;    /* Center the card horizontally */
        }

        .card h2 {
            color: #a855f7; /* Purple Neon */
            margin-bottom: 15px;
            font-size: 22px;
        }
        .card p {
            font-size: 14px;
            color: rgba(255, 255, 255, 0.9);
        }

        /* Bank Accounts Container (Horizontal Row) */
        .bank-accounts-container {
            display: flex;
            gap: 20px;
            flex-wrap: nowrap;      /* Single row; change to 'wrap' if you want multiple lines */
            overflow-x: auto;       /* Horizontal scroll if boxes exceed container width */
            margin-top: 10px;
        }

        .bank-box {
            border: 2px solid purple;
            padding: 20px;
            width: 160px;
            border-radius: 5px;
            text-align: left;
            color: #fff;
            flex-shrink: 0;        /* Prevent shrinking */
        }
        .bank-box p {
            margin: 5px 0;
            color: white;
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
            flex-shrink: 0; /* Prevent shrinking */
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

        /* Footer */
        footer {
            text-align: center;
            padding: 10px;
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(8px);
        }
        footer p {
            font-size: 13px;
            color: rgba(255, 255, 255, 0.7);
        }
    </style>
</head>
<body>
    <!-- Top Navigation Bar -->
    <header>
        <div class="logo">
            <!-- Font Awesome icon (if you want a bank icon, for example) -->
            <!-- <i class="fa-solid fa-building-columns"></i> -->
            PaymentApp
        </div>
        <div class="user-section">
            <i class="fa-solid fa-user-circle"></i> John Doe
            <a href="logout.jsp">Logout</a>
        </div>
    </header>

    <!-- Main Content Area -->
    <div class="main-content">
        <div class="card">
            <h2>
                <!-- If using Font Awesome, uncomment:
                <i class="fa-solid fa-building-columns"></i>
                -->
                Bank Accounts
            </h2>
            <p>Manage your linked bank accounts below.</p>
            
            <!-- Horizontal Bank Accounts Row -->
            <div class="bank-accounts-container">
                <!-- Example Bank Box 1 -->
                <div class="bank-box">
                    <p>BANK NAME</p>
                    <p>Bank Acct No: 1234</p>
                    <p>Balance: $1,000</p>
                    <p>IFSC Code: XXXX0001</p>
                    <p>Branch: ABC</p>
                    <a href="#" class="edit-link">Edit</a>
                </div>

                <!-- Example Bank Box 2 -->
                <div class="bank-box">
                    <p>BANK NAME</p>
                    <p>Bank Acct No: 5678</p>
                    <p>Balance: $2,500</p>
                    <p>IFSC Code: XXXX0002</p>
                    <p>Branch: DEF</p>
                    <a href="#" class="edit-link">Edit</a>
                </div>

                <!-- Example Bank Box 3 -->
                <div class="bank-box">
                    <p>BANK NAME</p>
                    <p>Bank Acct No: 9012</p>
                    <p>Balance: $5,000</p>
                    <p>IFSC Code: XXXX0003</p>
                    <p>Branch: GHI</p>
                    <a href="#" class="edit-link">Edit</a>
                </div>

                <!-- Add Bank Account Box -->
                <div class="add-box">
                    <a href="addAccount.jsp">[+]</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer (Optional) -->
    <footer>
        <p>© 2025 PaymentApp | Secure & Reliable Banking Solutions</p>
    </footer>
</body>
</html>
