package until;

import model.companyInformation.DataAboutBalance;
import model.companyInformation.FinancialData;
import model.companyInformation.MarketData;

public class LoadDataDB implements CheckDataDB {
    public int [] years;


    @Override
    public DataAboutBalance getDataAboutBalance() {
        return new DataAboutBalance();
    }

    @Override
    public FinancialData getFinancialData() {
        return new FinancialData();
    }

    @Override
    public MarketData getMarketData() {
        return new MarketData();
    }


    public void loadDB() {

    }



}
