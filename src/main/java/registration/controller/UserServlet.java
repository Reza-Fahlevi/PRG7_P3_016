package registration.controller;

import registration.model.UserData;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UserServlet", value = "/UserServlet")
public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String address;
        boolean valid;

        UserData userData = new UserData();
        userData.setFirstName(request.getParameter("firstName"));
        userData.setLastName(request.getParameter("lastName"));
        userData.setEmailUser(request.getParameter("emailUser"));
        userData.setUserName(request.getParameter("userName"));
        userData.setPassword1(request.getParameter("password1"));
        userData.setPassword2(request.getParameter("password2"));

        valid = userData.validate();
        if(valid==true){
            address="result.jsp";
        }
        else {
            address="index.jsp";
        }

        request.setAttribute("userData", userData);
        request.getRequestDispatcher(address).forward(request, response);
    }
}
