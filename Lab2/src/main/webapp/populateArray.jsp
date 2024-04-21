<%-- 
    Document   : populateArray
    Created on : 19 Apr 2024, 7:29:24 pm
    Author     : Arifah S66428
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>populateArray</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }
        h1 {
            font-family: 'Times New Roman', Times, serif;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            border: 2px solid #333;
        }
        th, td {
            padding: 10px;
            border: 1px solid #333;
            text-align: center;
        }
        th {
            background-color: yellow;
        }
        tr:first-child th {
            background-color: yellow;
            color: black;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <h1>Read Java array and populate it into HTML's table</h1>
    <%
        // Define and initialize the array with the sales data
        String[][] salesData = {
            {"Salesman 1", "2500", "2100", "2200"},
            {"Salesman 2", "2000", "1900", "2400"},
            {"Salesman 3", "1800", "2200", "2450"}
        };
        
        // Display the array data in an HTML table
    %>
    <table>
        <tr>
            <th>Salesman</th>
            <th>Jan</th>
            <th>Feb</th>
            <th>Mar</th>
        </tr>
        <%
            for (int i = 0; i < salesData.length; i++) {
                %>
                <tr>
                    <td><%= (i == 0) ? "<b>" + salesData[i][0] + "</b>" : salesData[i][0] %></td>
                    <td><%= salesData[i][1] %></td>
                    <td><%= salesData[i][2] %></td>
                    <td><%= salesData[i][3] %></td>
                </tr>
                <%
            }
        %>
    </table>
</body>
</html>
