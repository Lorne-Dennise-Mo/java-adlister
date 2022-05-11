package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Bad;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditBadServlet", value = "/EditBadServlet")
public class EditBadServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String badname=request.getParameter("editbad");
        request.getRequestDispatcher("WEB-INF/badview.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String badname=request.getParameter("editbad");
        Bad bad=DaoFactory.getBadsDao().findByBadName(badname);
        String name;
        String description;
        String origin;

        if(request.getParameter("editname")==null){
             name=bad.getName();
        }else {
            name= request.getParameter("editname");
        }
        if(request.getParameter("editdescription")==null){
            description=bad.getDescription();
        }else {
            description=request.getParameter("editdescription");
        }
        if(request.getParameter("editorigin")==null){
            origin=bad.getOrigin();
        }else {
            origin=request.getParameter("editorigin");
        }

        DaoFactory.getBadsDao().editBad(name,description,origin,badname);


    }
}
