package model.companyInformation;

import java.io.Serializable;
import java.sql.Connection;

public class TheMultiplier implements Data, Serializable {
    private static final long serialVersionUID = 4915203885074478472L;
    private int P_E;
    private int ROE;
    private int EV;
    private int EBITDA;
    private double EV_EBITDA;
    private double P_BV;
    private double P_S;
    private int EV_S;
    private int DEBT_EBITDA;

    public TheMultiplier(DataAboutBalance dataAboutBalance, FinancialData financialData, MarketData marketData ) {
        setP_E(financialData, marketData);
        setROE(financialData, marketData);
        setEV(marketData, dataAboutBalance);
        setEBITDA(financialData);
        setEV_EBITDA();
        setP_BV(dataAboutBalance, marketData);
        setP_S(marketData, financialData);
        setEV_S(financialData);
        setDEBT_EBITDA(dataAboutBalance);
    }

    private void setTheMultiplier(int p_E, int ROE, int EV, int EBITDA, double EV_EBITDA, double p_BV, double p_S, int EV_S, int DEBT_EBITDA) {
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

    public double getP_BV() {
        return P_BV;
    }

    public double getP_S() {
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
        double profit = fData.getClearnProfit();
        this.P_E = (int) ((double) capitalization / profit);
    }

    private void setROE(FinancialData fData, MarketData marketData) {
        /**
         * ROE считается по формуле (Чистая прибыль/Капитал)
         */
        double profit = fData.getClearnProfit();
        int capitalization = marketData.getCapitalization();
        this.ROE = (int) (profit / (double) capitalization);
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
        double proofitBeforTax = financialData.getProofitBeforTax();
        double financealExpenses = financialData.getFinancealExpenses();
        double financealIncome = financialData.getFinancealIncome();
        double depreciation = financialData.getDepreciation();
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
        this.P_BV = (double) capitalization / totalCapital;
    }

    private void setP_S(MarketData marketData, FinancialData financialData) {
        /**
         * P/S считается по формуле (Капитализация/Выручку)
         */
        int capitalization = marketData.getCapitalization();
        double revenue = financialData.getRevenue();
        P_S = (double) capitalization / revenue;
    }

    private void setEV_S(FinancialData financialData) {
        /**
         * EV/S считается по формуле (EV/Выручку)
         */
        double revenue = financialData.getRevenue();
        this.EV_S = (int) (getEV() / revenue);
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
