package model.companyInformation;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.*;
import java.util.TreeMap;

public class MarketData implements Data, Serializable {
    private static final long serialVersionUID = 1476494097217061294L;

    private String name;
    private String tiker;
    private long numberAO;
    private BigDecimal priceAO;
    private BigDecimal numberAP;
    private BigDecimal priceAP;
    private BigDecimal capitalization;
    private TreeMap<String, MarketData> mapMarket;

    public MarketData() {
    }

    public MarketData(String numberAO,String priceAO, String numberAP, String priceAP ) {
        this. numberAO = Long.parseLong(numberAO);
        this.priceAO = BigDecimal.valueOf(Double.parseDouble(priceAO));
        this.numberAP = BigDecimal.valueOf(Double.parseDouble(numberAP));
        this.priceAP = BigDecimal.valueOf(Double.parseDouble(priceAP));

    }

    private void setMarketDataForMulty(String name, String tiker, long numberAO, BigDecimal priceAO, BigDecimal numberAP, BigDecimal priceAP) {
        this.name = name;
        this.tiker = tiker;
        this.numberAO = numberAO;
        this.priceAO = priceAO.setScale(2 , RoundingMode.CEILING);
        this.numberAP = numberAP.setScale(2 , RoundingMode.CEILING);
        this.priceAP = priceAP.setScale(2 , RoundingMode.CEILING);
        setCapitalization(numberAO,priceAO, numberAP, priceAP);
        this.capitalization = capitalization;
    }

    private void setMarketData(String name, String tiker, long numberAO, BigDecimal priceAO, BigDecimal numberAP, BigDecimal priceAP) {
        this.name = name;
        this.tiker = tiker;
        this.numberAO = numberAO;
        this.priceAO = priceAO.setScale(2 , RoundingMode.CEILING);
        this.numberAP = numberAP.setScale(2 , RoundingMode.CEILING);
        this.priceAP = priceAP.setScale(2 , RoundingMode.CEILING);
        setCapitalization(numberAO,priceAO, numberAP, priceAP);
        this.capitalization = capitalization;
    }

    public void setMarketDataForMainPage(String name, String tiker, BigDecimal capitalization) {
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

    public void setCapitalization(long numberAO, BigDecimal priceAO, BigDecimal numberAP, BigDecimal priceAP  ) {

        BigDecimal numberAOTemp = numberAP;
//        this.capitalization = ((BigDecimal.valueOf(numberAO)*priceAO)+(numberAP*priceAP));
        this.capitalization = numberAOTemp.multiply(priceAO).add(numberAP.multiply(priceAP)).setScale(2 , RoundingMode.CEILING);
    }

    public long getNumberAO() {
        return numberAO;
    }

    public BigDecimal getPriceAO() {
        return priceAO;
    }

    public BigDecimal getNumberAP() {
        return numberAP;
    }

    public BigDecimal getPriceAP() {
        return priceAP;
    }

    public BigDecimal getCapitalization() {
        return capitalization;
    }

    public void loadData(Connection connection, String rSet) {
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(rSet);
            while (resultSet.next()) {
                setMarketData(resultSet.getString(6),resultSet.getString(7),resultSet.getLong(1), resultSet.getBigDecimal(2),
                        resultSet.getBigDecimal(3), resultSet.getBigDecimal(4));
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
                temp.setMarketDataForMulty(resultSet.getString(8), resultSet.getString(9), resultSet.getLong(10), resultSet.getBigDecimal(11),
                        resultSet.getBigDecimal(12), resultSet.getBigDecimal(13));
                mapMarket.put(name, temp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void pushData(Connection connection, int id_main, String name, String tiker) {
        try {
            String query = "INSERT INTO marketdata2018(id_main, name, tiker, numberAO, priceAO, numberAP, priceAP) " +
                    "VALUES (?,?,?,?,?,?,?)";
            PreparedStatement st = connection.prepareStatement(query);
            st.setInt(1, id_main);
            st.setString(2, name);
            st.setString(3, tiker);
            st.setLong(4, numberAO);
            st.setBigDecimal(5, priceAO);
            st.setBigDecimal(6, numberAP);
            st.setBigDecimal(7, priceAP);
            st.executeUpdate();

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
                data.setMarketDataForMainPage(resultSet.getString(1), resultSet.getString(2), resultSet.getBigDecimal(3));
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
