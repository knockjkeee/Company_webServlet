package model.companyInformation;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MarketData {
    private int numberAO;
    private int priceAO;
    private int numberAP;
    private int priceAP;
    private int capitalization;


    public MarketData() {
    }

    private void setMarketData(int numberAO, int priceAO, int numberAP, int priceAP, int capitalization) {
        this.numberAO = numberAO;
        this.priceAO = priceAO;
        this.numberAP = numberAP;
        this.priceAP = priceAP;
        this.capitalization = capitalization;
    }

    public int getNumberAO() {
        return numberAO;
    }

    public int getPriceAO() {
        return priceAO;
    }

    public int getNumberAP() {
        return numberAP;
    }

    public int getPriceAP() {
        return priceAP;
    }

    public int getCapitalization() {
        return capitalization;
    }

    public void loadData(Connection connection, String Rset) {
        Connection con = connection;
        try {
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery(Rset);
            while (resultSet.next()) {
                setMarketData(resultSet.getInt(1), resultSet.getInt(2), resultSet.getInt(3), resultSet.getInt(4),
                        resultSet.getInt(5));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public String toString() {
        return "MarketData{" +
                "numberAO=" + numberAO +
                ", priceAO=" + priceAO +
                ", numberAP=" + numberAP +
                ", priceAP=" + priceAP +
                ", capitalization=" + capitalization +
                '}';
    }
}
