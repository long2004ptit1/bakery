<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Snow Pastry</title>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;500;600&display=swap");

        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f5f5f5;
        }

        .login-container {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 40px;
            width: 100%;
            max-width: 400px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .login-container h2 {
            color: #2e5c9a;
            margin-bottom: 20px;
        }

        .login-container form {
            display: flex;
            flex-direction: column;
            gap: 15px;
            font-size: 18px;
        }

        .login-container label {
            text-align: left;
            color: #333333;
            font-size: 16px;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
            outline: none;
            transition: border-color 0.3s;
        }

        .login-container input:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        .login-container button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            transition: background-color 0.2s ease;
        }

        .login-container button:hover {
            background-color: #f1c40f;
        }

        .login-container .error-message {
            color: red;
            font-weight: bold;
        }

        .login-container .links {
            margin-top: 15px;
            font-size: 14px;
        }

        .login-container .links a {
            color: #2e5c9a;
            text-decoration: none;
        }

        .login-container .links a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login to Your Account</h2>

        <!-- Display error message if login fails -->
        <c:if test="${not empty failMsg}">
            <div class="error-message">${failMsg}</div>
            <c:remove var="failMsg" scope="session"/>
        </c:if>

        <!-- Login Form -->
        <form action="login" method="post">
            <label for="email">Email</label>
            <input type="text" id="email" name="email" placeholder="Enter your email" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required>

            <button type="submit">Login</button>
        </form>

        <!-- Links to register and forgot password -->
        <div class="links">
            <p>Don't have an account? <a href="register.jsp">Register here</a></p>
            <p><a href="forgot-password.jsp">Forgot Password?</a></p>
        </div>
    </div>
</body>
</html>
<% 
    String failMessage = (String) session.getAttribute("failMsg"); 
    System.out.println("Fail Message: " + failMessage); 
%>
