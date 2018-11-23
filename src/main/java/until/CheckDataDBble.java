package until;

import model.companyInformation.DataAboutBalance;
import model.companyInformation.FinancialData;
import model.companyInformation.MarketData;

public interface CheckDataDBble {
    DataAboutBalance getDataAboutBalance();
    FinancialData getFinancialData();
    MarketData getMarketData();

}
