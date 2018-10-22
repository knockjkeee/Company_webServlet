package servlets.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//@WebServlet("/CompanyServlet")
public class CompanyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("param1");
        req.getSession().setAttribute("name", name);

        System.out.println(name);
        req.getRequestDispatcher("/WEB-INF/view/company.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String[] td5 = req.getParameterValues("companyName");
//        String td6 = (String) req.getAttribute("companyName");
//        String td7 = req.getServletContext().getInitParameter("companyName");
//        String td8 = (String) req.getServletContext().getAttribute("companyName");
//
//        System.out.println("td5:"+td5.length);
//        System.out.println("td6:"+td6);
//        System.out.println("td7:"+td7);
//        System.out.println("td8:"+td8);

//        req.getRequestDispatcher("/WEB-INF/view/company.jsp").forward(req, resp);
    }
}
