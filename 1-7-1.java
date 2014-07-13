import java.math.BigDecimal;
import java.math.RoundingMode;

public class SqrtTest {

    public static void main(String[] args) {
        if (args.length < 1) {
            System.out.println("Usage: java SqrtTest [int]");
            System.exit(1);
        }
        BigDecimal x = new BigDecimal(args[0]);

        BigDecimal route = Sqrt.sqrt(x);

        System.out.println(route);

    }

}

class Sqrt{

    private static int decimal_places = 10;

    public static BigDecimal sqrt(BigDecimal x) {
        return sqrt_iter(new BigDecimal("1.0"), x);
    }

    private static BigDecimal sqrt_iter(BigDecimal guess, BigDecimal x) {
        System.out.println("guess: " + guess);
        if (good_enough(guess, x)) {
            return guess;
        } else {
            return sqrt_iter(improve(guess, x), x);
        }
    }

    private static BigDecimal improve(BigDecimal guess, BigDecimal x) {
        return average(guess, x.divide(guess, decimal_places, RoundingMode.HALF_UP));    
    }
    
    private static boolean good_enough(BigDecimal guess, BigDecimal x) {
        System.out.println("enough?: " + guess.pow(2).subtract(x).abs());
        return (guess.pow(2).subtract(x).abs().compareTo(new BigDecimal("0.001")) <  0);
    }

    private static BigDecimal average(BigDecimal x, BigDecimal y) {
        return x.add(y).divide(new BigDecimal(2));
    }

}

