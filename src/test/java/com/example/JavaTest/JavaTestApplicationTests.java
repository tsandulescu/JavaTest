package com.example.JavaTest;

import org.junit.jupiter.api.Test;
import static org.junit.Assert.assertEquals;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class JavaTestApplicationTests {

	@Test
	public void testPrint() {
		JavaTestApplication app = new JavaTestApplication();

		assertEquals("1", app.printSomething(1));
		assertEquals("Chausettes", app.printSomething(3));
		assertEquals("Sales", app.printSomething(5));
		assertEquals("ChausettesSales", app.printSomething(15));
	}

}
