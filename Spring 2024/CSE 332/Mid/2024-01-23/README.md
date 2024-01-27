# Lab 01 Activities
###### 2024 January 23


### Evaluation Task: Take three inputs from user The find the two highest values from them and also find the differences between those two values.

#### solution: 
```java
import java.util.Arrays;
import java.util.Scanner;
import java.util.Collections;

class Task1 {
  public static void main(String[] args) {
    Integer[] arr = new Integer[3];
    Scanner sc = new Scanner(System.in);

    System.out.printf("Enter three numbers: ");
    for (int i = 0; i < 3; i++) {
      arr[i] = sc.nextInt();
    }

    Arrays.sort(arr, Collections.reverseOrder());

    System.out.printf("Highest two values     : %d,%d\n", arr[0], arr[1]);
    System.out.printf("Diff between two values: %d", (arr[0] - arr[1]));
  }
}
```


### Intro to Swing

#### Message Dialog 
```java
import javax.swing.JOptionPane;

class Dialog
{
    public static void main(String[] args)
    {
        JOptionPane.showMessageDialog(null, "Hi");
    }
}
```
#### Input Dialog  
```java
import javax.swing.JOptionPane;

class InputDialog {
  public static void main(String[] args) {
    String n1, n2;
    int a, b;
    n1 = JOptionPane.showInputDialog("Enter Number 1:");
    n2 = JOptionPane.showInputDialog("Enter Number 2:");
    a = Integer.parseInt(n1);
    b = Integer.parseInt(n2);
    JOptionPane.showMessageDialog(null, "Summation: " + (a + b));
  }
}
```

### OOP 

```java
class Room {
  int length, width;

  Room(int x, int y) {
    length = x;
    width = y;
  }

  void getArea() {
    System.out.printf("Area: %d", (length * width));
  }

}

class Area {
  public static void main(String[] args) {

    Room r = new Room(5, 7);
    r.getArea();
  }
}
```