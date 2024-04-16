<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Health Parameter Form</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    
    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 400px;
    }
    
    h2 {
        text-align: center;
        margin-bottom: 20px;
    }
    
    label {
        display: block;
        margin-bottom: 10px;
    }
    
    input[type="number"], select {
        width: calc(50% - 12px);
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    
    input[type="submit"] {
        width: 100%;
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
    }
    
    input[type="submit"]:hover {
        background-color: #45a049;
    }
    
    .error-message {
        color: red;
        margin-top: 10px;
    }
</style>
</head>
<body>
    <form action="parameterfilling" method="post">
        <h2>Health Parameter Form</h2>
        
        <label for="age">Age:</label>
        <input type="number" id="age" name="age" required>
        
        <label for="gender">Gender:</label>
        <select id="gender" name="gender" required>
            <option value="male">Male</option>
            <option value="female">Female</option>
        </select>
        
        <label for="bmi">BMI:</label>
        <input type="number" id="bmi" name="bmi" required>
        
        <label for="systolic_bp">Blood Pressure (Systolic):</label>
        <input type="number" id="systolic_bp" name="systolic_bp" required>
        
        <label for="diastolic_bp">Blood Pressure (Diastolic):</label>
        <input type="number" id="diastolic_bp" name="diastolic_bp" required>
        
        <input type="submit" value="Submit">
        
        <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
        <% if (errorMessage != null) { %>
            <p class="error-message"><%= errorMessage %></p>
        <% } %>
    </form>
</body>
</html>
