<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<jsp:useBean id="userData" scope="request" class="registration.model.UserData"></jsp:useBean>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="style/css/bootstrap.css">
</head>
<body>
<div class="container">
    <form action="UserServlet" method="post">
        <div class="mt-3 mb-3">
            <h1>Watashitachi no webusaito e yōkoso!</h1>
            <h2>Please register first</h2>
        </div>
        <div class="mb-3">
            <label class="form-label">First Name</label>
            <input type="text" class="form-control" name="firstName" required placeholder="Insert your first name...">
        </div>
        <div class="mb-3">
            <label class="form-label">Last Name</label>
            <input type="text" class="form-control" name="lastName" required placeholder="Insert your last name...">
        </div>
        <div class="mb-3">
            <label class="form-label">E-Mail</label>
            <input type="email" class="form-control" name="emailUser" required placeholder="Insert your e-mail..." aria-describedby="emailHelp">
            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
        </div>
        <div class="mb-3">
            <label class="form-label">Username</label>
            <input type="text" class="form-control" name="userName" required placeholder="Enter your desired username...">
        </div>

        <div class="mb-3">
            <label class="form-label">Password</label>
            <input type="password" class="form-control" required placeholder="Enter your password..." value="<%userData.getPassword1();%>" name="password1">
            <label style="color: #ff0000"><%=userData.getErrorMesage("password1")%></label>
        </div>

        <div class="mb-3">
            <label class="form-label">Re-type password</label>
            <input type="password" class="form-control" required placeholder="Repeat your password..." value="<%userData.getPassword2();%>" name="password2">
            <label class="text-danger"><%=userData.getErrorMesage("password2")%></label>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
<script src="style/js/bootstrap.bundle.js"></script>
</body>
</html>