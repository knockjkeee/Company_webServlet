package model;

public class Company_test {

    private String name;
    private String tiker;
    private int market_price;
    private double p_e;
    private double p_s;
    private double p_bv;
    private double ev_ebitda;
    private double ev_s;
    private double debit_ebita;
    private int roe;

    public Company_test(String name, String tiker, int market_price, double p_e, double p_s, double p_bv, double ev_ebitda, double ev_s, double debit_ebita, int roe) {
        this.name = name;
        this.tiker = tiker;
        this.market_price = market_price;
        this.p_e = p_e;
        this.p_s = p_s;
        this.p_bv = p_bv;
        this.ev_ebitda = ev_ebitda;
        this.ev_s = ev_s;
        this.debit_ebita = debit_ebita;
        this.roe = roe;
    }

    public String getName() {
        return name;
    }

    public String getTiker() {
        return tiker;
    }

    public int getMarket_price() {
        return market_price;
    }

    public double getP_e() {
        return p_e;
    }

    public double getP_s() {
        return p_s;
    }

    public double getP_bv() {
        return p_bv;
    }

    public double getEv_ebitda() {
        return ev_ebitda;
    }

    public double getEv_s() {
        return ev_s;
    }

    public double getDebit_ebita() {
        return debit_ebita;
    }

    public int getRoe() {
        return roe;
    }

    @Override
    public String toString() {
        return "Company_test{" +
                "name='" + name + '\'' +
                ", tiker='" + tiker + '\'' +
                ", market_price=" + market_price +
                ", p_e=" + p_e +
                ", p_s=" + p_s +
                ", p_bv=" + p_bv +
                ", ev_ebitda=" + ev_ebitda +
                ", ev_s=" + ev_s +
                ", debit_ebita=" + debit_ebita +
                ", roe=" + roe +
                '}';
    }
}
