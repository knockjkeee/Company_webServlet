package until;

import model.companyInformation.DataAboutBalance;
import model.companyInformation.FinancialData;
import model.companyInformation.MarketData;

public interface CheckDataDB {
    DataAboutBalance getDataAboutBalance();
    FinancialData getFinancialData();
    MarketData getMarketData();

}
