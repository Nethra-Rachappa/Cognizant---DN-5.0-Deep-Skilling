public class FinancialForecast {

    static double forecast(double currentValue, double growthRate, int years) {

        if (years == 0)
            return currentValue;

        return forecast(currentValue * (1 + growthRate), growthRate, years - 1);
    }

    public static void main(String[] args) {

        double currentRevenue = 100000;
        double growthRate = 0.10;
        int years = 5;

        double futureRevenue = forecast(currentRevenue, growthRate, years);

        System.out.printf("Predicted Revenue after %d years = ₹%.2f%n", years, futureRevenue);
    }
}
