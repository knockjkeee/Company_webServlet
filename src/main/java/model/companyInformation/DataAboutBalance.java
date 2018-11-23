package model.companyInformation;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DataAboutBalance implements LoadDatable, Serializable{

    private static final long serialVersionUID = 164476569777790030L;
    private double cash;
    private double currentAssets;
    private double nonCurrentAssets;
    private double totalAssets;
    private double shortTermLiabilities;
    private double longTermLiabilities;
    private double totalLiabilities;
    private double totalCapital;

    public DataAboutBalance() {
    }

    private void setDataAboutBalance(double cash, double currentAssets, double nonCurrentAssets, double totalAssets, double shortTermLiabilities, double longTermLiabilities, double totalLiabilities, double totalCapital) {
        this.cash = cash;
        this.currentAssets = currentAssets;
        this.nonCurrentAssets = nonCurrentAssets;
        this.totalAssets = totalAssets;
        this.shortTermLiabilities = shortTermLiabilities;
        this.longTermLiabilities = longTermLiabilities;
        this.totalLiabilities = totalLiabilities;
        this.totalCapital = totalCapital;
    }

    public double getCash() {
        return cash;
    }

    public double getCurrentAssets() {
        return currentAssets;
    }

    public double getNonCurrentAssets() {
        return nonCurrentAssets;
    }

    public double getTotalAssets() {
        return totalAssets;
    }

    public double getShortTermLiabilities() {
        return shortTermLiabilities;
    }

    public double getLongTermLiabilities() {
        return longTermLiabilities;
    }

    public double getTotalLiabilities() {
        return totalLiabilities;
    }

    public double getTotalCapital() {
        return totalCapital;
    }

    public void loadData(Connection connection, String Rset) {
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(Rset);
            while (resultSet.next()) {
                setDataAboutBalance(resultSet.getDouble(1), resultSet.getDouble(2), resultSet.getDouble(3), resultSet.getDouble(4),
                        resultSet.getDouble(5), resultSet.getDouble(6), resultSet.getDouble(7), resultSet.getDouble(8));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public String toString() {
        return "DataAboutBalance{" +
                "cash=" + cash +
                ", currentAssets=" + currentAssets +
                ", nonCurrentAssets=" + nonCurrentAssets +
                ", totalAssets=" + totalAssets +
                ", shortTermLiabilities=" + shortTermLiabilities +
                ", longTermLiabilities=" + longTermLiabilities +
                ", totalLiabilities=" + totalLiabilities +
                ", totalCapital=" + totalCapital +
                '}';
    }
}
