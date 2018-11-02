package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SQLStatementIndustry {

    private Statement statement;
    private ResultSet resultSet;

    private static SQLStatementIndustry ourInstance = new SQLStatementIndustry();

    public static SQLStatementIndustry getInstance() {
        return ourInstance;
    }

    private SQLStatementIndustry() {

    }

    public StringBuilder statement(Connection connection, String rSet, StringBuilder sb) throws SQLException {
        this.statement = connection.createStatement();
        this.resultSet = statement.executeQuery(rSet);
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

            sb.append("<td> <a href=\"/company?param1=" + name + "\">" + name + "</a></td><br>")
//            sb.append("<td><a href=\"/company?param1=" + name + "\"/>" + name + "</a></td><br>")
//                    <a href="<c:url value="/company?param1="+name +"/>"><c:out value="name"/></a>
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
        return sb;
    }

    public StringBuilder statementSearch(Connection connection, String rSet, StringBuilder sb) throws SQLException {
        this.statement = connection.createStatement();
        this.resultSet = statement.executeQuery(rSet);
        while (resultSet.next()) {
            sb.append("<tr><br>");
            String name = resultSet.getString(2);
            String tiker = resultSet.getString(3);
            int market_price = resultSet.getInt(4);
            double p_e = resultSet.getDouble(5);
            double p_s = resultSet.getDouble(6);
            double p_bv = resultSet.getDouble(7);
            double ev_ebitda = resultSet.getDouble(8);
            double ev_s = resultSet.getDouble(9);
            double debt_ebita = resultSet.getDouble(10);
            int roe = resultSet.getInt(11);

//            sb.append("<td>" + name + "</td><br>")
            sb.append("<td> <a href=\"/company?param1=" + name + "\">" + name + "</a></td><br>")

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
        return sb;
    }


}
