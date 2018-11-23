package until;

import java.util.TreeMap;

public class Temp {

    public static void main(String[] args) {

        TreeMap<Integer, Test> name = new TreeMap<>();
        B b = new B();
        A a = new A();

        System.out.println(test(b, name));
        System.out.println(test(a, name));


    }


    public static TreeMap<Integer, ? extends Test> test(Test data, TreeMap<Integer, Test> map) {
        if (data instanceof A) {
            A a = (A) data;
            map.put(1, a);

        } else if (data instanceof B) {
            B b = (B) data;
            map.put(1, b);

        }
        return map;
    }

    static class  B implements Test{
        int numbers = 1;
        @Override
        public void load() {
        }

        @Override
        public String toString() {
            return "B{" +
                    "numbers=" + numbers +
                    '}';
        }
    }


    static class A implements Test {
        @Override
        public String toString() {
            return "A{" +
                    "numbers=" + numbers +
                    '}';
        }

        int numbers = 2;
        @Override
        public void load() {
        }
    }




    interface Test {
        void load();
    }


}




