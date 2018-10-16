package servlets.servlet;

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

@WebServlet("/IndustryServlet")
public class IndustryServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StringBuilder sb = new StringBuilder();
        sb.append("<tr><br>")
                .append("<th><p>Компания</p></th><br>")
                .append("<th><p></p>Тикер</th><br>")
                .append("<th><p>Рыночная капитализация</p></th><br>")
                .append("<th><p>P/E</p></th><br>")
                .append("<th><p>P/S</p></th><br>")
                .append("<th><p>P/BV</p></th><br>")
                .append("<th><p>EV/EBITDA</p></th><br>")
                .append("<th><p>EV/S</p></th><br>")
                .append("<th><p>DEBT/EBITDA</p></th><br>")
                .append("<th><p>ROE</p></th><br></tr><br>");

        Connection connection = (Connection) getServletContext().getAttribute("DBConnection");
        String rSet = "SELECT company_dynamic.name as 'name', company_dynamic.tiker as 'tiker', company_dynamic.market_price as 'market_price', company_dynamic.p_e as 'p_e'," +
                "  company_dynamic.p_s as 'p_s', company_dynamic.p_bv as 'p_bv', company_dynamic.ev_ebitda as 'ev_ebitda', company_dynamic.ev_s as 'ev_s'," +
                "  company_dynamic.debt_ebita as 'debt_ebita', company_dynamic.roe as 'roe'" +
                "FROM industry INNER JOIN company_dynamic on (industry.test_id = company_dynamic.id_company) WHERE industry.name = 'gaz'";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(rSet);
            while (resultSet.next()) {
                sb.append("<tr><br>");
                String name = resultSet.getString(1);
                String tiker = resultSet.getString(2);
                int market_price = resultSet.getInt(3);
                double p_e = resultSet.getDouble(4);
                double p_s = resultSet.getDouble(5);
                double p_bv = resultSet.getDouble(6);
                double ev_ebitda = resultSet.getDouble(7);
                double ev_s = resultSet.getDouble(8);
                double debt_ebita = resultSet.getDouble(9);
                int roe = resultSet.getInt(10);

                sb.append("<td>" + name + "</td><br>")
                        .append("<td>" + tiker + "</td><br>")
                        .append("<td>" + market_price + "</td><br>")
                        .append("<td>" + p_e + "</td><br>")
                        .append("<td>" + p_s + "</td><br>")
                        .append("<td>" + p_bv + "</td><br>")
                        .append("<td>" + ev_ebitda + "</td><br>")
                        .append("<td>" + ev_s + "</td><br>")
                        .append("<td>" + debt_ebita + "</td><br>")
                        .append("<td>" + roe + "</td><br></tr>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


//        connection.is


//        req.getRequestDispatcher("/WEB-INF/js/jquery.jsp").forward(req, resp);
//        File file = new File(getServletContext().getRealPath("/"), "\\WEB-INF\\view\\gas.jsp");
//        File file = new File();
//        file.
//
//        FileWriter fW = new FileWriter(file);
//        fW.close();

//        String temp = file.getName();

//
//        FileReader fr = new FileReader(file);
//        int c;
//        while ((c = fr.read()) != -1) {
//            sb.append((char) c);
//        }

        String temp1 = sb.toString();

        System.out.println(sb.toString());
//        resp.setContentType("text/plain");
        resp.setContentType("text/html; charset=UTF-8");
        PrintWriter out = resp.getWriter();
//        resp.setCharacterEncoding("UTF-8");
        out.write("Работает? " + temp1);
//        fr.close();

    }
}
