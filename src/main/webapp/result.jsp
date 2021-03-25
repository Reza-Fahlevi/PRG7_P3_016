<%--
  Created by IntelliJ IDEA.
  User: mocha
  Date: 3/25/2021
  Time: 2:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:useBean id="userData" scope="request" class="registration.model.UserData"></jsp:useBean>
<head>
    <title>Result</title>
    <link rel="stylesheet" href="style/css/bootstrap.css">
</head>
<body>
<div class="container">
    <div class="mt-3 mb-3">
        <h1>User Registration Success!</h1>
        <h2>Thank you, here is your data:</h2>

        <div class="mt-3">
            <ul>
                <li>
                    <h5>Full Name : <jsp:getProperty name="userData" property="firstName"/> <jsp:getProperty name="userData" property="lastName"/></h5>
                </li>
                <li>
                    <h5>E-Mail : <jsp:getProperty name="userData" property="emailUser"/></h5>
                </li>
                <li>
                    <h5>Username : <jsp:getProperty name="userData" property="userName"/></h5>
                </li>
            </ul>
        </div>
    </div>
</div>
<script src="style/js/bootstrap.bundle.js"></script>
</body>
</html>
