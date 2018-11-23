package model.companyInformation;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class FinancialData implements LoadDatable, Serializable {
    private static final long serialVersionUID = -6337919253033930510L;
    private double revenue;
    private double operatingProfit;
    private double proofitBeforTax;
    private double clearnProfit;
    private double financealIncome;
    private double financealExpenses;
    private double depreciation;


    public FinancialData() {
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

    public double getRevenue() {

        return revenue;
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

    public void loadData(Connection connection, String Rset) {
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(Rset);
            while (resultSet.next()) {
                setFinancialData(resultSet.getDouble(1), resultSet.getDouble(2), resultSet.getDouble(3), resultSet.getDouble(4),
                        resultSet.getDouble(5), resultSet.getDouble(6), resultSet.getDouble(7));
            }
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
