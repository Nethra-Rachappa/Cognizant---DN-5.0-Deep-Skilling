class Singleton {

    private static Singleton obj;

    private Singleton() {
        System.out.println("Singleton Object Created");
    }

    public static Singleton getInstance() {
        if (obj == null) {
            obj = new Singleton();
        }
        return obj;
    }

    public void display() {
        System.out.println("Welcome to Singleton Pattern");
    }
}

public class SingletonPattern {
    public static void main(String[] args) {

        Singleton s1 = Singleton.getInstance();
        Singleton s2 = Singleton.getInstance();

        s1.display();

        if (s1 == s2)
            System.out.println("Both objects are same");
        else
            System.out.println("Objects are different");
    }
}