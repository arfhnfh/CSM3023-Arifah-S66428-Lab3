<%-- 
    Document   : rectangleArea
    Created on : 20 Apr 2024, 12:30:00 am
    Author     : Arifah S66428
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Rectangle Area Comparison</title>
</head>
<body>
    <h1>Rectangle Area Comparison</h1>
    
    <form method="post">
        <label for="length1">Rectangle 1 Length:</label>
        <input type="number" id="length1" name="length1" step="0.01" required>
        <label for="width1">Width:</label>
        <input type="number" id="width1" name="width1" step="0.01" required><br>
        
        <label for="length2">Rectangle 2 Length:</label>
        <input type="number" id="length2" name="length2" step="0.01" required>
        <label for="width2">Width:</label>
        <input type="number" id="width2" name="width2" step="0.01" required><br>
        
        <button type="submit">Compare Areas</button>
    </form>
    
    <%
        if (request.getMethod().equalsIgnoreCase("POST")) {
            double length1 = Double.parseDouble(request.getParameter("length1"));
            double width1 = Double.parseDouble(request.getParameter("width1"));
            double length2 = Double.parseDouble(request.getParameter("length2"));
            double width2 = Double.parseDouble(request.getParameter("width2"));
            
            double area1 = length1 * width1;
            double area2 = length2 * width2;
            
            String resultMessage = "";
            if (area1 > area2) {
                resultMessage = "Rectangle 1 has a greater area than Rectangle 2.";
            } else if (area1 < area2) {
                resultMessage = "Rectangle 2 has a greater area than Rectangle 1.";
            } else {
                resultMessage = "Both rectangles have the same area.";
            }
    %>
            <h2>Area Comparison Result:</h2>
            <p><%= resultMessage %></p>
            <p>Area of Rectangle 1: <%= String.format("%.2f", area1) %> square units</p>
            <p>Area of Rectangle 2: <%= String.format("%.2f", area2) %> square units</p>
    <%
        }
    %>
</body>
</html>

