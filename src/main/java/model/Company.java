package model;

import model.companyInformation.DataAboutBalance;
import model.companyInformation.FinancialData;
import model.companyInformation.MarketData;

public class Company {
    private DataAboutBalance dataAboutBalance;
    private FinancialData financialData;
    private MarketData marketData;

    public Company(DataAboutBalance dataAboutBalance, FinancialData financialData, MarketData marketData) {
        this.dataAboutBalance = dataAboutBalance;
        this.financialData = financialData;
        this.marketData = marketData;
    }

    public DataAboutBalance getDataAboutBalance() {
        return dataAboutBalance;
    }

    public FinancialData getFinancialData() {
        return financialData;
    }

    public MarketData getMarketData() {
        return marketData;
    }
}
