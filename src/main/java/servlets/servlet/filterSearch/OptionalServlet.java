package servlets.servlet.filterSearch;

import model.companyInformation.*;
import until.CheckDataDBble;
import until.ConvertFilterHtml;
import until.LoadDataDB;
import until.SqlQuery;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;

@WebServlet("/OptionalServlet")
public class OptionalServlet extends HttpServlet {
    private static final long serialVersionUID = 127572488215928155L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ConvertFilterHtml convertHtml = new ConvertFilterHtml();
        StringBuilder sb = convertHtml.stringBuilder();
        Connection connection = (Connection) getServletContext().getAttribute("DBConnection");
        String nameSearch = req.getParameter("optional");
        String year = req.getParameter("year");

        System.out.println(nameSearch);
        System.out.println(year);

        String rSet = SqlQuery.getOptional(nameSearch);

        //TODO

        String rsetOptional = query(nameSearch);
        StringBuilder result = new StringBuilder();

        ArrayList<String> stringOptional = new ArrayList<>();
        stringOptional.addAll(companyOptional(connection, rsetOptional));

        if (year.equals("Выберите год")) {
            result.append(searchNotNullQuery(createDataNotNullSearch(stringOptional, connection, "2018"), sb));
        } else {
            result.append(searchNotNullQuery(createDataNotNullSearch(stringOptional, connection, year), sb));
        }

//        result.append(searchNotNullQuery(createDataNotNullSearch(stringOptional, connection),sb ));

//        SQLStatementIndustry sqlStatementIndustry = SQLStatementIndustry.getInstance();
//        try {
//            result.append(sqlStatementIndustry.statement(connection, rSet, sb));
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }


        resp.setContentType("text/html; charset=UTF-8");
        PrintWriter out = resp.getWriter();
        out.write(result.toString());
    }



    public StringBuilder searchQuery(TreeMap<String, TheMultiplier> data, StringBuilder sb) {
        for (Map.Entry<String, TheMultiplier> entry : data.entrySet()) {
            sb.append("<td> <a href=\"/company?param1=" + entry.getKey() + "\">" + entry.getKey() + "</a></td><br>")
                    .append("<td>" + entry.getValue().getTiker() + "</td><br>")
                    .append("<td>" + entry.getValue().getCapitalization() + " &#8381</td><br>")
                    .append("<td>" + entry.getValue().getP_E() + "</td><br>")
                    .append("<td>" + entry.getValue().getP_S() + "</td><br>")
                    .append("<td>" + entry.getValue().getP_BV() + "</td><br>")
                    .append("<td>" + entry.getValue().getEV_EBITDA() + "</td><br>")
                    .append("<td>" + entry.getValue().getEV_S() + "</td><br>")
                    .append("<td>" + entry.getValue().getDEBT_EBITDA() + " &#8381</td><br>")
                    .append("<td>" + entry.getValue().getROE()+ " %</td><br></tr>");
        }
        return sb;
    }

    public String query(String nameSearch) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT company.name as 'name' FROM industry INNER JOIN company on (industry.test_id = company.id) WHERE industry.name ='")
                .append(nameSearch).append("'");
//        SELECT company.name as 'name' FROM industry INNER JOIN company on (industry.test_id = company.id) WHERE industry.name ='oil';
        return sb.toString();
    }

    public ArrayList<String> companyOptional(Connection connection, String query) {
        ArrayList<String> result = new ArrayList<>();
        Statement statement = null;
        try {
            statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                String temp = resultSet.getString(1);
                result.add(temp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public TreeMap<String, TheMultiplier> createDataNotNullSearch(ArrayList<String> nameSearch, Connection connection, String year) {
//        Connection connection = (Connection) getServletContext().getAttribute("DBConnection");
        TreeMap<Integer, Data> mapDataAboutBalance = new TreeMap<>();
        TreeMap<Integer, Data> mapFinancialData = new TreeMap<>();
        TreeMap<Integer, Data> mapMarketData = new TreeMap<>();
        TreeMap<String, TheMultiplier> multi = new TreeMap<>();

        TreeMap<String, TheMultiplier> result = new TreeMap<>();

        CheckDataDBble checkDataDB = new LoadDataDB();
        DataAboutBalance dataAboutBalance = checkDataDB.getDataAboutBalance();
        FinancialData financialData = checkDataDB.getFinancialData();
        MarketData marketData = checkDataDB.getMarketData();

        int count = 0;

        for (String name : nameSearch) {
            SqlQuery.checkTableInDBDataTableForCompany(dataAboutBalance, connection, mapDataAboutBalance, name);
            SqlQuery.checkTableInDBDataTableForCompany(financialData, connection, mapFinancialData, name);
            SqlQuery.checkTableInDBDataTableForCompany(marketData, connection, mapMarketData, name);
            SqlQuery.checkMathMultiplierForCompany(mapDataAboutBalance, mapFinancialData, mapMarketData, multi);

            System.out.println(multi);

            for (Map.Entry<String, TheMultiplier> entry : multi.entrySet()) {
//                if (entry.getKey().equals(String.valueOf(Years.Seven.index()))) { //тут надо менять аргумент
                if (entry.getKey().equals(year)) { //тут надо менять аргумент
                    if (entry.getValue().getName() != null) {
                        result.put(entry.getKey() + count, entry.getValue());
                        count++;
                    }
                }
            }
        }

        return result;
    }

    public StringBuilder searchNotNullQuery(TreeMap<String, TheMultiplier> data, StringBuilder sb) {
        for (Map.Entry<String, TheMultiplier> entry : data.entrySet()) {
//            if (entry.getKey().equals(String.valueOf(Years.Seven.index()))) {
            sb.append("<td> <a href=\"/company?param1=" + entry.getValue().getName() + "\">" + entry.getValue().getName() + "</a></td><br>")
                    .append("<td>" + entry.getValue().getTiker() + "</td><br>")
                    .append("<td>" + entry.getValue().getCapitalization() + " &#8381</td><br>")
                    .append("<td>" + entry.getValue().getP_E() + "</td><br>")
                    .append("<td>" + entry.getValue().getP_S() + "</td><br>")
                    .append("<td>" + entry.getValue().getP_BV() + "</td><br>")
                    .append("<td>" + entry.getValue().getEV_EBITDA() + "</td><br>")
                    .append("<td>" + entry.getValue().getEV_S() + "</td><br>")
                    .append("<td>" + entry.getValue().getDEBT_EBITDA() + " &#8381</td><br>")
                    .append("<td>" + entry.getValue().getROE()+ " %</td><br></tr>");
        }
//        }
        return sb;
    }

    private void loadDataTableCompanyPage(String name, Connection connection, TreeMap<Integer, Data> mapDataAboutBalance, TreeMap<Integer, Data> mapFinancialData, TreeMap<Integer, Data> mapMarketData, TreeMap<String, TheMultiplier> multi, DataAboutBalance dataAboutBalance, FinancialData financialData, MarketData marketData) {
        SqlQuery.checkTableInDBDataTableForCompany(dataAboutBalance, connection, mapDataAboutBalance, name);
        SqlQuery.checkTableInDBDataTableForCompany(financialData, connection, mapFinancialData, name);
        SqlQuery.checkTableInDBDataTableForCompany(marketData, connection, mapMarketData, name);
        SqlQuery.checkMathMultiplierForCompany(mapDataAboutBalance, mapFinancialData, mapMarketData, multi);
    }

}
