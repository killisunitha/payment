<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Register - Payment App</title>
    <style>
        /* Global Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        /* Background */
        body {
            background: linear-gradient(135deg, #0d0d0d, #290a37); /* Black to Dark Purple */
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
            padding: 20px;
        }

        /* Glassmorphic Container */
        .container {
            width: 400px;
            padding: 30px;
            border-radius: 15px;
            background: rgba(255, 255, 255, 0.08);
            backdrop-filter: blur(12px);
            box-shadow: 0px 10px 30px rgba(128, 0, 128, 0.3);
            transition: 0.3s;
            border: 1px solid rgba(255, 255, 255, 0.15);
        }

        .container:hover {
            box-shadow: 0px 10px 40px rgba(128, 0, 128, 0.5);
            transform: translateY(-5px);
        }

        /* Headings */
        h2 {
            color: #a855f7; /* Purple Neon */
            font-size: 23px;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        /* Links */
        a {
            display: block;
            color: #ffccff;
            font-size: 18px;
            margin: 15px 0;
            text-decoration: none;
            font-weight: bold;
            transition: 0.3s;
        }

        a:hover {
            color: #ff66ff;
            text-decoration: underline;
        }

        /* Animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(10px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .container {
            animation: fadeIn 0.8s ease-in-out;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Registration Page</h2>
        <a href="registration.jsp">-  Registration</a>
        <a href="welcome.jsp">- click here to login </a>
    </div>

</body>
</html>
