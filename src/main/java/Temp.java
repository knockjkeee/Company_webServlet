import java.math.BigDecimal;
import java.math.RoundingMode;

public class Temp {

    public static void main(String[] args) {

        A a = new A();
        long numberAO = 110441160870L;
        BigDecimal priceAO = new BigDecimal(0.3366);
        BigDecimal numberAP = new BigDecimal(0.00);
        BigDecimal priceAP = new BigDecimal(0.00);

        a.setCapitalization(numberAO, priceAO, numberAP, priceAP);

        System.out.println(a.capitalization);

        BigDecimal z = new BigDecimal(121012598000.00);
        BigDecimal x = new BigDecimal(37174494748.8420);


        System.out.println(x.divide(z, 9, BigDecimal.ROUND_HALF_UP));

    }





    public static class A {
        private BigDecimal capitalization;

        public void setCapitalization(long numberAO, BigDecimal priceAO, BigDecimal numberAP, BigDecimal priceAP) {

            BigDecimal numberAOTemp = BigDecimal.valueOf(numberAO);
//        this.capitalization = ((BigDecimal.valueOf(numberAO)*priceAO)+(numberAP*priceAP));
            this.capitalization = numberAOTemp.multiply(priceAO).add(numberAP.multiply(priceAP)).setScale(4 , RoundingMode.CEILING);
        }
    }
}
