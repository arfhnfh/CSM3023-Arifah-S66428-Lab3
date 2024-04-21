<%-- 
    Document   : Calculator
    Created on : 19 Apr 2024, 6:25:10 pm
    Author     : Arifah S66428
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Calculator</title>
</head>
<body bgcolor="#a00FFF" text="gold">
    <center>
        <h2>Basic calculator program in JSP</h2>
        <%
            String num1 = "0", num2 = "0";
            int result = 0;
            String op = "+";
            
            char opchar = op.charAt(0);
            if (request.getParameter("op") != null) {
                op = request.getParameter("op");
                opchar = op.charAt(0);
                
                num1 = request.getParameter("operand1");
                num2 = request.getParameter("operand2");
                
                try {
                    int operand1 = Integer.parseInt(num1);
                    int operand2 = Integer.parseInt(num2);
                    
                    switch (opchar) {
                        case '+': result = operand1 + operand2; break;
                        case '-': result = operand1 - operand2; break;
                        case '*': result = operand1 * operand2; break;
                        case '/':
                            if (operand2 != 0) {
                                result = operand1 / operand2;
                            } else {
                                out.println("Error: Division by zero!");
                            }
                            break;
                        case '%': result = operand1 % operand2; break;
                        default: out.println("Error: Invalid operator!"); break;
                    }
                } catch (NumberFormatException e) {
                    out.println("Error: Invalid input!");
                }
            }
        %>
        
        <form method="get" name="f1">
            <fieldset> 
            <legend>Loan Calculation</legend>
            <input type="text" size="20" name="operand1" value="<%= num1 %>"/>
            
            <select name="op" size="1">
                <option value="+" <%= (op.equals("+")) ? "selected" : "" %>>+</option>
                <option value="-" <%= (op.equals("-")) ? "selected" : "" %>>-</option>
                <option value="*" <%= (op.equals("*")) ? "selected" : "" %>>*</option>
                <option value="/" <%= (op.equals("/")) ? "selected" : "" %>>/</option>
                <option value="%" <%= (op.equals("%")) ? "selected" : "" %>>%</option>
            </select>
            
            <input type="text" size="20" name="operand2" value="<%= num2 %>"/>
            <br><br>
            <input type="submit" value="Calculate"/>
            Result = <%= result %>
            
            </fieldset>
        </form>        
    </center>
</body>
</html>
