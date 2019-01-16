import java.math.BigDecimal;

public class Temp {
    public static void main(String[] args) {

        String s = "5140926000.000";


        BigDecimal t = new BigDecimal(s.replace("",""));
       ;

        double d = 5140926000.00;
//        System.out.printf("%,8f", d);

        System.out.println(t);
        System.out.println(d);

//        System.out.println(Years.Seven.index());
    }
}
