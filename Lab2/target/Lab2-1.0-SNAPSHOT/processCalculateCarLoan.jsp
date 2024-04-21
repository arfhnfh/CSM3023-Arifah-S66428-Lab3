<%-- 
    Document   : processCalculateCarLoan
    Created on : 19 Apr 2024, 10:58:46 pm
    Author     : Arifah S66428
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Car Loan Calculator</title>
</head>
<body>
    <h1>Perform Car Loan Calculation</h1>
    
    <% 
        // Retrieve loan amount and period from request parameters
        String loanAmountStr = request.getParameter("loan_amount");
        String periodStr = request.getParameter("loan_period"); // Correct parameter name
        
        // Parse loan amount (in dollars) from string to double
        double loanAmount = 0.0;
        if (loanAmountStr != null && !loanAmountStr.isEmpty()) {
            loanAmount = Double.parseDouble(loanAmountStr);
        }
        
        // Determine loan term in months based on selected period
        int loanTermMonths = 0;
        if (periodStr != null && !periodStr.isEmpty()) {
            switch (periodStr) {
                case "3":
                    loanTermMonths = 36; // 3 years
                    break;
                case "4":
                    loanTermMonths = 48; // 4 years
                    break;
                case "5":
                    loanTermMonths = 60; // 5 years
                    break;
                case "7":
                    loanTermMonths = 84; // 7 years
                    break;
                default:
                    loanTermMonths = 36; // Default to 3 years
                    break;
            }
        }
        
        // Calculate monthly payment
        double annualInterestRate = 5.0; // Example annual interest rate (5%)
        double monthlyInterestRate = annualInterestRate / 100 / 12;
        double monthlyPayment = (loanAmount * monthlyInterestRate) / (1 - Math.pow(1 + monthlyInterestRate, -loanTermMonths));
    %>
    <fieldset> 
        <p><span style="color:blue;"><h2>Details of car loan:</h2></span></p>

        <p>Loan Request: RM <%= loanAmount %></p>
        <p>Period of payment: <%= periodStr %> (<%= loanTermMonths %> months)</p>
        <p>Total Loan (+ interest): RM <%= String.format("%.2f", monthlyPayment) %></p>
    </fieldset>
</body>
</html>
