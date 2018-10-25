package com.antianbao.javaWebDvd.Bridge;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "revokePagingServlet",urlPatterns = {"/atbrevokePaging.do"})
public class revokePagingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //get解决中文乱码
        //name = new String(name.getBytes("ISO8859-1"),"utf-8");
        int page = Integer.parseInt(request.getParameter("page"));
        String search = request.getParameter("search");
        request.setAttribute("page", page);
        request.setAttribute("search", search);
        request.getRequestDispatcher("./atb/javaWebDvd/revokePaging.jsp").forward(request, response);
    }
}