package servlets.servlet;

import model.companyInformation.*;
import until.CheckDataDBble;
import until.LoadDataDB;
import until.SqlQuery;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.*;
import java.util.TreeMap;

public class CompanyServlet extends HttpServlet {
    private static final long serialVersionUID = -2322961014126559826L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("param1");
        req.getSession().setAttribute("name", name);
        Connection connection = (Connection) getServletContext().getAttribute("DBConnection");
        System.out.println(name);

        TreeMap<Integer, Data> mapDataAboutBalance = new TreeMap<>();
        TreeMap<Integer, Data> mapFinancialData = new TreeMap<>();
        TreeMap<Integer, Data> mapMarketData = new TreeMap<>();
        TreeMap<Integer, Data> multy = new TreeMap<>();

        CheckDataDBble checkDataDB = new LoadDataDB();
        DataAboutBalance dataAboutBalance = checkDataDB.getDataAboutBalance();
        FinancialData financialData = checkDataDB.getFinancialData();
        MarketData marketData = checkDataDB.getMarketData();

//        SqlQuery.checkTableInDBDataTableForCompany(dataAboutBalance, connection, mapDataAboutBalance, name);
//        SqlQuery.checkTableInDBDataTableForCompany(financialData, connection, mapFinancialData, name);

        //TODO test map in company.jsp
        System.out.println(SqlQuery.checkTableInDBDataTableForCompany(dataAboutBalance, connection, mapDataAboutBalance, name));
        System.out.println("-------------------------------------");
        System.out.println(SqlQuery.checkTableInDBDataTableForCompany(financialData, connection, mapFinancialData, name));
        System.out.println("-------------------------------------");
        System.out.println(SqlQuery.checkTableInDBDataTableForCompany(marketData, connection, mapMarketData, name));

        System.out.println(SqlQuery.checkMathMultiplierForCompany(mapDataAboutBalance, mapFinancialData, mapMarketData, multy));

        System.out.println(mapDataAboutBalance.size());
        System.out.println(mapFinancialData.size());
        System.out.println(mapMarketData.size());
        System.out.println(multy.size());




        req.getSession().setAttribute("mapDataAboutBalance", mapDataAboutBalance);
        req.getSession().setAttribute("mapFinancialData", mapFinancialData);
        req.getSession().setAttribute("mapMarketData", mapMarketData);


//        addBLOBtoDB();
        req.getRequestDispatcher("/WEB-INF/view/company.jsp").forward(req, resp);
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

        } catch (FileNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        try {
            if (stream != null) {
                stream.close();
            }
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
