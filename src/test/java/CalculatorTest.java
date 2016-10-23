import static org.junit.Assert.assertEquals;
import net.vincedgy.cdci.ebdemo.Calculator;
import org.junit.Test;

public class CalculatorTest {
  @Test
  public void evaluatesExpression() {
    Calculator calculator = new Calculator();
    int sum = calculator.addition(1,2);
    assertEquals(3, sum);
  }
}