package servlets.servlet.filterSearch;

import model.companyInformation.DataAboutBalance;
import model.companyInformation.FinancialData;
import model.companyInformation.MarketData;
import model.companyInformation.TheMultiplier;
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

@WebServlet("/YearServlet")
public class YearServlet extends HttpServlet {
    private static final long serialVersionUID = 1708773023331026313L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ConvertFilterHtml convertHtml = new ConvertFilterHtml();
        StringBuilder sb = convertHtml.stringBuilder();
        StringBuilder result = new StringBuilder();

        String nameYear = req.getParameter("year");
        String ind = req.getParameter("ind");

        System.out.println(ind);
        System.out.println(nameYear);

        Connection connection = (Connection) getServletContext().getAttribute("DBConnection");

        String rsetOptional = query(ind);
        ArrayList<String> stringOptional = new ArrayList<>();
        stringOptional.addAll(companyOptional(connection, rsetOptional));

        System.out.println(stringOptional);


        CheckDataDBble checkDataDB = new LoadDataDB();
        DataAboutBalance dataAboutBalance = checkDataDB.getDataAboutBalance();
        FinancialData financialData = checkDataDB.getFinancialData();
        MarketData marketData = checkDataDB.getMarketData();
        TreeMap<String, TheMultiplier> multiMap = new TreeMap<>();

        SqlQuery.indexMathMultiplierMain(connection, dataAboutBalance, financialData, marketData, multiMap, nameYear, stringOptional);
        result.append(searchNotNullQuery(multiMap, sb));

        resp.setContentType("text/html; charset=UTF-8");
        PrintWriter out = resp.getWriter();
        out.write(result.toString());

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
                    .append("<td>" + entry.getValue().getROE() + " %</td><br></tr>");
        }
//        }
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
}
