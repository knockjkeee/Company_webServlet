package servlets;

import dao.DBConnectionManager;
import dao.UserDao;
import model.Role;
import model.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.concurrent.atomic.AtomicReference;

@WebListener
public class ContextListener implements ServletContextListener, HttpSessionListener {

    //    private AtomicReference<UserDao> dao;
    private AtomicReference<UserDao> bd;

    private static DBConnectionManager connectionManager;
    private static Connection connection;
    private static Statement statement;
    private static ResultSet resultSet;

    public void contextInitialized(ServletContextEvent sce) {
        ServletContext ctx = sce.getServletContext();

//        dao = new AtomicReference<>(new UserDao());
//        dao.get().add(new User(1, "Pavel", "1", Role.ADMIN));
//        dao.get().add(new User(2, "Egor", "1", Role.USER));
//        final ServletContext servletContext = sce.getServletContext();
//        servletContext.setAttribute("dao", dao);

        bd = new AtomicReference<>(new UserDao());

        String url = ctx.getInitParameter("dbUrl");
        String user = ctx.getInitParameter("dbUser");
        String password = ctx.getInitParameter("dbPassword");

        try {
            connectionManager = new DBConnectionManager(url, user, password);
            System.out.println(connectionManager.toString());
            ctx.setAttribute("DBConnection", connectionManager.getConnection());
            System.out.println("DB Connection initialized successfully.");
            connectionSQL();
            readingDatabaseUsers(resultSet);
        } catch (SQLException e) {
            System.out.println("SQLException!!!!!!!!!!!!!!!!!!");
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            System.out.println("ClassNotFoundException!!!!!!!!!!!!!!!!!!");
            e.printStackTrace();
        }
        final ServletContext servletContext = sce.getServletContext();
        servletContext.setAttribute("dao", bd);
    }

    public void contextDestroyed(ServletContextEvent sce) {
//        dao = null;
        bd = null;
        Connection con = (Connection) sce.getServletContext().getAttribute("DBConnection");
        try {
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        System.out.println("Session Created:: ID=" + se.getSession().getId());
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        System.out.println("Session Destroyed:: ID=" + se.getSession().getId());
    }

    private void connectionSQL() throws SQLException {
        connection = connectionManager.getConnection();
        statement = connection.createStatement();
        resultSet = statement.executeQuery("SELECT * FROM users");
    }

    private void readingDatabaseUsers(ResultSet rs) throws SQLException {
        while (rs.next()) {
            int id = rs.getInt(1);
            String name = rs.getString(2);
            String password = rs.getString(3);
            String role = rs.getString(4).toUpperCase();

            if (Role.ADMIN.toString().equals(role)) {
                bd.get().add(new User(id, name, password, Role.ADMIN));
            } else if (Role.USER.toString().equals(role)) {
                bd.get().add(new User(id, name, password, Role.USER));
            }
        }
    }

}
