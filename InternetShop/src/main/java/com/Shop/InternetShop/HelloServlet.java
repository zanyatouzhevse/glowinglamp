package com.Shop.InternetShop;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException  ;
import java.util.Arrays;
import java.util.List;

public class HelloServlet extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        req.setAttribute("todo", "10");
        req.getRequestDispatcher("/index.jsp").forward(req, resp);

    }
}
