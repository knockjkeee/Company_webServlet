package until;

import model.companyInformation.*;

public class MathMultiplier {

    DataAboutBalance dataAboutBalance;
    FinancialData financialData;
    MarketData marketData;
    TheMultiplier multiplier;

    public MathMultiplier(Data dataAboutBalance, Data financialData, Data marketData) {
        if (dataAboutBalance instanceof DataAboutBalance) {
            DataAboutBalance data = (DataAboutBalance) dataAboutBalance;
            this.dataAboutBalance = data;
        }
        if (financialData instanceof FinancialData) {
            FinancialData finance = (FinancialData) financialData;
            this.financialData = finance;
        }
        if (marketData instanceof MarketData) {
            MarketData market = (MarketData) marketData;
            this.marketData = market;
        }
    }

    public TheMultiplier setMultiplier() {
        this.multiplier = new TheMultiplier(this.dataAboutBalance, this.financialData, this.marketData);
        return multiplier;
    }

}
