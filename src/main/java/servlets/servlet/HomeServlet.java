package servlets.servlet;

import dao.DBConnectionManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class HomeServlet extends HttpServlet {

    private static DBConnectionManager connectionManager;
    private static Connection connection;
    private static Statement statement;
    private static ResultSet resultSet;


    @Override
    public void init() throws ServletException {
        String url = getServletContext().getInitParameter("dbUrl");
        String user =  getServletContext().getInitParameter("dbUser");
        String password = getServletContext().getInitParameter("dbPassword");

        System.out.printf("url: %s, user: %s, pw: %s", url, user, password);
        System.out.println();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/view/index.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
}
