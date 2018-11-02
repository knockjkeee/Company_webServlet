package servlets.servlet.filterSearch;

import dao.SQLStatementIndustry;
import servlets.until.ConvertFilterHtml;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ConvertFilterHtml convertHtml = new ConvertFilterHtml();
        StringBuilder sb = convertHtml.stringBuilder();
        Connection connection = (Connection) getServletContext().getAttribute("DBConnection");

        String nameSearch = req.getParameter("search");
        System.out.println(nameSearch);

        System.out.println(nameSearch.length());
        if (nameSearch.length() == 0) {
            String rSet = "SELECT company_dynamic.name as 'name', company_dynamic.tiker as 'tiker', company_dynamic.market_price as 'market_price', company_dynamic.p_e as 'p_e'," +
                    "                company_dynamic.p_s as 'p_s', company_dynamic.p_bv as 'p_bv', company_dynamic.ev_ebitda as 'ev_ebitda', company_dynamic.ev_s as 'ev_s'," +
                    "                company_dynamic.debt_ebita as 'debt_ebita', company_dynamic.roe as 'roe'" +
                    "                FROM company_dynamic";
            StringBuilder result = new StringBuilder();
            SQLStatementIndustry sqlStatementIndustry = SQLStatementIndustry.getInstance();

            try {
                result.append(sqlStatementIndustry.statement(connection, rSet, sb));
            } catch (SQLException e) {
                e.printStackTrace();
            }

            resp.setContentType("text/html; charset=UTF-8");
            PrintWriter out = resp.getWriter();
            out.write(result.toString());

        } else {

            String rSet = "SELECT * FROM company_dynamic WHERE name ='" + nameSearch + "'";

            StringBuilder result = new StringBuilder();
            SQLStatementIndustry sqlStatementIndustry = SQLStatementIndustry.getInstance();

            try {
                result.append(sqlStatementIndustry.statementSearch(connection, rSet, sb));
            } catch (SQLException e) {
                e.printStackTrace();
            }

            resp.setContentType("text/html; charset=UTF-8");
            PrintWriter out = resp.getWriter();
            out.write(result.toString());
        }


    }
}
