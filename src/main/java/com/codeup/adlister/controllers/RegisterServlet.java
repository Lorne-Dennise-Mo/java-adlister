package com.codeup.adlister.controllers;
import static javax.swing.JOptionPane.showMessageDialog;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");

        // validate input
        boolean inputHasErrors = username.isEmpty()
//            || email.isEmpty()
                ||DaoFactory.getUsersDao().findByUsername(username)!= null
            || password.isEmpty()
            || (! password.equals(passwordConfirmation));

        if (inputHasErrors) {
            System.out.println("error");
            request.setAttribute("userInvalid", true);
            request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
//            response.sendRedirect("/register");
            return;
        }

        // create and save a new user
        User user = new User(username, password);
        DaoFactory.getUsersDao().insert(user);
        response.sendRedirect("/login");
    }
}
