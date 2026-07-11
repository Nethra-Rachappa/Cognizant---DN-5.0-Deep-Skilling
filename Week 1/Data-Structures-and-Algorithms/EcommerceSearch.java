class Product {
    int productId;
    String productName;
    double price;

    Product(int productId, String productName, double price) {
        this.productId = productId;
        this.productName = productName;
        this.price = price;
    }
}

public class EcommerceSearch {

    public static void main(String[] args) {

        Product[] products = {
                new Product(101, "Laptop", 55000),
                new Product(102, "Mobile", 25000),
                new Product(103, "Headphones", 3000),
                new Product(104, "Keyboard", 1500),
                new Product(105, "Mouse", 800)
        };

        int searchId = 103;

        boolean found = false;

        for (Product product : products) {

            if (product.productId == searchId) {

                System.out.println("Product Found");
                System.out.println("Product ID : " + product.productId);
                System.out.println("Product Name : " + product.productName);
                System.out.println("Price : ₹" + product.price);

                found = true;
                break;
            }
        }

        if (!found) {
            System.out.println("Product Not Found");
        }
    }
}
