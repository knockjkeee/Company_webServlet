import model.Years;
import model.companyInformation.DataAboutBalance;

import java.sql.*;

public class Test {
    private static DataAboutBalance dBalance;


    private static final String url = "jdbc:mysql://localhost:3306/monitoring?useSSL=false";
    private static final String user = "root";
    private static final String password = "root";

    private static Connection connection;
    private static Statement statement;
    private static ResultSet resultSet;

    public static void main(String[] args) throws SQLException, ClassNotFoundException, IllegalAccessException, InstantiationException {


        dBalance = new DataAboutBalance();
        for (Years years : Years.values()) {
            System.out.println(dBalance.getClass().getSimpleName().toLowerCase() + years.index());

            // проверяем есть ли в базе данных такая база
            //TODO create method
            // если нет то заполняем под год мапу нулями
            // если есть то формируем запрос и заполняем ее нормальными данными

            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connection = DriverManager.getConnection(url, user, password);
            statement = connection.createStatement();

//            String rset = "SHOW TABLES LIKE 'financialData2013'";
//            String rset = "SELECT COUNT(id) FROM financialdata2018 WHERE id = 1";
            String rset = "SELECT * FROM financialData2012 WHERE id = 1";
//            String rset = "SELECT EXISTS(SELECT id FROM financialdata2012 WHERE id = 1)";

//            ResultSet test = connection.getMetaData().getColumns(null, null, "financialdata2018", "tiker");
            ResultSet test = connection.getMetaData().getPrimaryKeys(null, null, "financialdata2012");

            resultSet = statement.executeQuery(rset);


            if (resultSet.next()) {
                System.out.println("load");
            } else {
                System.out.println("done");
            }




//            System.out.println(resultSet.getRow() == 1);

//            while (resultSet.next()) {
//                if (resultSet.getRow() >=1) {
//                    System.out.println("load");
//                } else {
//                    System.out.println("Done");
//                }
//            }




        }
    }
}

