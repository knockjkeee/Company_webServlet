package model.companyInformation;

import java.io.Serializable;
import java.sql.*;
import java.util.TreeMap;

public class FinancialData implements Data, Serializable {
    private static final long serialVersionUID = -6337919253033930510L;

    private String name;
    private double revenue;
    private double operatingProfit;
    private double proofitBeforTax;
    private double clearnProfit;
    private double financealIncome;
    private double financealExpenses;
    private double depreciation;
    private TreeMap<String, FinancialData> mapFinance;

    public FinancialData() {
    }

    private void setFinancialDataForMulty(String name, double revenue, double operatingProfit, double proofitBeforTax, double clearnProfit, double financealIncome, double financealExpenses, double depreciation) {
        this.name = name;
        this.revenue = revenue;
        this.operatingProfit = operatingProfit;
        this.proofitBeforTax = proofitBeforTax;
        this.clearnProfit = clearnProfit;
        this.financealIncome = financealIncome;
        this.financealExpenses = financealExpenses;
        this.depreciation = depreciation;
    }

    private void setFinancialData(double revenue, double operatingProfit, double proofitBeforTax, double clearnProfit, double financealIncome, double financealExpenses, double depreciation) {
        this.revenue = revenue;
        this.operatingProfit = operatingProfit;
        this.proofitBeforTax = proofitBeforTax;
        this.clearnProfit = clearnProfit;
        this.financealIncome = financealIncome;
        this.financealExpenses = financealExpenses;
        this.depreciation = depreciation;
    }

    public FinancialData(String revenue, String operatingProfit, String proofitBeforTax, String clearnProfit, String financealIncome, String financealExpenses, String depreciation) {
        this.revenue = Double.parseDouble(revenue);
        this.operatingProfit = Double.parseDouble(operatingProfit);
        this.proofitBeforTax = Double.parseDouble(proofitBeforTax);
        this.clearnProfit = Double.parseDouble(clearnProfit);
        this.financealIncome = Double.parseDouble(financealIncome);
        this.financealExpenses = Double.parseDouble(financealExpenses);
        this.depreciation = Double.parseDouble(depreciation);
    }


    public double getRevenue() {

        return revenue;
    }

    public TreeMap<String, FinancialData> getMapFinance() {
        return mapFinance;
    }

    public double getOperatingProfit() {
        return operatingProfit;
    }

    public double getProofitBeforTax() {
        return proofitBeforTax;
    }

    public double getClearnProfit() {
        return clearnProfit;
    }

    public double getFinancealIncome() {
        return financealIncome;
    }

    public double getFinancealExpenses() {
        return financealExpenses;
    }

    public double getDepreciation() {
        return depreciation;
    }

    public void loadData(Connection connection, String rSet) {
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(rSet);
            while (resultSet.next()) {
                setFinancialData(resultSet.getDouble(1), resultSet.getDouble(2), resultSet.getDouble(3), resultSet.getDouble(4),
                        resultSet.getDouble(5), resultSet.getDouble(6), resultSet.getDouble(7));
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
                temp.setFinancialDataForMulty(resultSet.getString(8),resultSet.getDouble(10), resultSet.getDouble(11), resultSet.getDouble(12), resultSet.getDouble(13),
                        resultSet.getDouble(14), resultSet.getDouble(15), resultSet.getDouble(16) );
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
            st.setDouble(4, revenue);
            st.setDouble(5, operatingProfit);
            st.setDouble(6, proofitBeforTax);
            st.setDouble(7, clearnProfit);
            st.setDouble(8, financealIncome);
            st.setDouble(9, financealExpenses);
            st.setDouble(10, depreciation);
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
