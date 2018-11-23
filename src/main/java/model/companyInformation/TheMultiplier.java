package model.companyInformation;

import java.io.Serializable;
import java.sql.Connection;

public class TheMultiplier implements LoadDatable, Serializable{
    private static final long serialVersionUID = 4915203885074478472L;
    private int P_E;
    private  int ROE;
    private int EV;
    private int EBITDA;
    private double EV_EBITDA;
    private double P_BV;
    private double P_S;
    private int EV_S;
    private int DEBT_EBITDA;

    public TheMultiplier() {
    }

    private void  setTheMultiplier(int p_E, int ROE, int EV, int EBITDA, double EV_EBITDA, double p_BV, double p_S, int EV_S, int DEBT_EBITDA) {
        this.P_E = p_E;
        this.ROE = ROE;
        this.EV = EV;
        this.EBITDA = EBITDA;
        this.EV_EBITDA = EV_EBITDA;
        this.P_BV = p_BV;
        this.P_S = p_S;
        this.EV_S = EV_S;
        this.DEBT_EBITDA = DEBT_EBITDA;
    }

    @Override
    public void loadData(Connection connection, String Rset) {

    }





}
