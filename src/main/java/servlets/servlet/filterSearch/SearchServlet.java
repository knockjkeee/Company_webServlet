package servlets.servlet.filterSearch;

import model.Years;
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
import java.util.Map;
import java.util.TreeMap;

@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
    private static final long serialVersionUID = -2116291438053798611L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ConvertFilterHtml convertHtml = new ConvertFilterHtml();
        StringBuilder sb = convertHtml.stringBuilder();
        Connection connection = (Connection) getServletContext().getAttribute("DBConnection");

        String nameSearch = req.getParameter("search");
        System.out.println(nameSearch);

        System.out.println(nameSearch.length());
        if (nameSearch.length() == 0) {

            StringBuilder result = new StringBuilder();
            result.append(searchNullQuery(createDataNullSearch(connection), sb));

            resp.setContentType("text/html; charset=UTF-8");
            PrintWriter out = resp.getWriter();
            out.write(result.toString());

        } else {
            StringBuilder result = new StringBuilder();
            result.append(searchNotNullQuery(createDataNotNullSearch(nameSearch, connection), sb));
            resp.setContentType("text/html; charset=UTF-8");
            PrintWriter out = resp.getWriter();
            out.write(result.toString());
        }


    }

    public TreeMap<String, TheMultiplier> createDataNullSearch(Connection connection) {
//        Connection connection = (Connection) getServletContext().getAttribute("DBConnection");
        CheckDataDBble checkDataDB = new LoadDataDB();
        DataAboutBalance dataAboutBalance = checkDataDB.getDataAboutBalance();
        FinancialData financialData = checkDataDB.getFinancialData();
        MarketData marketData = checkDataDB.getMarketData();
        TreeMap<String, TheMultiplier> multiMap = new TreeMap<>();
        SqlQuery.indexMathMultiplier(connection, dataAboutBalance, financialData, marketData, multiMap);
        return multiMap;
    }

    public StringBuilder searchNullQuery(TreeMap<String, TheMultiplier> data, StringBuilder sb) {
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

    public TreeMap<String, TheMultiplier> createDataNotNullSearch(String nameSearch, Connection connection) {
//        Connection connection = (Connection) getServletContext().getAttribute("DBConnection");
        TreeMap<Integer, Data> mapDataAboutBalance = new TreeMap<>();
        TreeMap<Integer, Data> mapFinancialData = new TreeMap<>();
        TreeMap<Integer, Data> mapMarketData = new TreeMap<>();
        TreeMap<String, TheMultiplier> multi = new TreeMap<>();

        CheckDataDBble checkDataDB = new LoadDataDB();
        DataAboutBalance dataAboutBalance = checkDataDB.getDataAboutBalance();
        FinancialData financialData = checkDataDB.getFinancialData();
        MarketData marketData = checkDataDB.getMarketData();
        loadDataTableCompanyPage(nameSearch, connection, mapDataAboutBalance, mapFinancialData, mapMarketData, multi, dataAboutBalance, financialData, marketData);

        return multi;
    }

    public StringBuilder searchNotNullQuery(TreeMap<String, TheMultiplier> data, StringBuilder sb) {
        for (Map.Entry<String, TheMultiplier> entry : data.entrySet()) {
            if (entry.getKey().equals(String.valueOf(Years.Seven.index()))) {
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
        }
        return sb;
    }

    private void loadDataTableCompanyPage(String name, Connection connection, TreeMap<Integer, Data> mapDataAboutBalance, TreeMap<Integer, Data> mapFinancialData, TreeMap<Integer, Data> mapMarketData, TreeMap<String, TheMultiplier> multi, DataAboutBalance dataAboutBalance, FinancialData financialData, MarketData marketData) {
        SqlQuery.checkTableInDBDataTableForCompany(dataAboutBalance, connection, mapDataAboutBalance, name);
        SqlQuery.checkTableInDBDataTableForCompany(financialData, connection, mapFinancialData, name);
        SqlQuery.checkTableInDBDataTableForCompany(marketData, connection, mapMarketData, name);
        SqlQuery.checkMathMultiplierForCompany(mapDataAboutBalance, mapFinancialData, mapMarketData, multi);
    }
}
