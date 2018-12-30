package servlets.servlet;

import model.companyInformation.DataAboutBalance;
import model.companyInformation.FinancialData;
import model.companyInformation.MarketData;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.List;

@WebServlet("/Upload")
@MultipartConfig
public class UploadServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        Connection connection = (Connection) getServletContext().getAttribute("DBConnection");
        //Main
        String name = null;
        String tiker = null;
        String description = null;
        InputStream image = null;
        //Industrial
        String selection = null;
        //Data
        String cash = null;
        String nonCurrentAssets = null;
        String currentAssets = null;
        String totalAssets = null;
        String shortTermLiabilities = null;
        String longTermLiabilities = null;
        String totalLiabilities = null;
        String totalCapital = null;
        //Finance
        String revenue = null;
        String operatingProfit = null;
        String proofitBeforTax = null;
        String clearnProfit = null;
        String financealIncome = null;
        String financealExpenses = null;
        String depreciation = null;
        //Market
        String numberAO = null;
        String priceAO = null;
        String numberAP = null;
        String priceAP = null;

        if (ServletFileUpload.isMultipartContent(req)) {
            try {
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(req);
                for (FileItem item : multiparts) {
                    if (!item.isFormField()) {
                        image = item.getInputStream();
                    }
                    if (item.isFormField()) {
                        if (item.getFieldName().equals("name")) {
                            name = item.getString("UTF-8");
                        }
                        if (item.getFieldName().equals("tiker")) {
                            tiker = item.getString();
                        }
                        if (item.getFieldName().equals("description")) {
                            description = item.getString("UTF-8");
                        }
                        if (item.getFieldName().equals("selection")) {
                            selection = item.getString();
                        }
                        if (item.getFieldName().equals("cash")) {
                            cash = item.getString();
                        }
                        if (item.getFieldName().equals("nonCurrentAssets")) {
                            nonCurrentAssets = item.getString();
                        }
                        if (item.getFieldName().equals("currentAssets")) {
                            currentAssets = item.getString();
                        }
                        if (item.getFieldName().equals("totalAssets")) {
                            totalAssets = item.getString();
                        }
                        if (item.getFieldName().equals("shortTermLiabilities")) {
                            shortTermLiabilities = item.getString();
                        }
                        if (item.getFieldName().equals("longTermLiabilities")) {
                            longTermLiabilities = item.getString();
                        }
                        if (item.getFieldName().equals("totalLiabilities")) {
                            totalLiabilities = item.getString();
                        }
                        if (item.getFieldName().equals("totalCapital")) {
                            totalCapital = item.getString();
                        }
                        if (item.getFieldName().equals("revenue")) {
                            revenue = item.getString();
                        }
                        if (item.getFieldName().equals("operatingProfit")) {
                            operatingProfit = item.getString();
                        }
                        if (item.getFieldName().equals("proofitBeforTax")) {
                            proofitBeforTax = item.getString();
                        }
                        if (item.getFieldName().equals("clearnProfit")) {
                            clearnProfit = item.getString();
                        }
                        if (item.getFieldName().equals("financealIncome")) {
                            financealIncome = item.getString();
                        }
                        if (item.getFieldName().equals("financealExpenses")) {
                            financealExpenses = item.getString();
                        }
                        if (item.getFieldName().equals("depreciation")) {
                            depreciation = item.getString();
                        }
                        if (item.getFieldName().equals("numberAO")) {
                            numberAO = item.getString();
                        }
                        if (item.getFieldName().equals("priceAO")) {
                            priceAO = item.getString();
                        }
                        if (item.getFieldName().equals("numberAP")) {
                            numberAP = item.getString();
                        }
                        if (item.getFieldName().equals("priceAP")) {
                            priceAP = item.getString();
                        }
                    }
                }
            } catch (FileUploadException e) {
                e.printStackTrace();
            }
        }


        DataAboutBalance data = new DataAboutBalance(cash, nonCurrentAssets, currentAssets, totalAssets, shortTermLiabilities, longTermLiabilities, totalLiabilities, totalCapital);
        FinancialData finance = new FinancialData(revenue, operatingProfit, proofitBeforTax, clearnProfit, financealIncome, financealExpenses, depreciation);
        MarketData market = new MarketData(numberAO, priceAO, numberAP, priceAP);


        pushMainData(connection, image, name, tiker, description);
        int countID = checkID(connection);
        System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        System.out.println(countID);

        data.pushData(connection, countID, name, tiker);
        finance.pushData(connection, countID, name, tiker);
        market.pushData(connection, countID, name, tiker);
        pushIndustrialData(connection, selection, countID);

        System.out.println(name);
        System.out.println(tiker);
        System.out.println(description);
        System.out.println(selection);
//        System.out.println(image);
//        System.out.println(image.length());

        System.out.println(cash);
        System.out.println(nonCurrentAssets);
        System.out.println(currentAssets);
        System.out.println(totalAssets);
        System.out.println(shortTermLiabilities);
        System.out.println(longTermLiabilities);
        System.out.println(totalLiabilities);
        System.out.println(totalCapital);

        System.out.println(revenue);
        System.out.println(operatingProfit);
        System.out.println(proofitBeforTax);
        System.out.println(clearnProfit);
        System.out.println(financealIncome);
        System.out.println(financealExpenses);
        System.out.println(depreciation);

        System.out.println(numberAO);
        System.out.println(priceAO);
        System.out.println(numberAP);
        System.out.println(priceAP);


        req.getRequestDispatcher("/WEB-INF/view/admin_menu.jsp").forward(req, resp);
    }

    private void pushMainData(Connection connection, InputStream  img, String name, String tiker, String ds) {

        try {
            String query ="INSERT  INTO  company (name, tiker, description, image) VALUES (?,?,?,?)";
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, name);
            st.setString(2, tiker);
            st.setString(3, ds);
            st.setBinaryStream(4, img);
            st.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void pushIndustrialData(Connection connection, String selection, int id) {
        try {
            String query = "INSERT INTO industry(name, test_id) VALUES (?,?)";
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, selection);
            st.setInt(2, id);
            st.executeUpdate();
//            INSERT INTO monitoring.industry (name, test_id) VALUES ('oil', 3);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private int checkID(Connection connection) {
        int result = 0;
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT MAX(id) FROM company");
            while (rs.next()) {
                result = rs.getInt(1);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }


}
