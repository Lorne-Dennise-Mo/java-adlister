package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Bad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "BadViewServlet", urlPatterns = "/badview")
public class BadViewServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String badname = req.getParameter("badname");
        Bad bad = DaoFactory.getBadsDao().findByBadName(badname);
        req.setAttribute("bad", bad);
        System.out.println(badname);
        req.getRequestDispatcher("WEB-INF/badview.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String badname=req.getParameter("gonebad");
        DaoFactory.getBadsDao().deleteBad(badname);
        req.setAttribute("delete",true);
        req.getRequestDispatcher("WEB-INF/badview.jsp").forward(req, resp);

    }

    public static void main(String[] args) {
        System.out.println(DaoFactory.getBadsDao().findByBadName("Thanos"));
    }

}
