package servlets.servlet;

import dao.DBConnectionManager;
import model.companyInformation.Data;
import model.companyInformation.DataAboutBalance;
import model.companyInformation.FinancialData;
import model.companyInformation.MarketData;
import until.CheckDataDBble;
import until.LoadDataDB;
import until.SqlQuery;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.TreeMap;

public class HomeServlet extends HttpServlet {

    private static DBConnectionManager connectionManager;
    private static Connection connection;
    private static Statement statement;
    private static ResultSet resultSet;


    @Override
    public void init() throws ServletException {
        String url = getServletContext().getInitParameter("dbUrl");
        String user = getServletContext().getInitParameter("dbUser");
        String password = getServletContext().getInitParameter("dbPassword");

        System.out.printf("url: %s, user: %s, pw: %s", url, user, password);
        System.out.println();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Connection connection = (Connection) getServletContext().getAttribute("DBConnection");

        CheckDataDBble checkDataDB = new LoadDataDB();
        DataAboutBalance dataAboutBalance = checkDataDB.getDataAboutBalance();
        FinancialData financialData = checkDataDB.getFinancialData();
        MarketData marketData = checkDataDB.getMarketData();

        TreeMap<String, Data> multyMap = new TreeMap<>();
        SqlQuery.indexMathMultiplier(connection, dataAboutBalance, financialData, marketData, multyMap);

        System.out.println(multyMap.size());
        System.out.println(multyMap);

        req.getRequestDispatcher("/WEB-INF/view/index.jsp").forward(req, resp);


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
}
