package servlets.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.net.URLEncoder;
import java.sql.*;
import java.util.*;

@WebServlet("/Edit")
public class EditServlet extends HttpServlet {
    private static final long serialVersionUID = -5081280876577205016L;
    private Enumeration<String> value;
    private Enumeration<String> attr;

    private TreeMap<String, String> data;
    private List<String> tempAttr;
    private List<String> tempValues;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        value = req.getParameterNames();
        attr = req.getParameterNames();
        data = new TreeMap<>();
        tempAttr = new ArrayList<>();
        tempValues = new ArrayList<>();

        String name;
        name = (String) req.getSession().getAttribute("name");
        loadDataToUpdate(req);
        System.out.println(data);
        req.getSession().setAttribute("data", data);
        req.getSession().setAttribute("name", name);

        req.getRequestDispatcher("/WEB-INF/view/update.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        value = req.getParameterNames();
        attr = req.getParameterNames();
        data = new TreeMap<>();
        tempAttr = new ArrayList<>();
        tempValues = new ArrayList<>();

        String name = req.getParameter("name");
        System.out.println(name);
        loadDataToUpdate(req);
        updateData(data);
        System.out.println(data);

        req.getSession().setAttribute("dataUpdate", "Данные обновлены");


        resp.sendRedirect(req.getContextPath() + "/company?param1=" + URLEncoder.encode(name, "UTF-8"));



    }


    private void loadDataToUpdate(HttpServletRequest req) {

        while (attr.hasMoreElements()) {
            tempAttr.add(attr.nextElement());
        }

        while (value.hasMoreElements()) {
            tempValues.add(req.getParameter(value.nextElement()));
        }

        for (int i = 0; i < tempAttr.size(); i++) {
            data.put(tempAttr.get(i), tempValues.get(i));
        }
    }

    private void updateData(TreeMap<String, String> data) {
        Connection connection = (Connection) getServletContext().getAttribute("DBConnection");
        String table = null;
        String row = null;
        String nameCompany = null;
        for (Map.Entry<String, String> entry : data.entrySet()) {
            if (entry.getKey().equals("nameTable")) {
                table = entry.getValue();
            }
            if (entry.getKey().equals("row")) {
                row = entry.getValue();
            }
            if (entry.getKey().equals("name")) {
                nameCompany = entry.getValue();
            }
        }

        for (Map.Entry<String, String> entry : data.entrySet()) {
            if (tryParseInt(entry.getKey())) {
                String tableTemp = table + entry.getKey();
                if (checkRowTableDB(tableTemp, nameCompany, connection)) {
                    pushUpdateData(nameCompany, tableTemp, row, entry.getValue(), connection);
                } else {
                    createRowDB(nameCompany, tableTemp, row, entry.getValue(), connection);
                }

            } else {

            }
        }
    }

    private void createRowDB(String nameCompany, String table, String row, String value, Connection connection) {
        int id_main = checkIDMain(connection, table, nameCompany);
        String tiker = checkTiker(connection, table, nameCompany);

        try {
            String query = "INSERT INTO " + table + "(id_main, name, tiker, " + row + ") " +
                    "VALUES (?,?,?,?)";

            PreparedStatement st = connection.prepareStatement(query);
            st.setInt(1, id_main);
            st.setString(2, nameCompany);
            st.setString(3, tiker);
            st.setBigDecimal(4, BigDecimal.valueOf(Double.parseDouble(value)));
            st.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private boolean checkRowTableDB(String nameTable, String nameCompany, Connection connection) {
        String rowSetCheck = "SELECT * FROM " + nameTable + " WHERE NAME ='" + nameCompany + "'";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSetRow = statement.executeQuery(rowSetCheck);
            if (resultSetRow.next()) {
                return true;
            }
        } catch (SQLException e) {
            return false;
        }
        return false;
    }

    private void pushUpdateData(String nameCompany, String table, String row, String data, Connection connection) {
        try {
            String query = "UPDATE " + table + " SET " + row + " = ? WHERE name = ?";

            PreparedStatement st = connection.prepareStatement(query);
            st.setBigDecimal(1, BigDecimal.valueOf(Double.parseDouble(data)));
            st.setString(2, nameCompany);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private boolean tryParseInt(String s) {
        try {
            Integer.parseInt(s);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    private int checkIDMain(Connection connection, String nameTable, String nameCompany) {
        int result = 0;
        String name = nameTable.substring(0, nameTable.length() - 4) + "2018";

        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT id_main FROM " + name + " WHERE name = '" + nameCompany + "'");
            while (rs.next()) {
                result = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    private String checkTiker(Connection connection, String nameTable, String nameCompany) {
        String result = null;
        String name = nameTable.substring(0, nameTable.length() - 4) + "2018";
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT tiker FROM " + name + " WHERE name = '" + nameCompany + "'");
            while (rs.next()) {
                result = rs.getString(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }


}
