# Lab Report 01

1. **Write a java program to reverse a value without using array using Scanner method.**
   **solution:**
   ```java
   import java.util.Scanner;

   class Task01 {
     static int reverseInt(int num) {
      int temp = 0;
      while (num > 0) {
        temp = (temp * 10) + (num % 10);
        num = num / 10;
      }
      return temp;
     }

     public static void main(String[] args) {
      Scanner scanf = new Scanner(System.in);
      System.out.printf("Enter a number: ");
      int num = scanf.nextInt();
      System.out.printf("Reversed: %d", reverseInt(num));
     }
   }
   ```

2. **Write a java program to find a value prime or not using Scanner method.**
   **solution:**
   ```java
   import java.util.Scanner;

   class Task02 {
     static boolean isPrime(int num) {
      if (num <= 1) return false;
      int range = (int) Math.sqrt(num);
      for (int i = 2; i <= range; ++i) {
        if (num % i == 0) return false;
      }
      return true;
     }

     public static void main(String[] args) {
      Scanner scanf = new Scanner(System.in);
      System.out.printf("Enter a number: ");
      int letter = scanf.nextInt();
      System.out.printf("Number %d is %s prime.\n", letter, isPrime(letter) ? "a" : "not a");
     }
   }
   ```

3. **Write a Java program to find the area of a circle using Scanner method.**
   **solution:**
   ```java
   import java.util.Scanner;

   class Task03 {
     static double area(double radius) {
       return (Math.PI * radius * radius);
     }

     public static void main(String[] args) {
       Scanner scanf = new Scanner(System.in);
       System.out.printf("Radius of circle:");
       double radius = scanf.nextDouble();
       System.out.printf("Area of circle: %.2f", area(radius));
     }
   }
   ```

4. **Write a Java program to find a letter Vowel or Consonant using Scanner method.**
   **solution:**
   ```java
   import java.util.Scanner;

   class Task04 {
    static boolean isVowel(char letter) {
      return (letter == 'a' || letter == 'e' || letter == 'i' || letter == 'o' || letter == 'u');
    }

    public static void main(String[] args) {
      Scanner scanf = new Scanner(System.in);
      System.out.printf("Enter a letter: ");
      char letter = scanf.next().charAt(0);
      System.out.printf("Letter %c is a %s", letter, isVowel(letter) ? "vowel" : "consonant");
    }
   }
   ```

5. **Write a Java program to find the Subtraction, Multiplication, and Division of two number using JOptionPane class.**
   **solution:**
   ```java
   import java.awt.GridLayout;
   import javax.swing.JOptionPane;
   import javax.swing.JPanel;
   import javax.swing.JTextField;

   class CalculatorGui {
     public static void main(String[] args) {
      JPanel panel = new JPanel(new GridLayout(2, 1));

      JTextField num1 = new JTextField();
      JTextField num2 = new JTextField();
      panel.add(num1);
      panel.add(num2);

      JOptionPane.showMessageDialog(null, panel);

      int a, b;
      a = Integer.parseInt(num1.getText());
      b = Integer.parseInt(num2.getText());

      JOptionPane.showMessageDialog(
         null,
         String.format(
            "Summation: %d\nSubtraction: %d\nMultiplication: %d\nDivision: %d",
            (a + b), (a - b), (a * b), (a / b)));
     }
   }
   ```
