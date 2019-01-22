package servlets.servlet;

import model.companyInformation.Data;
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
import java.util.Map;
import java.util.TreeMap;

@WebServlet("/Upload")
@MultipartConfig
public class UploadServlet extends HttpServlet {
    private String[] dataAttr = {"cash", "nonCurrentAssets", "currentAssets", "totalAssets", "shortTermLiabilities", "longTermLiabilities", "totalLiabilities", "totalCapital"};
    private String[] financeAttr = {"revenue", "operatingProfit", "proofitBeforTax", "clearnProfit", "financealIncome", "financealExpenses", "depreciation"};
    private String[] marketAttr = {"numberAO", "priceAO", "numberAP", "priceAP"};

    private int countData = 0;
    private int countFinanice = 0;
    private int countMarket = 0;


    private TreeMap<String, Data> mapInstanceData = new TreeMap<>();
    private TreeMap<String, Data> mapInstanceFinance = new TreeMap<>();
    private TreeMap<String, Data> mapInstanceMarket = new TreeMap<>();

    private String[] tempData = new String[8];
    private String[] tempFinance = new String[7];
    private String[] tempMarket = new String[4];


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

                        checkAttr(item);
                    }
                }
            } catch (FileUploadException e) {
                e.printStackTrace();
            }
        }

        pushDataDB(req, connection, name, tiker, description, image, selection);
        req.getRequestDispatcher("/WEB-INF/view/admin_menu.jsp").forward(req, resp);
        req.getSession().removeAttribute("dataPush");
    }

    private void pushDataDB(HttpServletRequest req, Connection connection, String name, String tiker, String description, InputStream image, String selection) {
        pushMainData(connection, image, name, tiker, description);
        int countID = checkID(connection);

        for (Map.Entry<String, Data> entry : mapInstanceData.entrySet()) {
            entry.getValue().pushData(connection, countID, name, tiker, entry.getKey());
        }

        for (Map.Entry<String, Data> entry : mapInstanceFinance.entrySet()) {
            entry.getValue().pushData(connection, countID, name, tiker, entry.getKey());
        }

        for (Map.Entry<String, Data> entry : mapInstanceMarket.entrySet()) {
            entry.getValue().pushData(connection, countID, name, tiker, entry.getKey());
        }

        pushIndustrialData(connection, selection, countID);

        req.getSession().setAttribute("dataPush", "Данные сохранены");
    }

    private void checkAttr(FileItem item) {
        String fieldname = item.getFieldName();
        String fieldValue = item.getString();

        String attr = fieldname.substring(0, fieldname.length() - 4);
        String year = fieldname.substring(fieldname.length() - 4, fieldname.length());

        if (!attr.equals("name") && !attr.equals("tiker") && !attr.equals("description")) {
            System.out.println("attr: " + attr);
            System.out.println("year: " + year);

            for (String s : dataAttr) {
                if (s.equals(attr)) {
                    countData++;
                    tempData[countData - 1] = fieldValue;
                    System.out.println(countData);
                }
            }

            for (String s : financeAttr) {
                if (s.equals(attr)) {
                    countFinanice++;
                    tempFinance[countFinanice - 1] = fieldValue;
                    System.out.println(countFinanice);
                }
            }

            for (String s : marketAttr) {
                if (s.equals(attr)) {
                    countMarket++;
                    tempMarket[countMarket - 1] = fieldValue;
                    System.out.println(countMarket);
                }
            }

            if (countData == 8 && countFinanice == 7 && countMarket == 4) {
                String nameTableD = "DataAboutBalance".toLowerCase() + year;
                mapInstanceData.put(nameTableD, new DataAboutBalance(tempData[0], tempData[1], tempData[2], tempData[3], tempData[4], tempData[5], tempData[6], tempData[7]));

                String nameTableF = "FinancialData".toLowerCase() + year;
                mapInstanceFinance.put(nameTableF, new FinancialData(tempFinance[0], tempFinance[1], tempFinance[2], tempFinance[3], tempFinance[4], tempFinance[5], tempFinance[6]));

                String nameTableM = "MarketData".toLowerCase() + year;
                mapInstanceMarket.put(nameTableM, new MarketData(tempMarket[0], tempMarket[1], tempMarket[2], tempMarket[3]));

                countData = 0;
                countFinanice = 0;
                countMarket = 0;

            }
        }
    }

    private void pushMainData(Connection connection, InputStream img, String name, String tiker, String ds) {

        try {
            String query = "INSERT  INTO  company (name, tiker, description, image) VALUES (?,?,?,?)";
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
