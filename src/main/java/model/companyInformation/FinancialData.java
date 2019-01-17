package model.companyInformation;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.*;
import java.util.TreeMap;

public class FinancialData implements Data, Serializable {
    private static final long serialVersionUID = -6337919253033930510L;

    private String name;
    private BigDecimal revenue;
    private BigDecimal  operatingProfit;
    private BigDecimal  proofitBeforTax;
    private BigDecimal  clearnProfit;
    private BigDecimal  financealIncome;
    private BigDecimal  financealExpenses;
    private BigDecimal  depreciation;
    private TreeMap<String, FinancialData> mapFinance;

    public FinancialData() {
    }

    private void setFinancialDataForMulty(String name, BigDecimal  revenue, BigDecimal  operatingProfit, BigDecimal  proofitBeforTax,
                                          BigDecimal  clearnProfit, BigDecimal  financealIncome, BigDecimal  financealExpenses, BigDecimal  depreciation) {
        this.name = name;
        this.revenue = revenue.setScale(2 , RoundingMode.CEILING);
        this.operatingProfit = operatingProfit.setScale(2 , RoundingMode.CEILING);
        this.proofitBeforTax = proofitBeforTax.setScale(2 , RoundingMode.CEILING);
        this.clearnProfit = clearnProfit.setScale(2 , RoundingMode.CEILING);
        this.financealIncome = financealIncome.setScale(2 , RoundingMode.CEILING);
        this.financealExpenses = financealExpenses.setScale(2 , RoundingMode.CEILING);
        this.depreciation = depreciation.setScale(2 , RoundingMode.CEILING);
    }

    private void setFinancialData(BigDecimal  revenue, BigDecimal  operatingProfit, BigDecimal  proofitBeforTax, BigDecimal  clearnProfit,
                                  BigDecimal  financealIncome, BigDecimal  financealExpenses, BigDecimal  depreciation) {
        this.revenue = revenue.setScale(2 , RoundingMode.CEILING);
        this.operatingProfit = operatingProfit.setScale(2 , RoundingMode.CEILING);
        this.proofitBeforTax = proofitBeforTax.setScale(2 , RoundingMode.CEILING);
        this.clearnProfit = clearnProfit.setScale(2 , RoundingMode.CEILING);
        this.financealIncome = financealIncome.setScale(2 , RoundingMode.CEILING);
        this.financealExpenses = financealExpenses.setScale(2 , RoundingMode.CEILING);
        this.depreciation = depreciation.setScale(2 , RoundingMode.CEILING);
    }

    public FinancialData(String revenue, String operatingProfit, String proofitBeforTax, String clearnProfit, String financealIncome,
                         String financealExpenses, String depreciation) {
        this.revenue = BigDecimal.valueOf(Double.parseDouble(revenue));
        this.operatingProfit = BigDecimal.valueOf(Double.parseDouble(operatingProfit));
        this.proofitBeforTax = BigDecimal.valueOf(Double.parseDouble(proofitBeforTax));
        this.clearnProfit = BigDecimal.valueOf(Double.parseDouble(clearnProfit));
        this.financealIncome = BigDecimal.valueOf(Double.parseDouble(financealIncome));
        this.financealExpenses = BigDecimal.valueOf(Double.parseDouble(financealExpenses));
        this.depreciation = BigDecimal.valueOf(Double.parseDouble(depreciation));
    }


    public BigDecimal getRevenue() {
        return revenue;
    }

    public TreeMap<String, FinancialData> getMapFinance() {
        return mapFinance;
    }

    public BigDecimal getOperatingProfit() {
        return operatingProfit;
    }

    public BigDecimal getProofitBeforTax() {
        return proofitBeforTax;
    }

    public BigDecimal getClearnProfit() {
        return clearnProfit;
    }

    public BigDecimal getFinancealIncome() {
        return financealIncome;
    }

    public BigDecimal getFinancealExpenses() {
        return financealExpenses;
    }

    public BigDecimal getDepreciation() {
        return depreciation;
    }

    public void loadData(Connection connection, String rSet) {
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(rSet);
            while (resultSet.next()) {
                setFinancialData(resultSet.getBigDecimal(1), resultSet.getBigDecimal(2), resultSet.getBigDecimal(3), resultSet.getBigDecimal(4),
                        resultSet.getBigDecimal(5), resultSet.getBigDecimal(6), resultSet.getBigDecimal(7));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void loadDataForMulty(Connection connection, String rSet) {
        mapFinance = new TreeMap<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(rSet);
            while (resultSet.next()) {
                String name = resultSet.getString(8);
                FinancialData temp = new FinancialData();
                temp.setFinancialDataForMulty(resultSet.getString(8),resultSet.getBigDecimal(10), resultSet.getBigDecimal(11),
                        resultSet.getBigDecimal(12), resultSet.getBigDecimal(13),
                        resultSet.getBigDecimal(14), resultSet.getBigDecimal(15), resultSet.getBigDecimal(16) );
                mapFinance.put(name, temp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void pushData(Connection connection, int id_main, String name, String tiker) {
        try {
            String query = "INSERT INTO financialdata2018(id_main, name, tiker, revenue, operatingProfit, proofitBeforTax, clearnProfit, financealIncome, financealExpenses, depreciation) " +
                    "VALUES (?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement st = connection.prepareStatement(query);
            st.setInt(1, id_main);
            st.setString(2, name);
            st.setString(3, tiker);
            st.setBigDecimal(4, revenue);
            st.setBigDecimal(5, operatingProfit);
            st.setBigDecimal(6, proofitBeforTax);
            st.setBigDecimal(7, clearnProfit);
            st.setBigDecimal(8, financealIncome);
            st.setBigDecimal(9, financealExpenses);
            st.setBigDecimal(10, depreciation);
            st.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    @Override
    public String toString() {
        return "FinancialData{" +
                "revenue=" + revenue +
                ", operatingProfit=" + operatingProfit +
                ", proofitBeforTax=" + proofitBeforTax +
                ", clearnProfit=" + clearnProfit +
                ", financealIncome=" + financealIncome +
                ", financealExpenses=" + financealExpenses +
                ", depreciation=" + depreciation +
                '}';
    }
}
