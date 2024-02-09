# Lab Report 02
1. **Write a java program to show No- Arguments Constructor.**
   **solution:**
   ```java
   class Task01 {
     int value;

     Task01() {
       value = 0;
     }

     int getValue() {
       return value;
     }

     public static void main(String[] args) {
       Task01 t = new Task01();
       System.out.print(t.getValue());
     }
   }
   ```
<br>

2. **Write a Java code to display parameterized Constructor in java.**
   **solution:**
   ```java
   class Task01 {
     int value;

     Task01(int val) {
       value = val;
     }

     int getValue() {
       return value;
     }

     public static void main(String[] args) {
       Task01 t = new Task01(20);
       System.out.print(t.getValue());
     }
   }
   ```
<br>

3. **Write a Java code to copy a constructor by another Constructor.**
   **solution:**
   ```java
   class Task03 {
     int value;

     Task03(int val) {
       value = val;
     }

     Task03(Task03 t) {
       value = t.value;
     }

     int getValue() {
       return value;
     }

     public static void main(String[] args) {
       Task03 t1 = new Task03(20);
       Task03 t2 = new Task03(t1);
       System.out.printf("t1 = %d t2 = %d\n", t1.getValue(), t2.getValue());
     }
   }
   ```
<br>

4. **Write a Java code to copy a constructor by assigning the values of one object into another.** 
   **solution:**
   ```java
   class Task04 {
     int value;

     Task04(int val) {
       value = val;
     }

     Task04(Task04 t) {
       value = t.value;
     }

     int getValue() {
       return value;
     }

     public static void main(String[] args) {
       Task04 t1 = new Task04(20);
       Task04 t2 = new Task04(50);
       System.out.printf("Before, t1 = %d t2 = %d\n", t1.getValue(), t2.getValue());
       t2 = t1;
       System.out.printf("After,  t1 = %d t2 = %d\n", t1.getValue(), t2.getValue());
     }
   }
   ```
   
<br>

5. **Write a Java code where a constructor will be called from another constructor using this keyword.**
   **solution:**
   ```java
   class Task05 {
     int value;

     Task05(int val) {
       value = val;
     }

     Task05() {
       this(0);
     }

     public static void main(String[] args) {
       Task05 t1 = new Task05();
       System.out.printf("value = %d", t1.value);
     }
   }
   ```
