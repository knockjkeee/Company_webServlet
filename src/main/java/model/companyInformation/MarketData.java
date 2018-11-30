package model.companyInformation;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.TreeMap;

public class MarketData implements Data, Serializable{
    private static final long serialVersionUID = 6646030700705212555L;

    private String name;
    private int numberAO;
    private int priceAO;
    private int numberAP;
    private int priceAP;
    private int capitalization;
    private TreeMap<String, MarketData> mapMarket;

    public MarketData() {
    }

    private void setMarketDataForMulty(String name, int numberAO, int priceAO, int numberAP, int priceAP, int capitalization){
        this.name = name;
        this.numberAO = numberAO;
        this.priceAO = priceAO;
        this.numberAP = numberAP;
        this.priceAP = priceAP;
        this.capitalization = capitalization;
    }

    private void setMarketData(int numberAO, int priceAO, int numberAP, int priceAP, int capitalization) {
        this.numberAO = numberAO;
        this.priceAO = priceAO;
        this.numberAP = numberAP;
        this.priceAP = priceAP;
        this.capitalization = capitalization;
    }

    public TreeMap<String, MarketData> getMapMarket() {
        return mapMarket;
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
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(Rset);
            while (resultSet.next()) {
                setMarketData(resultSet.getInt(1), resultSet.getInt(2), resultSet.getInt(3), resultSet.getInt(4),
                        resultSet.getInt(5));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void loadDataForMulty(Connection connection, String Rset) {
        mapMarket = new TreeMap<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(Rset);
            while (resultSet.next()) {
                String name = resultSet.getString(8);
                setMarketDataForMulty(resultSet.getString(8), resultSet.getInt(10), resultSet.getInt(11), resultSet.getInt(12), resultSet.getInt(13),
                        resultSet.getInt(14) );
                mapMarket.put(name, this);
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
