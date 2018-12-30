package model.companyInformation;

import java.io.Serializable;
import java.sql.*;
import java.util.TreeMap;

public class DataAboutBalance implements Data, Serializable{

    private static final long serialVersionUID = 164476569777790030L;

    private String name;
    private double cash;
    private double currentAssets;
    private double nonCurrentAssets;
    private double totalAssets;
    private double shortTermLiabilities;
    private double longTermLiabilities;
    private double totalLiabilities;
    private double totalCapital;
    private TreeMap<String, DataAboutBalance> mapData;

    public DataAboutBalance() {
    }

    private void setDataAboutBalanceForMulty(String name, double cash, double currentAssets, double nonCurrentAssets, double totalAssets, double shortTermLiabilities, double longTermLiabilities, double totalLiabilities, double totalCapital) {
        this.name = name;
        this.cash = cash;
        this.currentAssets = currentAssets;
        this.nonCurrentAssets = nonCurrentAssets;
        this.totalAssets = totalAssets;
        this.shortTermLiabilities = shortTermLiabilities;
        this.longTermLiabilities = longTermLiabilities;
        this.totalLiabilities = totalLiabilities;
        this.totalCapital = totalCapital;
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

    public DataAboutBalance(String cash, String nonCurrentAssets,String currentAssets, String totalAssets, String shortTermLiabilities ,String longTermLiabilities,String totalLiabilities , String totalCapital ) {
        this.cash = Double.parseDouble(cash);
        this.nonCurrentAssets = Double.parseDouble(nonCurrentAssets);
        this.currentAssets = Double.parseDouble(currentAssets);
        this.totalAssets = Double.parseDouble(totalAssets);
        this.shortTermLiabilities = Double.parseDouble(shortTermLiabilities);
        this.longTermLiabilities = Double.parseDouble(longTermLiabilities);
        this.totalLiabilities = Double.parseDouble(totalLiabilities);
        this.totalCapital = Double.parseDouble(totalCapital);
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

    public TreeMap<String, DataAboutBalance> getMapData() {
        return mapData;
    }

    public void loadData(Connection connection, String rSet) {
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(rSet);
            while (resultSet.next()) {
                setDataAboutBalance(resultSet.getDouble(1), resultSet.getDouble(2), resultSet.getDouble(3), resultSet.getDouble(4),
                        resultSet.getDouble(5), resultSet.getDouble(6), resultSet.getDouble(7), resultSet.getDouble(8));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void loadDataForMulty(Connection connection, String rSet) {
        mapData = new TreeMap<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(rSet);
            while (resultSet.next()) {
                String name = resultSet.getString(8);
                DataAboutBalance temp  = new DataAboutBalance();
                temp.setDataAboutBalanceForMulty(resultSet.getString(8),resultSet.getDouble(10), resultSet.getDouble(11), resultSet.getDouble(12), resultSet.getDouble(13),
                        resultSet.getDouble(14), resultSet.getDouble(15), resultSet.getDouble(16), resultSet.getDouble(17) );
                mapData.put(name, temp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void pushData(Connection connection, int id_main, String name, String tiker) {
        try {
            String query = "INSERT INTO dataaboutbalance2018(id_main, name, tiker, cash, currentAssets, nonCurrentAssets, totalAssets, shortTermLiabilities, longTermLiabilities, totalLiabilities, totalCapital) " +
                    "VALUES (?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement st = connection.prepareStatement(query);
            st.setInt(1, id_main);
            st.setString(2, name);
            st.setString(3, tiker);
            st.setDouble(4, cash);
            st.setDouble(5,currentAssets);
            st.setDouble(6, nonCurrentAssets);
            st.setDouble(7, totalAssets);
            st.setDouble(8, shortTermLiabilities);
            st.setDouble(9, longTermLiabilities);
            st.setDouble(10, totalLiabilities);
            st.setDouble(11, totalCapital);
            st.executeUpdate();

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
