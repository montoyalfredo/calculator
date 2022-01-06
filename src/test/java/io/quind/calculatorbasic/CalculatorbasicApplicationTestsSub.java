package io.quind.calculatorbasic;

import io.quind.calculatorbasic.domain.Calculator;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.assertEquals;

@SpringBootTest
class CalculatorbasicApplicationTestsSub {

	@Test
	void contextLoads() {
		double number1 = 5;
		double number2 = 8;
		double prediction = -3;
		double result;
		Calculator instanceTest = new Calculator();

		//Act
		result = instanceTest.subtractTwoNumbers(number1, number2);

		//Assert
		assertEquals(result, prediction);

	}
}
