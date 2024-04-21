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
    <title>Member Register</title>
</head>
<body>
    <h1>Passing data from main JSP's page to other JSP's page</h1><!-- comment -->
    <form id="memberFrm" action="memberProcessing.jsp" method="post" onsubmit="return checkICNo()">
        <fieldset><!-- comment -->
            <legend>Member Registration</legend><!-- comment -->
            <label for="invoiceno">Ic No *</label>
            <input type="text" id="icno" name="my_icno" size="15" placeholder="E.g 921012101245"><br/><!-- comment -->
         
            <label for="name">Name</label>
            <input type="text" id="name" name="my_name" size="45" placeholder="Key-in your name"><br/>
            
            <p><input type="submit" id="btnSubmit" value="Submit"/>
                <input type="reset" id="btnCancel" value="Cancel"/>
            </p><!-- comment -->
        </fieldset>
    </form>
</html>