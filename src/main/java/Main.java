import dao.UserDao;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.*;
import java.util.concurrent.atomic.AtomicReference;

public class Main {

    private AtomicReference<UserDao> dao;
    private static AtomicReference<UserDao> bd;
    private static final String url = "jdbc:mysql://localhost:3306/monitoring?useSSL=false";
    private static final String user = "root";
    private static final String password = "root";

    private static Connection connection;
    private static Statement statement;
    private static ResultSet resultSet;


    public static void main(String[] args) throws ClassNotFoundException {



        try {

            bd = new AtomicReference<>(new UserDao());
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connection = DriverManager.getConnection(url, user, password);
            statement = connection.createStatement();
            File image = new File("D:\\Project\\webServlet\\src\\main\\webapp\\WEB-INF\\logo_company\\Газпром.png");
            FileInputStream in = null;
            try {
                in = new FileInputStream(image);
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
//            Blob blob = in.ge
//            System.out.println(image.getAbsolutePath());
//            String query = "INSERT INTO companyInformation ('1', 'Газпром'," + image + ", )";
            String query = "INSERT INTO company  (id, name, description, image) VALUES (?,?,?,?)";

            PreparedStatement preparedStatement = connection.prepareStatement(query);

            preparedStatement.setInt(1, 1);
            preparedStatement.setString(2, "Газпром");
            preparedStatement.setString(3, "text");
            preparedStatement.setBinaryStream(4, in);
            preparedStatement.executeUpdate();

//            preparedStatement.execute();

//            resultSet = statement.executeQuery("INSERT INTO companyInformation VALUES ('1', 'Газпром', , )");
//            while (resultSet.next()) {
//                int id = resultSet.getInt(1);
//                String name = resultSet.getString(2);
//                String password = resultSet.getString(3);
//                String role = resultSet.getString(4).toUpperCase();
//
//                System.out.printf("id: %d, name: %s, password: %s, role: %s", id, name, password, role);
//                System.out.println();
//
//
//
////                System.out.println(Role.ADMIN.toString());
////                System.out.println(Role.ADMIN);
//
//
//
//                if (Role.ADMIN.toString().equals(role)) {
//                    bd.get().add(new User(id, name, password, Role.ADMIN));
//                    System.out.println("success");
//                } else if (Role.USER.toString().equals(role)) {
//                    bd.get().add(new User(id, name, password, Role.USER));
//                    System.out.println("success");
//                }
//            }


        } catch (SQLException | InstantiationException | IllegalAccessException e) {
            e.printStackTrace();
        /*} catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();*/
//        } catch (InstantiationException e) {
//            e.printStackTrace();
//        } catch (IllegalAccessException e) {
//            e.printStackTrace();
        }


//        try {
//            connectionSQL();
//            readingDatabaseUsers(statement.executeQuery("SELECT * FROM users"));
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }


    }


//    private static void connectionSQL() throws SQLException {
//        connection = DriverManager.getConnection(url, user, password);
//        statement = connection.createStatement();
//    }
//
//    private static void readingDatabaseUsers(ResultSet rs) throws SQLException {
//        while (resultSet.next()) {
//            int id = resultSet.getInt(1);
//            String name = resultSet.getString(2);
//            String password = resultSet.getString(3);
//            String role = resultSet.getString(4).toUpperCase();
//            System.out.printf("id: %d, name: %s, password: %s", id, name, password);
//
//            if (role.equals(Role.ADMIN)) {
//                bd.get().add(new User(id, name, password, Role.ADMIN));
//            } else if (role.equals(Role.USER)) {
//                bd.get().add(new User(id, name, password, Role.USER));
//            }
//        }
//    }

}

