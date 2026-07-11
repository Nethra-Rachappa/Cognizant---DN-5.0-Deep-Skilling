interface Shape {
    void draw();
}

class Circle implements Shape {
    public void draw() {
        System.out.println("Drawing Circle");
    }
}

class Rectangle implements Shape {
    public void draw() {
        System.out.println("Drawing Rectangle");
    }
}

class ShapeFactory {

    public Shape getShape(String type) {

        if (type.equalsIgnoreCase("Circle"))
            return new Circle();

        else if (type.equalsIgnoreCase("Rectangle"))
            return new Rectangle();

        return null;
    }
}

public class FactoryPattern {

    public static void main(String[] args) {

        ShapeFactory factory = new ShapeFactory();

        Shape s1 = factory.getShape("Circle");
        s1.draw();

        Shape s2 = factory.getShape("Rectangle");
        s2.draw();
    }
}
