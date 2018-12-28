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
        System.out.println(name);


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

//        for (Map.Entry<Integer, Data> entry : multi.entrySet()) {
//            System.out.println(entry.getValue());
//        }
//        addBLOBtoDB();
        req.getRequestDispatcher("/WEB-INF/view/company.jsp").forward(req, resp);
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
//        BufferedImage image;
//        File file = new File("logo.png");
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
//            Blob blob = resultSet.getBlob(1);
//            InputStream in = blob.getBinaryStream();
//            image = ImageIO.read(in);
//            ImageIO.write(image, "png", file);
//            //
//            image = (File) resultSet.getBlob(1);
        }

//        BufferedReader rd = null;
//        BufferedWriter wr = null;
//
//        rd = new BufferedReader(new FileReader(file));
//        wr = new BufferedWriter(new FileWriter(result));
//        String count;
//        while ((count = rd.readLine()) != null) {
//            wr.write(count);
//            System.out.println("+++++++++++++++++++++++++++++++++++++DONE+++++++++++++++++++++++++++++++++++++++++");
//        }
//
//        wr.flush();
//        System.out.println(result.length());
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
