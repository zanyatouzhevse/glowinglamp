package com.Shop.InternetShop;


import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException  ;
import java.util.List;

public class Auto extends HttpServlet {
    static Map <String, String> users = new HashMap <String, String>();


    {
        users.put("admin","admin");
        users.put("student","test");
        users.put("user","123");
    }



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String loginField = req.getParameter("login");
        String passwordField = req.getParameter("parol");

        try {


            if (users.get(loginField).equals(passwordField)) {
                req.getRequestDispatcher("/osnovnoe.jsp").forward(req, resp);
            }
else {
                req.getRequestDispatcher("/wrong.jsp").forward(req, resp);

            }

        } catch (NullPointerException e) {
            System.out.println("login not found");
            req.getRequestDispatcher("/wrong.jsp").forward(req, resp);

        }

      // resp.sendRedirect("/index");
     // req.getRequestDispatcher("/index").forward(req, resp);
    }
}



