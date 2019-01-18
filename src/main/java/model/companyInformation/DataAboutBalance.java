package model.companyInformation;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.*;
import java.util.TreeMap;

public class DataAboutBalance implements Data, Serializable{

    private static final long serialVersionUID = 164476569777790030L;

    private String name;
    private BigDecimal cash;
    private BigDecimal currentAssets;
    private BigDecimal nonCurrentAssets;
    private BigDecimal totalAssets;
    private BigDecimal shortTermLiabilities;
    private BigDecimal longTermLiabilities;
    private BigDecimal totalLiabilities;
    private BigDecimal totalCapital;
    private TreeMap<String, DataAboutBalance> mapData;

    public DataAboutBalance() {
        setEmptyDataBigDecimal();
    }


    public void setEmptyDataBigDecimal() {
        this.cash = new BigDecimal(0.00);
        this.currentAssets = new BigDecimal(0.00);
        this.nonCurrentAssets = new BigDecimal(0.00);
        this.totalAssets = new BigDecimal(0.00);
        this.shortTermLiabilities = new BigDecimal(0.00);
        this.longTermLiabilities = new BigDecimal(0.00);
        this.totalLiabilities = new BigDecimal(0.00);
        this.totalCapital = new BigDecimal(0.00);
    }

    private void setDataAboutBalanceForMulty(String name, BigDecimal cash, BigDecimal currentAssets,
                                             BigDecimal nonCurrentAssets, BigDecimal totalAssets, BigDecimal shortTermLiabilities,
                                             BigDecimal longTermLiabilities, BigDecimal totalLiabilities, BigDecimal totalCapital) {
        this.name = name;
        this.cash = cash;
        this.currentAssets = currentAssets.setScale(2 , RoundingMode.CEILING);
        this.nonCurrentAssets = nonCurrentAssets.setScale(2 , RoundingMode.CEILING);
        this.totalAssets = totalAssets.setScale(2 , RoundingMode.CEILING);
        this.shortTermLiabilities = shortTermLiabilities.setScale(2 , RoundingMode.CEILING);
        this.longTermLiabilities = longTermLiabilities.setScale(2 , RoundingMode.CEILING);
        this.totalLiabilities = totalLiabilities;
        this.totalCapital = totalCapital.setScale(2 , RoundingMode.CEILING);
    }

    private void setDataAboutBalance(BigDecimal cash, BigDecimal currentAssets, BigDecimal nonCurrentAssets,
                                     BigDecimal totalAssets, BigDecimal shortTermLiabilities, BigDecimal longTermLiabilities,
                                     BigDecimal totalLiabilities, BigDecimal totalCapital) {
        this.cash = cash.setScale(2 , RoundingMode.CEILING);
        this.currentAssets = currentAssets.setScale(2 , RoundingMode.CEILING);
        this.nonCurrentAssets = nonCurrentAssets.setScale(2 , RoundingMode.CEILING);
        this.totalAssets = totalAssets.setScale(2 , RoundingMode.CEILING);
        this.shortTermLiabilities = shortTermLiabilities.setScale(2 , RoundingMode.CEILING);
        this.longTermLiabilities = longTermLiabilities.setScale(2 , RoundingMode.CEILING);
        this.totalLiabilities = totalLiabilities.setScale(2 , RoundingMode.CEILING);
        this.totalCapital = totalCapital.setScale(2 , RoundingMode.CEILING);
    }

    public DataAboutBalance(String cash, String nonCurrentAssets,String currentAssets, String totalAssets, String shortTermLiabilities ,String longTermLiabilities,String totalLiabilities , String totalCapital ) {
        this.cash = BigDecimal.valueOf(Double.parseDouble(cash));
        this.nonCurrentAssets = BigDecimal.valueOf(Double.parseDouble(nonCurrentAssets));
        this.currentAssets = BigDecimal.valueOf(Double.parseDouble(currentAssets));
        this.totalAssets = BigDecimal.valueOf(Double.parseDouble(totalAssets));
        this.shortTermLiabilities = BigDecimal.valueOf(Double.parseDouble(shortTermLiabilities));
        this.longTermLiabilities = BigDecimal.valueOf(Double.parseDouble(longTermLiabilities));
        this.totalLiabilities = BigDecimal.valueOf(Double.parseDouble(totalLiabilities));
        this.totalCapital = BigDecimal.valueOf(Double.parseDouble(totalCapital));
    }

    public BigDecimal getCash() {
        return cash;
    }

    public BigDecimal getCurrentAssets() {
        return currentAssets;
    }

    public BigDecimal getNonCurrentAssets() {
        return nonCurrentAssets;
    }

    public BigDecimal getTotalAssets() {
        return totalAssets;
    }

    public BigDecimal getShortTermLiabilities() {
        return shortTermLiabilities;
    }

    public BigDecimal getLongTermLiabilities() {
        return longTermLiabilities;
    }

    public BigDecimal getTotalLiabilities() {
        return totalLiabilities;
    }

    public BigDecimal getTotalCapital() {
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
                setDataAboutBalance(resultSet.getBigDecimal(1), resultSet.getBigDecimal(2), resultSet.getBigDecimal(3), resultSet.getBigDecimal(4),
                        resultSet.getBigDecimal(5), resultSet.getBigDecimal(6), resultSet.getBigDecimal(7), resultSet.getBigDecimal(8));
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
                temp.setDataAboutBalanceForMulty(resultSet.getString(8),resultSet.getBigDecimal(10), resultSet.getBigDecimal(11), resultSet.getBigDecimal(12), resultSet.getBigDecimal(13),
                        resultSet.getBigDecimal(14), resultSet.getBigDecimal(15), resultSet.getBigDecimal(16), resultSet.getBigDecimal(17) );
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
            st.setBigDecimal(4, cash);
            st.setBigDecimal(5,currentAssets);
            st.setBigDecimal(6, nonCurrentAssets);
            st.setBigDecimal(7, totalAssets);
            st.setBigDecimal(8, shortTermLiabilities);
            st.setBigDecimal(9, longTermLiabilities);
            st.setBigDecimal(10, totalLiabilities);
            st.setBigDecimal(11, totalCapital);
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
