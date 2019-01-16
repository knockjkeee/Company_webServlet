package model.companyInformation;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.Connection;

public class TheMultiplier implements Data, Serializable {
    private static final long serialVersionUID = 4915203885074478472L;
    private String name;
    private String tiker;
    private int capitalization;
    private int P_E;
    private int ROE;
    private int EV;
    private int EBITDA;
    private double EV_EBITDA;
    private BigDecimal P_BV;
    private BigDecimal P_S;
    private int EV_S;
    private int DEBT_EBITDA;

    public TheMultiplier(DataAboutBalance dataAboutBalance, FinancialData financialData, MarketData marketData) {
        setP_E(financialData, marketData);
        setROE(financialData, dataAboutBalance);
        setEV(marketData, dataAboutBalance);
        setEBITDA(financialData);
        setEV_EBITDA();
        setP_BV(dataAboutBalance, marketData);
        setP_S(marketData, financialData);
        setEV_S(financialData);
        setDEBT_EBITDA(dataAboutBalance);
        this.tiker = marketData.getTiker();
        this.name = marketData.getName();
        this.capitalization = marketData.getCapitalization();
    }

    private void setTheMultiplier(int p_E, int ROE, int EV, int EBITDA, double EV_EBITDA, BigDecimal p_BV, BigDecimal p_S, int EV_S, int DEBT_EBITDA) {
        this.P_E = p_E;
        this.ROE = ROE;
        this.EV = EV;
        this.EBITDA = EBITDA;
        this.EV_EBITDA = EV_EBITDA;
        this.P_BV = p_BV;
        this.P_S = p_S;
        this.EV_S = EV_S;
        this.DEBT_EBITDA = DEBT_EBITDA;
    }

    @Override
    public void loadData(Connection connection, String Rset) {

    }

    @Override
    public void loadDataForMulty(Connection connection, String Rset) {

    }

    @Override
    public void pushData(Connection connection, int id_main, String name, String tiker) {

    }

    public int getCapitalization() {
        return capitalization;
    }

    public String getName() {
        return name;
    }

    public String getTiker() {
        return tiker;
    }

    public int getEV() {
        return this.EV;
    }

    public int getP_E() {
        return P_E;
    }

    public int getROE() {
        return ROE;
    }

    public double getEV_EBITDA() {
        return EV_EBITDA;
    }

    public BigDecimal getP_BV() {
        return P_BV;
    }

    public BigDecimal getP_S() {
        return P_S;
    }

    public int getEV_S() {
        return EV_S;
    }

    public int getDEBT_EBITDA() {
        return DEBT_EBITDA;
    }

    public int getEBITDA() {
        return this.EBITDA;
    }

    private void setP_E(FinancialData fData, MarketData marketData) {
        /**
         * P/E cчитается по формуле (Капитализация/Чистая прибыль)
         * */
        int capitalization = marketData.getCapitalization();
        if (fData.getClearnProfit() == null) {
            this.P_E = 0;
        } else {
            double profit = Double.parseDouble(String.valueOf(fData.getClearnProfit()));
            this.P_E = (int) ((double) capitalization / profit);
        }
    }

    private void setROE(FinancialData fData, DataAboutBalance dataB) {
        /**
         * ROE считается по формуле (Чистая прибыль/Капитал)
         */
        double profit;
        if (fData.getClearnProfit() == null) {
            profit = 0.0;

        } else {
            profit = Double.parseDouble(String.valueOf(fData.getClearnProfit()));
        }
        double capital = dataB.getTotalCapital();
        this.ROE = (int) (profit / capital);
    }

    private void setEV(MarketData marketData, DataAboutBalance dData) {
        /**
         * EV считается по формуле (Капитализация компании + Итого обязательства - Денежные средства)
         */
        int capitalization = marketData.getCapitalization();
        double totalLiabilities = dData.getTotalLiabilities();
        double cash = dData.getCash();
        this.EV = (int) ((double) capitalization + (totalLiabilities - cash));
    }

    private void setEBITDA(FinancialData financialData) {
        /**
         * EBITDA считается по формуле (Прибыль до налогов + финансовые расходы - финансовые доходы + Амортизация))
         */

//        double proofitBeforTax;
//        double financealExpenses;
//        double financealIncome;
//        double depreciation;

        double proofitBeforTax = financialData.getProofitBeforTax() == null ? 0.0 : Double.parseDouble(String.valueOf(financialData.getProofitBeforTax()));
        double financealExpenses = financialData.getFinancealExpenses() == null ? 0.0 : Double.parseDouble(String.valueOf(financialData.getFinancealExpenses()));
        double financealIncome = financialData.getFinancealIncome() == null ? 0.0 : Double.parseDouble(String.valueOf(financialData.getDepreciation()));
        double depreciation = financialData.getDepreciation() == null ? 0.0 : Double.parseDouble(String.valueOf(financialData.getDepreciation()));

//        double proofitBeforTax = Double.parseDouble(String.valueOf(financialData.getProofitBeforTax()));
//        double financealExpenses = Double.parseDouble(String.valueOf(financialData.getFinancealExpenses()));
//        double financealIncome = Double.parseDouble(String.valueOf(financialData.getFinancealIncome()));
//        double depreciation = Double.parseDouble(String.valueOf(financialData.getDepreciation()));
        this.EBITDA = (int) (proofitBeforTax + financealExpenses - financealIncome + depreciation);
    }

    private void setEV_EBITDA() {
        try {

            this.EV_EBITDA = this.EV / this.EBITDA;
        } catch (Exception e) {
            this.EV_EBITDA = 0;
        }

    }

    private void setP_BV(DataAboutBalance dataAboutBalance, MarketData marketData) {
        /**
         * P/BV считается по формуле (Капитал/Капитализация)
         */
        double totalCapital = dataAboutBalance.getTotalCapital();
        int capitalization = marketData.getCapitalization();
        if (capitalization == 0) {
            this.P_BV = BigDecimal.valueOf(0);
        } else {
            BigDecimal temp = BigDecimal.valueOf(totalCapital / capitalization);
            temp = temp.setScale(2, RoundingMode.CEILING);
            this.P_BV = temp;
        }
    }

    private void setP_S(MarketData marketData, FinancialData financialData) {
        /**
         * P/S считается по формуле (Капитализация/Выручку)
         */
        int capitalization = marketData.getCapitalization();
//        double revenue = Double.parseDouble(String.valueOf(financialData.getRevenue()));
        double revenue;

        if (financialData.getRevenue() == null) {
            this.P_S = BigDecimal.valueOf(0);
        } else {
            revenue = Double.parseDouble(String.valueOf(financialData.getRevenue()));
            if (revenue == 0) {
                this.P_S = BigDecimal.valueOf(0);
            } else {
                BigDecimal temp = BigDecimal.valueOf(capitalization / revenue);
                temp = temp.setScale(2, RoundingMode.CEILING);
                this.P_S = temp;
            }
        }
    }

    private void setEV_S(FinancialData financialData) {
        /**
         * EV/S считается по формуле (EV/Выручку)
         */
        double revenue;

        if (financialData.getRevenue() == null) {
            this.EV_S = 0;
        } else {
            revenue = Double.parseDouble(String.valueOf(financialData.getRevenue()));
            this.EV_S = (int) (getEV() / revenue);

        }
    }

    private void setDEBT_EBITDA(DataAboutBalance dataAboutBalance) {
        /**
         * DEBT/EBITDA считается по формуле (Обязательства итого - денежные средства)/EBITDA
         */
        double cash = dataAboutBalance.getCash();
        double totalLiabilities = dataAboutBalance.getTotalLiabilities();
        this.DEBT_EBITDA = (int) ((totalLiabilities - cash) / getEBITDA());
    }


    @Override
    public String toString() {
        return "TheMultiplier{" +
                "P_E=" + P_E +
                ", ROE=" + ROE +
                ", EV=" + EV +
                ", EBITDA=" + EBITDA +
                ", EV_EBITDA=" + EV_EBITDA +
                ", P_BV=" + P_BV +
                ", P_S=" + P_S +
                ", EV_S=" + EV_S +
                ", DEBT_EBITDA=" + DEBT_EBITDA +
                '}';
    }
}
