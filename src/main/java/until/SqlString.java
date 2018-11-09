package until;

public class SqlString {
    private static final String OPTIONAL = "SELECT company_dynamic.name as 'name', company_dynamic.tiker as 'tiker', company_dynamic.market_price as 'market_price', company_dynamic.p_e as 'p_e'," +
            "  company_dynamic.p_s as 'p_s', company_dynamic.p_bv as 'p_bv', company_dynamic.ev_ebitda as 'ev_ebitda', company_dynamic.ev_s as 'ev_s'," +
            "  company_dynamic.debt_ebita as 'debt_ebita', company_dynamic.roe as 'roe'" +
            "FROM industry INNER JOIN company_dynamic on (industry.test_id = company_dynamic.id_company) WHERE industry.name ='";

    private static final String SHEARCH = "SELECT company_dynamic.name as 'name', company_dynamic.tiker as 'tiker', company_dynamic.market_price as 'market_price', company_dynamic.p_e as 'p_e'," +
            "                company_dynamic.p_s as 'p_s', company_dynamic.p_bv as 'p_bv', company_dynamic.ev_ebitda as 'ev_ebitda', company_dynamic.ev_s as 'ev_s'," +
            "                company_dynamic.debt_ebita as 'debt_ebita', company_dynamic.roe as 'roe'" +
            "                FROM company_dynamic";


    private static final String COMPANY = "SELECT company_dynamic.name as 'name', company_dynamic.tiker as 'tiker', company_dynamic.market_price as 'market_price', company_dynamic.p_e as 'p_e'," +
            "                company_dynamic.p_s as 'p_s', company_dynamic.p_bv as 'p_bv', company_dynamic.ev_ebitda as 'ev_ebitda', company_dynamic.ev_s as 'ev_s'," +
            "                company_dynamic.debt_ebita as 'debt_ebita', company_dynamic.roe as 'roe'" +
            "                FROM company_dynamic WHERE name = '";


    private static final String DATA_ABOUT_BALANCE = "SELECT dataAboutBalance.cash AS 'cash'," +
            "  dataAboutBalance.currentAssets AS 'currentAssets', dataAboutBalance.nonCurrentAssets AS 'nonCurrentAssets'," +
            "  dataAboutBalance.totalAssets AS 'totalAssets', dataAboutBalance.shortTermLiabilities AS 'shortTermLiabilities'," +
            "  dataAboutBalance.longTermLiabilities AS 'longTermLiabilities', dataAboutBalance.totalLiabilities AS 'totalLiabilities'," +
            "  dataAboutBalance.totalCapital AS 'totalCapital' FROM company INNER  JOIN dataAboutBalance ON (company.id = dataAboutBalance.id_main)" +
            "WHERE company.name= '";

    private static final String FINANCIAL_DATA = "SELECT financialData.revenue  AS 'revenue', financialData.operatingProfit AS 'operatingProfit', financialData.proofitBeforTax AS 'proofitBeforTax', financialData.clearnProfit AS 'clearnProfit'," +
            "  financialData.financealIncome AS 'financealIncome', financialData.financealExpenses AS 'financealExpenses', financialData.depreciation AS 'depreciation'" +
            "FROM company INNER JOIN financialData ON (company.id = financialData.id_main)" +
            "  WHERE company.name = '";


    private static final  String MARKET_DATA = "SELECT marketData.numberAO AS 'numberAO', marketData.priceAO AS 'priceAO', marketData.numberAP AS 'numberAP', marketData.priceAP AS 'priceAP', marketData.capitalization AS 'capitalization'\n"+
            "  FROM company INNER JOIN marketData ON (company.id = marketData.id_main) WHERE company.name = '";





    public static String checkTableInDB(String name) {
        String result = null;


        return result;
    }


    public static String getMarketData(String nameSearch) {
        StringBuilder sb = new StringBuilder();
        sb.append(MARKET_DATA).append(nameSearch).append("'");
        return sb.toString();

    }

    public static String getFinancialData(String nameSearch) {
        StringBuilder sb = new StringBuilder();
        sb.append(FINANCIAL_DATA).append(nameSearch).append("'");
        return sb.toString();
    }

    public static String getDataAboutBalance(String nameSearch) {
        StringBuilder sb = new StringBuilder();
        sb.append(DATA_ABOUT_BALANCE).append(nameSearch).append("'");
        return sb.toString();
    }

    public static String getOptional(String nameSearch) {
        StringBuilder sb = new StringBuilder();
        sb.append(OPTIONAL).append(nameSearch).append("'");
        return sb.toString();
    }

    public static String getShearch (){
        StringBuilder sb = new StringBuilder();
        sb.append(SHEARCH);
        return sb.toString();
    }

    public static String getCompany(String name) {
        StringBuilder sb = new StringBuilder();
        sb.append(COMPANY).append(name).append("'");
        return sb.toString();
    }
}
