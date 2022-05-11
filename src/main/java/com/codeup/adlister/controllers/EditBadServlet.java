package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Bad;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditBadServlet", value = "/editbad")
public class EditBadServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        String badname=request.getParameter("editbad");
        Bad bad=DaoFactory.getBadsDao().findByBadName(badname);
        request.setAttribute("bad",bad);
        request.getRequestDispatcher("WEB-INF/editbad.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String badname=request.getParameter("editbad");

        Bad bad=DaoFactory.getBadsDao().findByBadName(badname);

        String name= badname;

        String description= bad.getDescription();

        String origin= request.getParameter("editorigin");

        if(!request.getParameter("editname").isEmpty()){
            name=request.getParameter("editname");
        }

        if(!request.getParameter("editdescription").isEmpty()) {
            description = request.getParameter("editdescription");
        }

        if(request.getParameter("editorigin").isEmpty()) {
            origin = bad.getOrigin();
        }

        DaoFactory.getBadsDao().editBad(name,description,origin,badname);

        response.sendRedirect("/bads");

        System.out.println(bad.getName());
        System.out.println(badname);
        System.out.println(name);
        System.out.println(origin);



    }


}
