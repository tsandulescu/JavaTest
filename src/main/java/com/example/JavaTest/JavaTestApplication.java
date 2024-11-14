package com.example.JavaTest;

import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class JavaTestApplication {

	public static void main(String[] args) {
		JavaTestApplication app = new JavaTestApplication();
		app.loopAndPrint();
	}

	public String printSomething(int number) {
		if(number % 3 == 0 && number % 5 == 0) {
			return "ChausettesSales";
		} else if (number % 3 == 0) {
			return "Chausettes";
		} else if (number % 5 == 0) {
			return "Sales";
		} else {
			return String.valueOf(number);
		}
	}

	public void loopAndPrint() {
		for (int i = 1; i <= 100; i++) {
			System.out.println(printSomething(i));
		}
	}
}
