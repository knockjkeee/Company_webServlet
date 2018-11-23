package model;

import model.companyInformation.DataAboutBalance;
import model.companyInformation.FinancialData;
import model.companyInformation.MarketData;

public class Company {
    private DataAboutBalance dataAboutBalance;
    private FinancialData financialData;
    private MarketData marketData;
    private String name;

    public Company(DataAboutBalance dataAboutBalance, FinancialData financialData, MarketData marketData, String name) {
        this.dataAboutBalance = dataAboutBalance;
        this.financialData = financialData;
        this.marketData = marketData;
        this.name = name;
    }

    public String getName() {
        return name;
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
