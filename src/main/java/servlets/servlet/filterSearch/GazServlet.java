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

@WebServlet("/GazServlet")
public class GazServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ConvertFilterHtml convertHtml = new ConvertFilterHtml();
        StringBuilder sb = convertHtml.stringBuilder();
        Connection connection = (Connection) getServletContext().getAttribute("DBConnection");

        String nameSearch = req.getParameter("gaz");
        String rSet = "SELECT company_dynamic.name as 'name', company_dynamic.tiker as 'tiker', company_dynamic.market_price as 'market_price', company_dynamic.p_e as 'p_e'," +
                "  company_dynamic.p_s as 'p_s', company_dynamic.p_bv as 'p_bv', company_dynamic.ev_ebitda as 'ev_ebitda', company_dynamic.ev_s as 'ev_s'," +
                "  company_dynamic.debt_ebita as 'debt_ebita', company_dynamic.roe as 'roe'" +
                "FROM industry INNER JOIN company_dynamic on (industry.test_id = company_dynamic.id_company) WHERE industry.name ='" + nameSearch + "'";

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
    }
}
