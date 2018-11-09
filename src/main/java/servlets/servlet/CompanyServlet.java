package servlets.servlet;

import model.Company_test;
import model.companyInformation.DataAboutBalance;
import model.companyInformation.FinancialData;
import model.companyInformation.MarketData;
import until.CheckDataDB;
import until.LoadDataDB;
import until.SqlString;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.*;
import java.util.HashMap;

public class CompanyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("param1");
        req.getSession().setAttribute("name", name);
        Connection connection = (Connection) getServletContext().getAttribute("DBConnection");
        System.out.println(name);

        String rSetPage = SqlString.getCompany(name);
        String rSetDataAboutBalance = SqlString.getDataAboutBalance(name);
        String rSetFinancialData = SqlString.getFinancialData(name);
        String rSetMarketData = SqlString.getMarketData(name);

        HashMap<String, DataAboutBalance> map = new HashMap<>();


//        /*
//        //TODO тестирование вывода
//         */
//        testViewDB(req, connection, rSetPage);

        CheckDataDB checkDataDB = new LoadDataDB();
        DataAboutBalance dataAboutBalance = checkDataDB.getDataAboutBalance();
        FinancialData financialData = checkDataDB.getFinancialData();
        MarketData marketData = checkDataDB.getMarketData();


        dataAboutBalance.loadData(connection, rSetDataAboutBalance);
        financialData.loadData(connection, rSetFinancialData);
        marketData.loadData(connection, rSetMarketData);

        map.put("1", dataAboutBalance);
        map.put("2", dataAboutBalance);
        map.put("2", dataAboutBalance);

        req.getSession().setAttribute("map", map);
        System.out.println(dataAboutBalance);
        System.out.println(financialData);
        System.out.println(marketData);

        req.getSession().setAttribute("dataAboutBalance", dataAboutBalance);
        req.getSession().setAttribute("financialData", financialData);
        req.getSession().setAttribute("marketData",marketData);



//        String rSet dataAboutBalance =
//
//        Statement statement = null;
//        Company company = null;
//        try {
//            statement = connection.createStatement();
//            ResultSet resultSet = statement.executeQuery()
//
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }


//        addBLOBtoDB();
//        req.getRequestDispatcher("/WEB-INF/view/companyInformation.jsp").forward(req, resp);
        req.getRequestDispatcher("/WEB-INF/view/company.jsp").forward(req, resp);
    }

    private void testViewDB(HttpServletRequest req, Connection connection, String rSet) {
        Statement statement = null;
        Company_test company = null;
        try {
            statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(rSet);
            while (resultSet.next()) {
                company = new Company_test(resultSet.getString(1), resultSet.getString(2), resultSet.getInt(3),
                        resultSet.getDouble(4), resultSet.getDouble(5), resultSet.getDouble(6), resultSet.getDouble(7),
                        resultSet.getDouble(8), resultSet.getDouble(9), resultSet.getInt(10));
            }

            System.out.println(company);
            req.getSession().setAttribute("company", company);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    private void addBLOBtoDB() {
        Connection connection = (Connection) getServletContext().getAttribute("DBConnection");
//        File file = new File(getServletContext().getRealPath("/"), "\\WEB-INF\\logo_company\\Газпром.png");
//        File file = new File(getServletContext().getRealPath("/"), "\\WEB-INF\\logo_company\\Лукойл.png");
        File file = new File(getServletContext().getRealPath("/"), "\\WEB-INF\\logo_company\\Роснефть.png");
        FileInputStream stream = null;

        try {
            stream = new FileInputStream(file);
//            String query = "INSERT INTO company  (id, name, description, image) VALUES (?,?,?,?)";
            String query = "INSERT INTO company  (name, description, image) VALUES (?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
//            preparedStatement.setInt(1, 1);
            preparedStatement.setString(1, "Роснефть");
            preparedStatement.setString(2, "text");
            preparedStatement.setBinaryStream(3, stream);
            preparedStatement.executeUpdate();

        } catch (FileNotFoundException e) {
            e.printStackTrace();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            stream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }


//        String fileName = "toto.png";
//        File fileWrite = new File(fileName);
//
////        String pathUpload = "\\WEB-INF\\logo_company\\";
//        FileInputStream in = null;
//        FileOutputStream out = null;
//
//        try {
//            int count;
//            in = new FileInputStream(file);
//            out = new FileOutputStream(fileWrite);
//            while ((count = in.read()) != -1) {
//                out.write((char)count);
//            }
//
//
//        } catch (FileNotFoundException e) {
//            e.printStackTrace();
//        } catch (IOException e) {
//            e.printStackTrace();
//        } finally {
//            System.out.println("Success");
//            try {
//                in.close();
//                out.close();
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//        }
//
//        if (fileWrite.exists()) {
//            try {
//                fileWrite.createNewFile();
//            } catch (IOException e) {
//                e.printStackTrace();
//            } finally {
//                System.out.println("Create!!!!");
//            }
//        }
        System.out.println(file.getName());
//        System.out.println(fileWrite.getName());
        System.out.println(file.length());
//        System.out.println(fileName.length());

//        String query = "INSERT INTO companyInformation  (id, name, description, image) VALUES (?,?,?,?)";
//
//        try {
//            PreparedStatement preparedStatement = connection.prepareStatement(query);
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
    }
}
