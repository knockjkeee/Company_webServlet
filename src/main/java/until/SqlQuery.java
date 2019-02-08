package until;

import model.Years;
import model.companyInformation.*;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;

public class SqlQuery {
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


    private static final String MARKET_DATA = "SELECT marketData.numberAO AS 'numberAO', marketData.priceAO AS 'priceAO', marketData.numberAP AS 'numberAP', marketData.priceAP AS 'priceAP', marketData.capitalization AS 'capitalization'" +
            "  FROM company INNER JOIN marketData ON (company.id = marketData.id_main) WHERE company.name = '";


    public static TreeMap<Integer, ? extends Data> checkTableInDBDataTableForCompany(Data data, Connection connection, TreeMap<Integer, Data> map, String name) {
        Statement statement = null;
        ResultSet resultSetTable;
        ResultSet resultSetRow;

        boolean isRow = false;
        try {
            statement = connection.createStatement();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        for (Years y : Years.values()) {
            String nameTable = data.getClass().getSimpleName().toLowerCase() + y.index();
            String rSet = "SHOW TABLES LIKE '" + nameTable + "'";
//            String rowSetCheck = "SELECT * FROM " + nameTable + " WHERE id = 1";
            String rowSetCheck = "SELECT * FROM " + nameTable + " WHERE NAME ='" + name + "'";

            try {
                resultSetRow = statement.executeQuery(rowSetCheck);
                if (resultSetRow.next()) {
                    isRow = true;
                }
            } catch (SQLException e) {
                isRow = false;
            }

            try {
                resultSetTable = statement.executeQuery(rSet);
                if (resultSetTable.next()) {
                    if (isRow) {
                        addDataToObject(data, connection, map, name, y, nameTable);
                    } else if (!isRow) {
                        addDataToObjectNull(data, map, y);
                    }
                } else {
                    addDataToObjectNull(data, map, y);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return map;
    }

    public static TreeMap<String, ? extends Data> checkMathMultiplierForCompany(TreeMap<Integer, Data> data, TreeMap<Integer, Data> finance, TreeMap<Integer, Data> market, TreeMap<String, TheMultiplier> multiplier) {
        for (Years years : Years.values()) {
            for (Map.Entry<Integer, Data> entryData : data.entrySet()) {
                if (entryData.getKey() == years.index()) {
                    for (Map.Entry<Integer, Data> entryFinance : finance.entrySet()) {
                        if (entryFinance.getKey() == years.index()) {
                            for (Map.Entry<Integer, Data> entryMarket : market.entrySet()) {
                                if (entryMarket.getKey() == years.index()) {
                                    multiplier.put(String.valueOf(years.index()), new MathMultiplier(entryData.getValue(), entryFinance.getValue(), entryMarket.getValue()).setMultiplier());
                                }
                            }
                        }
                    }
                }
            }
        }
        return multiplier;
    }

    public static TreeMap<String, ? extends Data> indexMathMultiplier(Connection connection, DataAboutBalance data, FinancialData finance, MarketData marketData, TreeMap<String, TheMultiplier> multy) {
        String nameDataTable = data.getClass().getSimpleName().toLowerCase() + Years.Seven.index();
        data.loadDataForMulty(connection, getDataForMathMultiplierQuery(nameDataTable));
        TreeMap<String, DataAboutBalance> mapData = data.getMapData();

        String nameFinance = finance.getClass().getSimpleName().toLowerCase() + Years.Seven.index();
        finance.loadDataForMulty(connection, getDataForMathMultiplierQuery(nameFinance));
        TreeMap<String, FinancialData> mapFinance = finance.getMapFinance();

        String nameMarket = marketData.getClass().getSimpleName().toLowerCase() + Years.Seven.index();
        marketData.loadDataForMulty(connection, getDataForMathMultiplierQuery(nameMarket));
        TreeMap<String, MarketData> mapMarket = marketData.getMapMarket();

        addMapData(multy, mapData, mapFinance, mapMarket);
        return multy;
    }


    public static TreeMap<String, ? extends Data> indexMathMultiplierMain(Connection connection, DataAboutBalance data, FinancialData finance,
                                                                          MarketData marketData, TreeMap<String, TheMultiplier> multy, String year, ArrayList<String> names) {
        String nameDataTable = data.getClass().getSimpleName().toLowerCase() + year;
        data.loadDataForMulty(connection, getDataForMathMultiplierQuery(nameDataTable));
        TreeMap<String, DataAboutBalance> mapData = data.getMapData();

        String nameFinance = finance.getClass().getSimpleName().toLowerCase() + year;
        finance.loadDataForMulty(connection, getDataForMathMultiplierQuery(nameFinance));
        TreeMap<String, FinancialData> mapFinance = finance.getMapFinance();

        String nameMarket = marketData.getClass().getSimpleName().toLowerCase() + year;
        marketData.loadDataForMulty(connection, getDataForMathMultiplierQuery(nameMarket));
        TreeMap<String, MarketData> mapMarket = marketData.getMapMarket();

        addMapDataNames(multy, mapData, mapFinance, mapMarket, names);
        return multy;
    }

    private static void addMapData(TreeMap<String, TheMultiplier> multy, TreeMap<String, DataAboutBalance> mapData, TreeMap<String, FinancialData> mapFinance, TreeMap<String, MarketData> mapMarket) {

        for (Map.Entry<String, DataAboutBalance> entryD : mapData.entrySet()) {
            String nameD = entryD.getKey();
            for (Map.Entry<String, FinancialData> entryF : mapFinance.entrySet()) {
                if (entryF.getKey().equals(nameD)) {
                    for (Map.Entry<String, MarketData> entryM : mapMarket.entrySet()) {
                        if (entryM.getKey().equals(nameD)) {
                            multy.put(nameD, new MathMultiplier(entryD.getValue(), entryF.getValue(), entryM.getValue()).setMultiplier());
                        }
                    }
                }
            }
        }
    }

    private static void addMapDataNames(TreeMap<String, TheMultiplier> multy, TreeMap<String, DataAboutBalance> mapData, TreeMap<String,
            FinancialData> mapFinance, TreeMap<String, MarketData> mapMarket, ArrayList<String> names) {

        for (Map.Entry<String, DataAboutBalance> entryD : mapData.entrySet()) {
            String nameD = entryD.getKey();
            for (Map.Entry<String, FinancialData> entryF : mapFinance.entrySet()) {
                if (entryF.getKey().equals(nameD)) {
                    for (Map.Entry<String, MarketData> entryM : mapMarket.entrySet()) {
                        if (entryM.getKey().equals(nameD)) {
                            for (String name : names) {
                                if (name.equals(nameD)) {
                                    multy.put(nameD, new MathMultiplier(entryD.getValue(), entryF.getValue(), entryM.getValue()).setMultiplier());
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public static TreeMap<String, ? extends Data> indexDataMarketForMainPage(Connection connection, MarketData marketData, TreeMap<String, Data> dataTreeMap) {
        String nameTable = marketData.getClass().getSimpleName().toLowerCase() + Years.Seven.index();
        dataTreeMap.putAll(marketData.loadMainPageData(connection, getMarketDataQueryForMainPage(nameTable)));
        return dataTreeMap;
    }

    //TODO getDataForMathMultiplierQuery SQL QUERY

    private static void addDataToObject(Data data, Connection connection, TreeMap<Integer, Data> map, String name, Years y, String nameTable) {
        if (data instanceof DataAboutBalance) {
            DataAboutBalance temp = new DataAboutBalance();
            temp.loadData(connection, getDataAboutBalanceQuery(name, nameTable));
            map.put(y.index(), temp);
        } else {
            if (data instanceof FinancialData) {
                FinancialData temp = new FinancialData();
                temp.loadData(connection, getFinancialDataQuery(name, nameTable));
                map.put(y.index(), temp);
            } else {
                if (data instanceof MarketData) {
                    MarketData temp = new MarketData();
                    temp.loadData(connection, getMarketDataQuery(name, nameTable));
                    map.put(y.index(), temp );
                }
            }
        }
    }

    private static void addDataToObjectNull(Data data, TreeMap<Integer, Data> map, Years y) {
        if (data instanceof DataAboutBalance) {
            map.put(y.index(), new DataAboutBalance());
        } else if (data instanceof FinancialData) {
            map.put(y.index(), new FinancialData());
        } else if (data instanceof MarketData) {
            map.put(y.index(), new MarketData());
        }
    }

    private static String getDataAboutBalanceQuery(String nameSearch, String nameTable) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT ").append(nameTable).append(".cash AS 'cash', ").append(nameTable).append(".currentAssets AS 'currentAssets', ").append(nameTable)
                .append(".nonCurrentAssets AS 'nonCurrentAssets', ").append(nameTable).append(".totalAssets AS 'totalAssets', ").append(nameTable)
                .append(".shortTermLiabilities AS 'shortTermLiabilities', ").append(nameTable).append(".longTermLiabilities AS 'longTermLiabilities', ")
                .append(nameTable).append(".totalLiabilities AS 'totalLiabilities', ").append(nameTable).append(".totalCapital AS 'totalCapital' FROM company INNER  JOIN ")
                .append(nameTable).append(" ON (company.id = ").append(nameTable).append(".id_main)  WHERE company.name = '").append(nameSearch).append("'");

        return sb.toString();


    }

    private static String getFinancialDataQuery(String nameSearch, String nameTable) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT ").append(nameTable).append(".revenue  AS 'revenue', ").append(nameTable).append(".operatingProfit AS 'operatingProfit', ").append(nameTable)
                .append(".proofitBeforTax AS 'proofitBeforTax', ").append(nameTable).append(".clearnProfit AS 'clearnProfit', ").append(nameTable)
                .append(".financealIncome AS 'financealIncome', ").append(nameTable).append(".financealExpenses AS 'financealExpenses', ").append(nameTable)
                .append(".depreciation AS 'depreciation' FROM company INNER JOIN ").append(nameTable).append(" ON (company.id = ").append(nameTable).append(".id_main)  WHERE company.name = '")
                .append(nameSearch).append("'");
        return sb.toString();
    }

    private static String getMarketDataQuery(String nameSearch, String nameTable) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT ").append(nameTable).append(".numberAO AS 'numberAO', ").append(nameTable).append(".priceAO AS 'priceAO', ").append(nameTable)
                .append(".numberAP AS 'numberAP', ").append(nameTable).append(".priceAP AS 'priceAP', " ).append(nameTable)
                .append(".capitalization AS 'capitalization', ").append(nameTable).append(".name as 'name', ").append(nameTable)
                .append(".tiker as'tiker' FROM company INNER JOIN ").append(nameTable).append(" ON (company.id = ").append(nameTable).append(".id_main)  WHERE company.name = '")
                .append(nameSearch).append("'");
        return sb.toString();
    }

    private static String getMarketDataQueryForMainPage(String nameTable) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT name, tiker, capitalization FROM ").append(nameTable);
        return sb.toString();
    }

    private static String getDataForMathMultiplierQuery(String nameTable) {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT * FROM company INNER  JOIN ").append(nameTable).append(" ON (company.id = ").append(nameTable).append(".id_main)");
        return sb.toString();
        //SELECT * FROM marketdata2018
        //SELECT * FROM company INNER  JOIN dataAboutBalance ON (company.id = dataAboutBalance.id_main);
    }

    public static String getOptional(String nameSearch) {
        StringBuilder sb = new StringBuilder();
        sb.append(OPTIONAL).append(nameSearch).append("'");
        return sb.toString();
    }

    public static String getSearch() {
        StringBuilder sb = new StringBuilder();
        sb.append(SHEARCH);
        return sb.toString();
    }

    public static String getCompany(String name) {
        StringBuilder sb = new StringBuilder();
        sb.append(COMPANY).append(name).append("'");
        return sb.toString();
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
}
