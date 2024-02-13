# Lab Assignment 01

1. **Write a Java program to print the sum, divide, product of two numbers.**
   **solution:**
   ```java
   import java.util.Scanner;

   class Calculator {
     int x, y;

     Calculator(int x, int y) {
       if (x > y) {
         this.x = x;
         this.y = y;
       } else {
         this.x = y;
         this.y = x;
       }
     }

     int add() {
       return x + y;
     }

     int mul() {
       return x * y;
     }

     float div() {
       return x / y;
     }

     public static void main(String[] args) {
       Scanner cin = new Scanner(System.in);

       System.out.printf("Enter two number: ");
       int x = cin.nextInt();
       int y = cin.nextInt();

       Calculator c = new Calculator(x, y);
       System.out.printf("Addition      : %d\n", c.add());
       System.out.printf("Multiplication: %d\n", c.mul());
       System.out.printf("Division      : %f\n", c.div());
     }
   }
   ```

2. **Write a Java program to print the area and perimeter of a circle.**
   **solution:**
   ```java
   import java.util.Scanner;

   class Circle {
     double r;

     Circle(double radius) {
       r = radius;
     }

     double area() {
       return Math.PI * r * r;
     }

     double perimeter() {
       return 2 * Math.PI * r;
     }

     public static void main(String[] args) {
       Scanner cin = new Scanner(System.in);

       System.out.printf("Enter radius of circle: ");
       double r = cin.nextFloat();

       Circle c = new Circle(r);
       System.out.printf("Area     : %.2f\n", c.area());
       System.out.printf("Perimeter: %.2f\n", c.perimeter());
     }
   }
   ```

3. **Write a Java program to swap two variables without using third variable.**
   **solution:**
   ```java
   // assuming variable type to be int
   import java.util.Scanner;

   class SwapValues {
     public static void main(String[] args) {
      Scanner cin = new Scanner(System.in);

      System.out.printf("Enter two numbers: ");
      int x = cin.nextInt();
      int y = cin.nextInt();

      System.out.printf("%d %d\n", x, y);

      x = x + y;
      y = x - y;
      x = x - y;

      System.out.printf("%d %d\n", x, y);
     }
   }
   ```

4. **Write a Java program and compute the sum of the digits of an integer. (Such as: Input an integer: 45; _Expected Output_ : The sum of the digits is: 9)**
   **solution:**
   ```java
   import java.util.Scanner;

   class DigitSum {
     int sum(String num) {
       int temp = 0;
       for (int i = 0; i < num.length(); ++i) {
         temp += Character.getNumericValue(num.charAt(i));
       }
       return temp;
     }

     public static void main(String[] args) {
       Scanner cin = new Scanner(System.in);
       System.out.printf("Input an integer: ");
       String num = cin.nextLine();

       DigitSum ds = new DigitSum();
       System.out.printf("The sum of the digits is: %d\n", ds.sum(num));
     }
   }
   ```

5. **Write a Java program to reverse a string.**
   **solution:**
   ```java
   import java.util.Scanner;

   class ReverseString {
     String reverse(String str) {
       String temp = "";
       for (int i = str.length() - 1; i >= 0; --i) {
         temp += str.charAt(i);
       }
       return temp;
     }

     public static void main(String[] args) {
       Scanner cin = new Scanner(System.in);
       System.out.printf("Enter a string: ");
       String num = cin.nextLine();

       ReverseString rs = new ReverseString();
       System.out.printf("Reversed String: %s\n", rs.reverse(num));
     }
   }
   ```

6. **Write a Java program to count the letters, spaces, numbers and other characters of an input string.**
   **solution:**
   ```java
    import java.util.HashMap;
    import java.util.Map;
    import java.util.Scanner;

    class StringStats {
      String text;
      Map<Character, Integer> mp = new HashMap<Character, Integer>();

      StringStats(String str) {
        text = str;
      }

      void show() {
        int letters = 0, digits = 0, others = 0, spaces = 0;
        
        for (int i = 0; i < text.length(); ++i) {
          char x = text.trim().charAt(i);
          if (((x >= 'A') && (x <= 'Z')) || ((x >= 'a') && (x <= 'z'))) {
            letters += 1;
          } else if (x == ' ') {
            spaces += 1;
          } else if (((x >= '0') && (x <= '9'))) {
            digits += 1;
          } else {
            others += 1;
          }
        }

        System.out.println("Letters: " + letters);
        System.out.println("Spaces: " + spaces);
        System.out.println("Numbers: " + digits);
        System.out.println("Other Characters: " + others);
      }

      public static void main(String[] args) {
        Scanner cin = new Scanner(System.in);
        String str = cin.nextLine();

        StringStats stats = new StringStats(str);

        stats.show();
      }
    }
   ```
   > [!NOTE]
   > https://docs.oracle.com/javase/8/docs/api/java/util/Map.html   

7. **Write a Java program to input and display your password.**
   **solution:**
   ```java
   import java.io.Console;

   class IOExample {
     public static void main(String[] args) {
      Console console = System.console();
      char[] passwordArray = console.readPassword("Enter Password: ");
      console.printf("Password was: %s%n", new String(passwordArray));
     }
   }
   ```

8. **Write a Java program to display the current date time in specific format.**
   **solution:**
   ```java
    import java.text.SimpleDateFormat;
    import java.util.Calendar;

    class DateTimeExample {
      public static void main(String[] args) {
        Calendar c = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        System.out.format("%tB %te, %tY ~ %tl:%tM %tp%n", c, c, c, c, c, c);
      }
    }
   ```
   > [!NOTE]
   > https://docs.oracle.com/javase/8/docs/api/java/util/Formatter.html#dt

9. **Write a Java program to print the odd numbers from 1 to 99. Prints one number per line**
   **solution:**
   ```java
   class OddNumber {
     void show() {
       for (int i = 1; i < 100; i += 2) {
         System.out.printf("%d\n", i);
       }
     }

     public static void main(String[] args) {
       System.out.printf("Odd numbers from 1 to 99\n");
       OddNumber on = new OddNumber();
       on.show();
     }
   }
   ```

10. **Write a Java program to accept a number and check the number is even or not. Prints 1 if the number is even or 0 if the number is odd.**
    **solution:**
    ```java
    import java.util.Scanner;

    class OddNumber {
      int check(int num) {
        return ((num & 1) == 0) ? 1 : 0;
      }

      public static void main(String[] args) {
        Scanner cin = new Scanner(System.in);
        System.out.printf("Enter a number: ");
        int x = cin.nextInt();

        OddNumber on = new OddNumber();
        System.out.println(on.check(x));
      }
    }
    ```

11. **Write a Java program to reverse a word.**
    **solution:**
    ```java
    import java.util.Scanner;

    class ReverseWord {
      String reverse(String str) {
        String temp = "";
        for (int i = str.length() - 1; i >= 0; --i) {
          temp += str.charAt(i);
        }
        return temp;
      }

      public static void main(String[] args) {
        Scanner cin = new Scanner(System.in);
        System.out.printf("Enter a word: ");
        String num = cin.nextLine();

        ReverseWord rw = new ReverseWord();
        System.out.printf("Reversed word: %s\n", rw.reverse(num));
      }
    }
    ```

12. **Write a Java program to compute the sum of the first 100 prime numbers.**
    **solution:**
    ```java
    class PrimeNum {
      int size = 101;
      Boolean nums[] = new Boolean[size];

      boolean isPrime(int num) {
        int range = (int) Math.sqrt(num);
        for (int i = 2; i <= range; ++i) {
          if (num % i == 0) return false;
        }
        return true;
      }

      void build() {
        for (int i = 2; i < size; ++i) {
          nums[i] = isPrime(i);
        }
      }

      int calcSum() {
        int sum = 0;
        for (int i = 2; i < size; ++i) {
          if (nums[i]) sum += i;
        }
        return sum;
      }

      public static void main(String[] args) {
        PrimeNum pn = new PrimeNum();
        pn.build();
        System.out.printf("First 100 prime numbers summation: %d\n", pn.calcSum());
      }
    }
    ```

13. **Write a Java program to check if a positive number is a palindrome or not.**
    **solution:**
    ```java
    import java.util.Scanner;

    class Palindrome {
      String num;

      Palindrome(String num) {
        this.num = num;
      }

      boolean check() {
        StringBuilder reversed = new StringBuilder();
        reversed.append(num);
        reversed.reverse();
        return reversed.toString().equals(num.toString());
      }

      public static void main(String[] args) {
        Scanner cin = new Scanner(System.in);
        System.out.print("Enter a number: ");
        String x = cin.nextLine();

        Palindrome p = new Palindrome(x);

        if (p.check()) {
          System.out.println("Palindrome");
        } else {
          System.out.println("Not Palindrome");
        }
      }
    }
    ```
    > [!NOTE]
    > https://docs.oracle.com/javase/8/docs/api/java/lang/StringBuilder.html

14. **Write a Java Program to find the largest of three numbers using if-else.**
    **solution:**
    ```java
    import java.util.Scanner;

    class LargestNumber {
      int max(int a, int b, int c) {
        if ((a > b) && (a > c)) return a;
        else if (b > c) return b;
        else return c;
      }

      public static void main(String[] args) {
        Scanner cin = new Scanner(System.in);

        System.out.printf("Enter three numbers: ");
        int x = cin.nextInt();
        int y = cin.nextInt();
        int z = cin.nextInt();

        LargestNumber ln = new LargestNumber();
        System.out.printf("largest number: %d", ln.max(x, y, z));
      }
    }
    ```

15. **Write a Java Program to check if number is positive or negative.**
    **solution:**
    ```java
    import java.util.Scanner;

    class PositiveOrNegative {
      boolean is_positive(int num) {
        return (num >= 0);
      }

      public static void main(String[] args) {
        Scanner cin = new Scanner(System.in);

        System.out.printf("Enter a number: ");
        int x = cin.nextInt();

        PositiveOrNegative pon = new PositiveOrNegative();
        
        if (pon.is_positive(x)) {
          System.out.println("positive");
        } else {

          System.out.println("negative");
        }
      }
    }
    ```

16. **Write a Java Program to check whether a char is vowel or Consonant using Switch Case**
    **solution:**
    ```java
    import java.util.Scanner;

    class VowelOrConsonant {
      boolean isVowel(char c) {
        boolean flag;
        switch (c) {
          case 'a':
            flag = true;
            break;
          case 'e':
            flag = true;
            break;
          case 'i':
            flag = true;
            break;
          case 'o':
            flag = true;
            break;
          case 'u':
            flag = true;
            break;
          default:
            flag = false;
            break;
        }
        return flag;
      }

      public static void main(String[] args) {
        Scanner cin = new Scanner(System.in);

        System.out.printf("Enter a letter: ");
        char x = cin.next().charAt(0);

        VowelOrConsonant voc = new VowelOrConsonant();
        if (voc.isVowel(x)) {
          System.out.println("vowel");
        } else {
          System.out.println("consonant");
        }
      }
    }
    ```

17. **Write a Java Program to make a Simple Calculator using Switch Case.**
    **solution:**
    ```java
    import java.util.Scanner;

    class SwitchyCalculator {
      double x, y;
      char op;

      SwitchyCalculator(double x, double y, char op) {
        this.x = x;
        this.y = y;
        this.op = op;
      }

      double Calculate() {
        double result = 0;
        switch (op) {
          case '+':
            result = (x + y);
            break;
          case '-':
            result = (x - y);
            break;
          case '*':
            result = (x * y);
            break;
          case '/':
            result = (x / y);
            break;
          default:
            throw new IllegalArgumentException("Invalid operation.");
        }

        return result;
      }

      public static void main(String[] args) {
        Scanner cin = new Scanner(System.in);

        System.out.printf("Enter two numbers: ");
        double x = cin.nextDouble();
        double y = cin.nextDouble();

        System.out.print("Choose an operator (+, -, *, /): ");
        char op = cin.next().charAt(0);

        SwitchyCalculator swtcal = new SwitchyCalculator(x, y, op);
        System.out.printf("Result: %.2f\n", swtcal.Calculate());
      }
    }
    ```
    > [!NOTE]
    > https://docs.oracle.com/javase/8/docs/api/java/lang/Exception.html

18. **Write a Java Program to find factorial of a number using loops.**
    **solution:**
    ```java
	import java.util.Scanner;

	class Factorial {
	  int num;

	  Factorial(int num) {
	    this.num = num;
	  }

	  int calc() {
	    int result = 1;
	    for (int i = 1; i <= num; ++i) {
	      result *= i;
	    }
	    return result;
	  }

	  public static void main(Strin    [] ar    s) {
	    Scanner cin = new Scanner(System.in);
	    int str = cin.nextInt();

	    Factorial f = new Factorial(str);
	    System.out.println(f.calc());
	  }
	}
    ```

19. **Write a Java Program to print Fibonacci Series using loop.**
    **solution:**
    ```java
    import java.util.Scanner;

    class Fibonacci {
      int num;

      Fibonacci(int x) {
        num = x;
      }

      void show() {
        int curr = 1, prev = 0;
        System.out.printf("0 1 ");

        for (int i = 2; i <= (num - 2); ++i) {
          int sum = curr + prev;
          System.out.printf("%d ", sum);

          prev = curr;
          curr = sum;
        }
      }

      public static void main(String[] args) {
        Scanner cin = new Scanner(System.in);
        int num = cin.nextInt();

        Fibonacci fbn = new Fibonacci(num);
        fbn.show();
      }
    }
    ```

20. **Write a Java program to Find Second largest element in an array.**
    **solution:**
    ```java
    import java.util.Arrays;
    import java.util.Collections;
    import java.util.Scanner;

    class LargestNumber {
      int second_max(Integer[] arr) {
        Arrays.sort(arr, Collections.reverseOrder());
        return arr[1];
      }

      public static void main(String[] args) {
        Scanner cin = new Scanner(System.in);

        int n = cin.nextInt();
        Integer[] arr = new Integer[n];

        for (int i = 0; i < n; ++i) {
          arr[i] = cin.nextInt();
        }

        LargestNumber ln = new LargestNumber();
        System.out.printf("second largest number: %d", ln.second_max(arr));
      }
    }
    ```
    > [!NOTE]
    > https://docs.oracle.com/javase/8/docs/api/java/util/Collections.html

21. **Write a Java program to Reverse words in a given string**
    **solution:**
    ```java
    import java.util.Scanner;

    class ReverseWords {
      String str;

      ReverseWords(String str) {
        this.str = str;
      }

      void reverse() {
        String[] words = str.split(" ");

        for (int i = 0; i < words.length; ++i) {
          words[i] = new StringBuilder(words[i]).reverse().toString();
        }
        str = String.join(" ", words);
      }

      void show() {
        System.out.println("Reversed: " + str);
      }

      public static void main(String[] args) {
        Scanner cin = new Scanner(System.in);

        System.out.print("Enter a string: ");
        String x = cin.nextLine();

        ReverseWords rw = new ReverseWords(x);
        rw.reverse();
        rw.show();
      }
    }
    ```

22. **Write a program in Java to count the total number of alphabets, digits and special characters in a string.**
    **solution:**
    ```java
    import java.util.HashMap;
    import java.util.Map;
    import java.util.Scanner;

    class StringStats {
      String text;
      Map<Character, Integer> mp = new HashMap<Character, Integer>();

      StringStats(String str) {
        text = str;
      }

      void show() {
        int letters = 0, digits = 0, others = 0;
        for (int i = 0; i < text.length(); ++i) {
          char x = text.trim().charAt(i);
          if (x == ' ') continue;

          if (((x >= 'A') && (x <= 'Z')) || ((x >= 'a') && (x <= 'z'))) {
            letters += 1;
          } else if (((x >= '0') && (x <= '9'))) {
            digits += 1;
          } else {
            others += 1;
          }
        }

        System.out.println("Alphabets: " + letters);
        System.out.println("Digits: " + digits);
        System.out.println("Special Characters: " + others);
      }

      public static void main(String[] args) {
        Scanner cin = new Scanner(System.in);
        String str = cin.nextLine();

        StringStats stats = new StringStats(str);

        stats.show();
      }
    }
    ```

23. **Write a Java program to check whether a substring is present in a string.**
    **solution:**
    ```java
    import java.util.Scanner;

    class SubString {
      String text, query;

      SubString(String text, String query) {
        this.text = text;
        this.query = query;
      }

      boolean check() {
        boolean flag = false;
        for (int i = 0; i <= (text.length() - query.length()); ++i) {
          for (int j = 0; j < query.length(); ++j) {
            if (text.charAt(i + j) == query.charAt(j)) {
              flag = true;
            } else {
              flag = false;
              break;
            }
          }
          if (flag) return flag;
        }
        return flag;
      }

      public static void main(String[] args) {
        Scanner cin = new Scanner(System.in);

        System.out.print("Enter text: ");
        String text = cin.nextLine();

        System.out.print("Enter query: ");
        String query = cin.nextLine();

        SubString ss = new SubString(text, query);
        if (ss.check()) {
          System.out.println("exists");
        } else {
          System.out.println("not exists");
        }
      }
    }
    ```

24. **Write a Java program to find the frequency of characters.**
    **solution:**
    ```java
    import java.util.HashMap;
    import java.util.Map;
    import java.util.Scanner;

    class CharFreq {
      String text;
      Map<Character, Integer> mp = new HashMap<Character, Integer>();

      CharFreq(String text) {
        this.text = text;
      }

      void build() {
        for (int i = 0; i < text.length(); ++i) {
          char x = text.charAt(i);
          if (mp.containsKey(x)) {
            mp.put(x, mp.get(x) + 1);
          } else {
            mp.put(x, 1);
          }
        }
      }

      void show() {
        for (Map.Entry<Character, Integer> i : mp.entrySet()) {
          System.out.println(i.getKey() + ": " + i.getValue());
        }
      }

      public static void main(String[] args) {
        Scanner cin = new Scanner(System.in);
        String str = cin.nextLine();

        CharFreq cf = new CharFreq(str);
        cf.build();
        cf.show();
      }
    }
    ```
