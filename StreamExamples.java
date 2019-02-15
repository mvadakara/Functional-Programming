/*
* StreamExamples.java
*/

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Stream;

public class StreamExamples
{
	public static void main (String[] args) 
	{
	// list2Stream();
	// mapStringStream();
	//filterStringStream();
	reduceStream();
	}
	
	static void list2Stream () {
	
	List<Integer> myList = new ArrayList<Integer>();
	myList.add(1);
	myList.add(5);
	myList.add(8);
	
	Stream<Integer> myStream = myList.stream();
		
	myStream.forEach( e -> System.out.println(e));
	}
    static void mapStringStream()
    {
		String [] myArray = new String [] {"eenie", "meenie", "miney", "moe"};
		Stream<String>myArrayStream = Array.stream(myArray);
		
		Stream<String> myNewStream = myArrayStream.map(s -> s.toUpperCase());
		
		String[] myNewArray = myNewStream.toArray(String[]::new);
		
		for (String s : myNewArray)
			System.out.println(s);
			
	 }
	 
	 static void filterStringStream() {
		 	String [] myArray = new String [] { "eenie", "meenie", "miney", "moe"}
		 	
		 	Arrays.stream(myArray)
		 	.filter(s -> s.length() > 4)
		 	.forEach(e -> System.out.println(e));
   }
   static void reduceStream() 
   {
	   int [] myArray = {1, 5, 8};
	   
	   System.out.println("Sum: " + Arrays.stream(myArray).sum());
	   System.out.println("Average: " + Arrays.stream(myArray).average());
	  
	   System.out.println("Count: " + Arrays.stream(myArray).count());
	   
	   String[] myStringarray = new String[] {"eenie", "meenie", "miney", "moe"};
	   String ccat = Arrays.stream(myStringArray).reduce("", (a,b) -> a + b + ", "  );
	   System.out.println("Concatenated string: " + ccat);
   }
}
