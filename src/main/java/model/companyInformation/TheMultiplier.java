package model.companyInformation;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.Connection;

public class TheMultiplier implements Data, Serializable {
    private static final long serialVersionUID = 4915203885074478472L;
    private String name;
    private String tiker;
    private BigDecimal capitalization;
    private BigDecimal P_E;
    private BigDecimal ROE;
    private BigDecimal EV;
    private BigDecimal EBITDA;
    private BigDecimal EV_EBITDA;
    private BigDecimal P_BV;
    private BigDecimal P_S;
    private BigDecimal EV_S;
    private BigDecimal DEBT_EBITDA;

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

    private void setTheMultiplier(BigDecimal p_E, BigDecimal ROE, BigDecimal EV, BigDecimal EBITDA, BigDecimal EV_EBITDA, BigDecimal p_BV, BigDecimal p_S, BigDecimal EV_S, BigDecimal DEBT_EBITDA) {
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
    public void setEmptyDataBigDecimal() {

    }

    public BigDecimal getCapitalization() {
        return capitalization;
    }

    public String getName() {
        return name;
    }

    public String getTiker() {
        return tiker;
    }

    public BigDecimal getEV() {
        return this.EV;
    }

    public BigDecimal getP_E() {
        return P_E;
    }

    public BigDecimal getROE() {
        return ROE;
    }

    public BigDecimal getEV_EBITDA() {
        return EV_EBITDA;
    }

    public BigDecimal getP_BV() {
        return P_BV;
    }

    public BigDecimal getP_S() {
        return P_S;
    }

    public BigDecimal getEV_S() {
        return EV_S;
    }

    public BigDecimal getDEBT_EBITDA() {
        return DEBT_EBITDA;
    }

    public BigDecimal getEBITDA() {
        return this.EBITDA;
    }

    private void setP_E(FinancialData fData, MarketData marketData) {
        /**
         * P/E cчитается по формуле (Капитализация/Чистая прибыль)
         * */
        BigDecimal capitalization = marketData.getCapitalization() == null ? BigDecimal.valueOf(0.000) : marketData.getCapitalization() ;
        if (fData.getClearnProfit() == null) {
            this.P_E = BigDecimal.valueOf(0.000);
        } else {
            double profit = Double.parseDouble(String.valueOf(fData.getClearnProfit()));
            if (profit == 0) {
                this.P_E = BigDecimal.valueOf(0.000);
            } else {
                BigDecimal temp = capitalization.divide(BigDecimal.valueOf(profit),9, BigDecimal.ROUND_UP);
                this.P_E = temp.setScale(9, BigDecimal.ROUND_CEILING);
            }
        }
    }

    private void setROE(FinancialData fData, DataAboutBalance dataB) {
        /**
         * ROE считается по формуле (Чистая прибыль/Капитал)
         */
        //TODO  java.lang.ArithmeticException: / by zero
        BigDecimal profit = fData.getClearnProfit() == null ? BigDecimal.valueOf(0.000) : fData.getClearnProfit();
        BigDecimal capital = dataB.getTotalCapital() == null ? BigDecimal.valueOf(0.000) : dataB.getTotalCapital();
        if (capital.compareTo(BigDecimal.ZERO) == 0) {
            this.ROE = BigDecimal.valueOf(0.00);
        } else {
            BigDecimal temp = profit.multiply(new BigDecimal(100));
            this.ROE = temp.divide(capital, 2, RoundingMode.HALF_UP).setScale(2, RoundingMode.CEILING);
        }
    }

    private void setEV(MarketData marketData, DataAboutBalance dData) {
        /**
         * EV считается по формуле (Капитализация компании + Итого обязательства - Денежные средства)
         */
        BigDecimal capitalization = marketData.getCapitalization() == null ? BigDecimal.valueOf(0.000) : marketData.getCapitalization();
        BigDecimal totalLiabilities = dData.getTotalLiabilities() == null ? BigDecimal.valueOf(0.000) : dData.getTotalLiabilities();

        BigDecimal temp = capitalization.add(totalLiabilities);
        this.EV = temp.setScale(4, RoundingMode.CEILING);
    }

    private void setEBITDA(FinancialData financialData) {
        /**
         * EBITDA считается по формуле (Прибыль до налогов + финансовые расходы - финансовые доходы + Амортизация))
         */

//        double proofitBeforTax;
//        double financealExpenses;
//        double financealIncome;
//        double depreciation;

        BigDecimal proofitBeforTax = financialData.getProofitBeforTax() == null ? BigDecimal.valueOf(0.000) : financialData.getProofitBeforTax();
        BigDecimal financealExpenses = financialData.getFinancealExpenses() == null ? BigDecimal.valueOf(0.000) : financialData.getFinancealExpenses();
        BigDecimal financealIncome = financialData.getFinancealIncome() == null ? BigDecimal.valueOf(0.000) : financialData.getFinancealIncome();
        BigDecimal depreciation = financialData.getDepreciation() == null ? BigDecimal.valueOf(0.000) : financialData.getDepreciation();

//        double proofitBeforTax = Double.parseDouble(String.valueOf(financialData.getProofitBeforTax()));
//        double financealExpenses = Double.parseDouble(String.valueOf(financialData.getFinancealExpenses()));
//        double financealIncome = Double.parseDouble(String.valueOf(financialData.getFinancealIncome()));
//        double depreciation = Double.parseDouble(String.valueOf(financialData.getDepreciation()));
        BigDecimal temp = proofitBeforTax.add(financealExpenses).subtract(financealIncome).add(depreciation);
        this.EBITDA = temp.setScale(2, RoundingMode.CEILING);
    }

    private void setEV_EBITDA() {
        try {
            BigDecimal temp  = this.EV.divide(this.EBITDA,9,  BigDecimal.ROUND_HALF_UP);
            this.EV_EBITDA = temp.setScale(9, RoundingMode.CEILING);
        } catch (Exception e) {
            this.EV_EBITDA = BigDecimal.valueOf(0.00);
        }

    }

    private void setP_BV(DataAboutBalance dataAboutBalance, MarketData marketData) {
        /**
         * P/BV считается по формуле (Капитал/Капитализация)
         */
        BigDecimal totalCapital = dataAboutBalance.getTotalCapital() == null ? BigDecimal.valueOf(0.0) : dataAboutBalance.getTotalCapital();
        BigDecimal capitalization = marketData.getCapitalization() == null ? BigDecimal.valueOf(0.0) : marketData.getCapitalization();

        if (capitalization.compareTo(BigDecimal.ZERO) == 0) {
            this.P_BV = BigDecimal.valueOf(0.00);
        } else {
            BigDecimal temp = capitalization.divide(totalCapital, 9, BigDecimal.ROUND_HALF_UP);
            temp = temp.setScale(9, RoundingMode.CEILING);
            this.P_BV = temp;
        }
    }

    private void setP_S(MarketData marketData, FinancialData financialData) {
        /**
         * P/S считается по формуле (Капитализация/Выручку)
         */
        BigDecimal capitalization = marketData.getCapitalization() == null ? BigDecimal.valueOf(0.0) : marketData.getCapitalization();
//        double revenue = Double.parseDouble(String.valueOf(financialData.getRevenue()));
        double revenue;

        if (financialData.getRevenue() == null) {
            this.P_S = BigDecimal.valueOf(0.000);
        } else {
            revenue = Double.parseDouble(String.valueOf(financialData.getRevenue()));
            if (revenue == 0) {
                this.P_S = BigDecimal.valueOf(0.00);
            } else {
                BigDecimal temp = capitalization.divide(BigDecimal.valueOf(revenue), 9,  BigDecimal.ROUND_HALF_UP);
                temp = temp.setScale(9, RoundingMode.CEILING);
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
            this.EV_S = BigDecimal.valueOf(0.0);
        } else {
            revenue = Double.parseDouble(String.valueOf(financialData.getRevenue()));
            if (revenue == 0) {
                this.EV_S = BigDecimal.valueOf(0.0);
            } else {
                BigDecimal temp = getEV().divide(BigDecimal.valueOf(revenue), 9,  BigDecimal.ROUND_HALF_UP);
                this.EV_S = temp.setScale(9, RoundingMode.CEILING);
            }
        }
    }

    private void setDEBT_EBITDA(DataAboutBalance dataAboutBalance) {
        /**
         * DEBT/EBITDA считается по формуле (Обязательства итого - денежные средства)/EBITDA
         */
        double cash = dataAboutBalance.getCash() == null ? 0.0 : Double.parseDouble(String.valueOf(dataAboutBalance.getCash()));
        double totalLiabilities = dataAboutBalance.getTotalLiabilities() == null ? 0.0 : Double.parseDouble(String.valueOf(dataAboutBalance.getTotalLiabilities()));
        if (getEBITDA().compareTo(BigDecimal.ZERO) == 0) {
            this.DEBT_EBITDA = BigDecimal.valueOf(0.00);
        } else {
            BigDecimal temp = BigDecimal.valueOf(totalLiabilities - cash).divide(getEBITDA(), 2, RoundingMode.HALF_UP);
            this.DEBT_EBITDA = temp.setScale(2, RoundingMode.CEILING);
        }
    }

    @Override
    public void loadData(Connection connection, String Rset) {

    }

    @Override
    public void loadDataForMulty(Connection connection, String Rset) {

    }

    @Override
    public void pushData(Connection connection, int id_main, String name, String tiker, String nameTable) {

    }

//    @Override
//    public String toString() {
//        return "TheMultiplier{" +
//                "P_E=" + P_E +
//                ", ROE=" + ROE +
//                ", EV=" + EV +
//                ", EBITDA=" + EBITDA +
//                ", EV_EBITDA=" + EV_EBITDA +
//                ", P_BV=" + P_BV +
//                ", P_S=" + P_S +
//                ", EV_S=" + EV_S +
//                ", DEBT_EBITDA=" + DEBT_EBITDA +
//                '}';
//    }


    @Override
    public String toString() {
        return "TheMultiplier{" +
                "name='" + name + '\'' +
                ", tiker='" + tiker + '\'' +
                ", capitalization=" + capitalization +
                ", P_E=" + P_E +
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
