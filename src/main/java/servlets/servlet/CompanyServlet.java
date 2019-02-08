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
import java.util.Base64;
import java.util.TreeMap;

public class CompanyServlet extends HttpServlet {
    private static final long serialVersionUID = -2322961014126559826L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("param1");
        req.getSession().setAttribute("name", name);
        Connection connection = (Connection) getServletContext().getAttribute("DBConnection");
//        System.out.println(name);

        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT company.info FROM company WHERE name = '" + name + "'");
            while (resultSet.next()) {
                String info = resultSet.getString(1);
                req.getSession().setAttribute("info", info);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        try {
            checkBlobDB(name, req);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        TreeMap<Integer, Data> mapDataAboutBalance = new TreeMap<>();
        TreeMap<Integer, Data> mapFinancialData = new TreeMap<>();
        TreeMap<Integer, Data> mapMarketData = new TreeMap<>();
        TreeMap<String, TheMultiplier> multi = new TreeMap<>();

        CheckDataDBble checkDataDB = new LoadDataDB();
        DataAboutBalance dataAboutBalance = checkDataDB.getDataAboutBalance();
        FinancialData financialData = checkDataDB.getFinancialData();
        MarketData marketData = checkDataDB.getMarketData();

        loadDataTableCompanyPage(name, connection, mapDataAboutBalance, mapFinancialData, mapMarketData, multi, dataAboutBalance, financialData, marketData);
        setAttributeToJsp(req, mapDataAboutBalance, mapFinancialData, mapMarketData, multi);

        req.getRequestDispatcher("/WEB-INF/view/company.jsp").forward(req, resp);
        req.getSession().removeAttribute("dataUpdate");
    }

    private void setAttributeToJsp(HttpServletRequest req, TreeMap<Integer, Data> mapDataAboutBalance, TreeMap<Integer, Data> mapFinancialData, TreeMap<Integer, Data> mapMarketData, TreeMap<String, TheMultiplier> multi) {
        req.getSession().setAttribute("mapDataAboutBalance", mapDataAboutBalance);
        req.getSession().setAttribute("mapFinancialData", mapFinancialData);
        req.getSession().setAttribute("mapMarketData", mapMarketData);
        req.getSession().setAttribute("multi", multi);



    }

    private void loadDataTableCompanyPage(String name, Connection connection, TreeMap<Integer, Data> mapDataAboutBalance, TreeMap<Integer, Data> mapFinancialData, TreeMap<Integer, Data> mapMarketData, TreeMap<String, TheMultiplier> multi, DataAboutBalance dataAboutBalance, FinancialData financialData, MarketData marketData) {
        SqlQuery.checkTableInDBDataTableForCompany(dataAboutBalance, connection, mapDataAboutBalance, name);
        SqlQuery.checkTableInDBDataTableForCompany(financialData, connection, mapFinancialData, name);
        SqlQuery.checkTableInDBDataTableForCompany(marketData, connection, mapMarketData, name);
        SqlQuery.checkMathMultiplierForCompany(mapDataAboutBalance, mapFinancialData, mapMarketData, multi);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    private void checkBlobDB (String nameCompany,HttpServletRequest req) throws SQLException, IOException {
        String result;
        Connection connection = (Connection) getServletContext().getAttribute("DBConnection");
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT image AS 'IMAGE', description AS 'ds' FROM company Where name = '" + nameCompany + "'");
        while (resultSet.next()) {
            byte[] images = resultSet.getBytes(1);
            String description = resultSet.getString(2);
            String encode = Base64.getEncoder().encodeToString(images);
            req.getSession().setAttribute("imgBAse", encode);
            req.getSession().setAttribute("description", description);
        }

    }

//    public void convertImage(Blob[] blob) {
//        BufferedImage bufferedImage = null;
//        OutputStream outputStream = null;
//        try {
//            bufferedImage = ImageIO.read(blob[0].getBinaryStream());
//
//            outputStream = blob[0].setBinaryStream(0);
//
//            RenderedImage renderedImage = (RenderedImage)bufferedImage;
//
//            ImageIO.write(renderedImage, "JPG", outputStream);
//
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//        catch (SQLException e) {
//            e.printStackTrace();
//        }
//        catch(IllegalArgumentException e) {
//            e.printStackTrace();
//        }
//        finally {
//            try {
//                if (outputStream != null) {
//                    outputStream.flush();
//                    outputStream.close();
//                }
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//        }
//    }
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
    }
}
