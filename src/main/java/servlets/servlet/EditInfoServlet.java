package servlets.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;
import java.sql.*;

@WebServlet("/EditInfo")
public class EditInfoServlet extends HttpServlet {
    private static final long serialVersionUID = -5081280876577205016L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name  = (String) req.getSession().getAttribute("name");
        String info = (String) req.getSession().getAttribute("info");

        req.getSession().setAttribute("info", info);
        req.getSession().setAttribute("name", name);

        req.getRequestDispatcher("/WEB-INF/view/updateInfo.jsp").forward(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String name = req.getParameter("name");
        String info = req.getParameter("info");


        Connection connection = (Connection) getServletContext().getAttribute("DBConnection");

        try {
            String query = "UPDATE company SET info = ? WHERE name = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, info);
            statement.setString(2, name);
            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }


        req.getSession().setAttribute("dataUpdate", "Данные обновлены");
        resp.sendRedirect(req.getContextPath() + "/company?param1=" + URLEncoder.encode(name, "UTF-8"));

    }
}
