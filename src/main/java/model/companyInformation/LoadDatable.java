package model.companyInformation;

import java.sql.Connection;

public interface LoadDatable {
    void loadData(Connection connection, String Rset);

}
