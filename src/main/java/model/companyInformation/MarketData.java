package model.companyInformation;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.TreeMap;

public class MarketData implements Data, Serializable {
    private static final long serialVersionUID = 1476494097217061294L;

    private String name;
    private String tiker;
    private int numberAO;
    private int priceAO;
    private int numberAP;
    private int priceAP;
    private int capitalization;
    private TreeMap<String, MarketData> mapMarket;

    public MarketData() {
    }

    private void setMarketDataForMulty(String name, String tiker, int numberAO, int priceAO, int numberAP, int priceAP, int capitalization) {
        this.name = name;
        this.tiker = tiker;
        this.numberAO = numberAO;
        this.priceAO = priceAO;
        this.numberAP = numberAP;
        this.priceAP = priceAP;
        this.capitalization = capitalization;
    }

    private void setMarketData(String name, String tiker, int numberAO, int priceAO, int numberAP, int priceAP, int capitalization) {
        this.name = name;
        this.tiker = tiker;
        this.numberAO = numberAO;
        this.priceAO = priceAO;
        this.numberAP = numberAP;
        this.priceAP = priceAP;
        this.capitalization = capitalization;
    }

    public void setMarketDataForMainPage(String name, String tiker, int capitalization) {
        this.name = name;
        this.tiker = tiker;
        this.capitalization = capitalization;
    }

    public TreeMap<String, MarketData> getMapMarket() {
        return mapMarket;
    }

    public String getName() {
        return name;
    }

    public String getTiker() {
        return tiker;
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

    public void loadData(Connection connection, String rSet) {
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(rSet);
            while (resultSet.next()) {
                setMarketData(resultSet.getString(6),resultSet.getString(7),resultSet.getInt(1), resultSet.getInt(2), resultSet.getInt(3), resultSet.getInt(4),
                        resultSet.getInt(5));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void loadDataForMulty(Connection connection, String rSet) {
        mapMarket = new TreeMap<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(rSet);
            while (resultSet.next()) {
                String name = resultSet.getString(8);
                MarketData temp = new MarketData();
                temp.setMarketDataForMulty(resultSet.getString(8), resultSet.getString(9), resultSet.getInt(10), resultSet.getInt(11), resultSet.getInt(12), resultSet.getInt(13),
                        resultSet.getInt(14));
                mapMarket.put(name, temp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public TreeMap<String, Data> loadMainPageData(Connection connection, String rSet) {
        TreeMap<String, Data> result = new TreeMap<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(rSet);
            while (resultSet.next()) {
                String name = resultSet.getString(1);
                MarketData data = new MarketData();
                data.setMarketDataForMainPage(resultSet.getString(1), resultSet.getString(2), resultSet.getInt(3));
                result.put(name, data);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
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
