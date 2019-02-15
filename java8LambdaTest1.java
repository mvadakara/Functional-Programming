/* 
Java lambda expressions example"
* 
*
Java Lamda expressions are used primarly to define inline implementation 
of a functional interface, i.e., an interface with only a single method. 
A functional interface will always have one method

*/

public class java8LambdaTest1 {
			
			public static void main (String [] args) 
			{
					java8LambdaTest1 tester = new java8LambdaTest1();
					// right side of operation is lambda expressions
					// lamda operation with type declaration  
					MathOperation addition = (int a, int b) -> a + b;
					// lamda operation without type declaration
					MathOperation substraction = (a, b) -> a - b;
					// with return statement, with curly braces 
					MathOperation multiplication = (int a, int b) -> { return a * b };
					// without a return or curly braces 
					MathOperation division = (int a, int b) -> a/b;
					// Note that the third operation ("addition") is a reference to
					// the addition method.  Method references are also a "functional" feature
					// in java
					System.out.println("10 + 5 = " + tester.operate(10, 5, addition));
					System.out.println("10 - 5 = " + tester.operate(10, 5, substraction));
					System.out.println("10 * 5 = " + tester.operate(10, 5, multiplication));
					System.out.println("10 / 5 = " + tester.operate(10, 5, division));
					
					// Override the sayMessage
					
					GreetingService greetService1 = message ->
					System.out.println("Hello " + message);
					
					
					GreetingService greetService2 = message ->
					System.out.println("Welcome " + message);
					
					greetService1.sayMessage("Billy");
					greetService2.sayMessage("Bob");
			}
			
			
			/* functional interfaces - single method only */
			
			interface MathOperation
			{
				int operation(int a, int b); 
			}

			interface GreetingService 
			{
				void sayMessage(String message);
			}
			
			private int operate(int a, int b, MathOperation mathOperation)
			{
				return mathOperation.operation(a, b);
			}
		}
