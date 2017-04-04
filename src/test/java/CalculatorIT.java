import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class CalculatorIT {

    @Test
    public void testSubtract() throws InterruptedException {
        Calculator calculator = new Calculator();

        Thread.sleep(3000);
        assertEquals(6, calculator.subtract(8,3));
    }

    @Test
    public void testSubtractNegative() throws InterruptedException {
        Calculator calculator = new Calculator();

        Thread.sleep(3000);
        assertEquals(6, calculator.subtract(8,-3));
    }
}
