package until;

import model.Years;
import model.companyInformation.DataAboutBalance;
import model.companyInformation.FinancialData;
import model.companyInformation.LoadDatable;
import model.companyInformation.MarketData;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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


    public static TreeMap<Integer, ? extends LoadDatable> checkTableInDBDataAboutBalance(LoadDatable data, Connection connection, TreeMap<Integer, LoadDatable> map, String name) {
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
            String rowSetCheck = "SELECT * FROM " + nameTable + " WHERE id = 1";

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

    private static void addDataToObject(LoadDatable data, Connection connection, TreeMap<Integer, LoadDatable> map, String name, Years y, String nameTable) {
        if (data instanceof DataAboutBalance) {
            data.loadData(connection, getDataAboutBalanceQuery(name, nameTable));
            map.put(y.index(), data);
        } else if (data instanceof FinancialData) {
            data.loadData(connection, getFinancialDataQuery(name, nameTable));
            map.put(y.index(), data);
        } else if (data instanceof MarketData) {
            data.loadData(connection, getMarketDataQuery(name, nameTable));
            map.put(y.index(), data);
        }
    }

    private static void addDataToObjectNull(LoadDatable data, TreeMap<Integer, LoadDatable> map, Years y) {
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
                .append(".numberAP AS 'numberAP', ").append(nameTable).append(".priceAP AS 'priceAP', ").append(nameTable).append(".capitalization AS 'capitalization' FROM company INNER JOIN ")
                .append(nameTable).append(" ON (company.id = ").append(nameTable).append(".id_main)  WHERE company.name = '")
                .append(nameSearch).append("'");
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
}
