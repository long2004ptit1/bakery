<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Snow Pastry</title>
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

        .register-container {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 40px;
            width: 100%;
            max-width: 400px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .register-container h2 {
            color: #2e5c9a;
            margin-bottom: 20px;
        }

        .register-container form {
            display: flex;
            flex-direction: column;
            gap: 15px;
            font-size: 18px;
        }

        .register-container label {
            text-align: left;
            color: #333333;
            font-size: 16px;
        }

        .register-container input[type="text"],
        .register-container input[type="email"],
        .register-container input[type="password"],
        .register-container input[type="number"] {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
            outline: none;
            transition: border-color 0.3s;
        }

        .register-container input:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        .register-container .checkbox-container {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 14px;
        }

        .register-container button {
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

        .register-container button:hover {
            background-color: #f1c40f;
        }

        /* Popup message styling */
        .popup-message {
            display: none;
            background-color: #4CAF50;
            color: white;
            padding: 15px;
            border-radius: 5px;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            font-size: 16px;
            font-weight: bold;
            text-align: center;
            z-index: 10;
        }
    </style>
</head>
<body>
    <div class="register-container">
        <h2>Create Your Account</h2>

        <!-- Display success or failure messages -->
        <c:if test="${not empty succMsg}">
            <div class="popup-message" id="popupMessage">
                ${succMsg}
            </div>
            <script>
                // JavaScript to show popup and redirect
                window.onload = function() {
                    const popupMessage = document.getElementById('popupMessage');
                    if (popupMessage) {
                        popupMessage.style.display = 'block';
                        setTimeout(function() {
                            window.location.href = 'login.jsp';
                        }, 3000);
                    }
                };
            </script>
            <c:remove var="succMsg" scope="session"/>
        </c:if>
        
        <c:if test="${not empty failMsg}">
            <p class="error-message">${failMsg}</p>
            <c:remove var="failMsg" scope="session"/>
        </c:if>

        <!-- Registration Form -->
        <form action="register" method="post">
            <label for="name">Full Name*</label>
            <input type="text" id="name" name="name" placeholder="Enter your full name" required>

            <label for="email">Email*</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required>

            <label for="phno">Phone Number*</label>
            <input type="number" id="phno" name="phno" placeholder="Enter your phone number" required>

            <label for="password">Password*</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required>

            <div class="checkbox-container">
                <input type="checkbox" id="checkBox" name="checkBox" required>
                <label for="checkBox">I agree to the terms and conditions</label>
            </div>

            <button type="submit">Register</button>
        </form>
        
        <p><a href="login.jsp" style="color: #2e5c9a;">Already have an account? Login here</a></p>
    </div>
</body>
</html>
