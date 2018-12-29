package servlets.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

@WebServlet("/Upload")
public class UploadServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = null;
        String tiker = null;
        String description = null;
        String selection = null;
        File image =  null;


        System.out.println(name);
        System.out.println(tiker);
        System.out.println(description);
        System.out.println(selection);
        System.out.println(image);


        req.getRequestDispatcher("/WEB-INF/view/admin_menu.jsp").forward(req, resp);
    }
}
