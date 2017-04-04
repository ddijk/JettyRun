import static org.junit.Assert.assertEquals;

public class CalculatorTest {
    @org.junit.Test
    public void add() throws Exception {

        Calculator calculator = new Calculator();


        assertEquals(5, calculator.add(2,3));
    }

}
