package servlets.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/IndustryServlet")
public class IndustryServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//        req.getRequestDispatcher("/WEB-INF/js/jquery.jsp").forward(req, resp);
        File file = new File(getServletContext().getRealPath("/"), "\\WEB-INF\\view\\gas.jsp");
        String temp = file.getName();

        StringBuilder sb = new StringBuilder();
        FileReader fr = new FileReader(file);
        int c;
        while ((c = fr.read()) != -1) {
            sb.append((char) c);
        }

        String temp1 = sb.toString();


//        resp.setContentType("text/plain");
        resp.setContentType("text/html; charset=UTF-8");
        PrintWriter out = resp.getWriter();
//        resp.setCharacterEncoding("UTF-8");
        out.write("Работает? " + temp1);
        fr.close();

    }
}
