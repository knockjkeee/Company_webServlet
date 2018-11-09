package servlets.servlet.filterSearch;

import dao.SQLStatementIndustry;
import until.ConvertFilterHtml;
import until.SqlString;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet("/OptionalServlet")
public class OptionalServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ConvertFilterHtml convertHtml = new ConvertFilterHtml();
        StringBuilder sb = convertHtml.stringBuilder();
        Connection connection = (Connection) getServletContext().getAttribute("DBConnection");
        String nameSearch = req.getParameter("optional");
        System.out.println(nameSearch);

        String rSet = SqlString.getOptional(nameSearch);


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
