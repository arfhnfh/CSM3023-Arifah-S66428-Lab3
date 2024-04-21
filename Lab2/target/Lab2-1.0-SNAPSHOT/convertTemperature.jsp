<%-- 
    Document   : convertTemperature
    Created on : 20 Apr 2024, 12:26:28 am
    Author     : Arifah S66428
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Convert Temperature</title>
</head>
<body>
    <h1>Temperature Converter</h1>
    
    <form method="post">
        <label for="temperature">Enter Temperature:</label>
        <input type="number" id="temperature" name="temperature" required>
        <select name="unit">
            <option value="celsius">Celsius (°C)</option>
            <option value="fahrenheit">Fahrenheit (°F)</option>
        </select>
        <button type="submit">Convert</button>
    </form>
    
    <%
        if (request.getMethod().equalsIgnoreCase("POST")) {
            double temp = Double.parseDouble(request.getParameter("temperature"));
            String unit = request.getParameter("unit");
            double convertedTemp = 0;
            String convertedUnit = "";
            
            if (unit.equals("celsius")) {
                convertedTemp = (temp * 9 / 5) + 32;
                convertedUnit = "Fahrenheit";
            } else if (unit.equals("fahrenheit")) {
                convertedTemp = (temp - 32) * 5 / 9;
                convertedUnit = "Celsius";
            }
    %>
            <h2>Conversion Result:</h2>
            <p><%= temp %> <%= unit.toUpperCase() %> is equivalent to <%= convertedTemp %> <%= convertedUnit %>.</p>
    <%
        }
    %>
</body>
</html>

