package model.companyInformation;

import java.sql.Connection;

public interface Data {
    void loadData(Connection connection, String Rset);
    void loadDataForMulty(Connection connection, String Rset);

}
