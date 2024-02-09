# Lab Report 3


1. **Write a Java program to show single inheritance.**
   **solution:**
   ```java
   class Company {
     String name = "Xiaomi";
   }

   class Model extends Company {
     String model = "Redmi Note 13 Pro";

     public static void main(String args[]) {
      Model c = new Model();
      System.out.printf("Brand of %s is %s\n", c.model, c.name);
     }
   }
   ```
<br>

2. **Write a Java code to show multilevel inheritance.**
   **solution:**
   ```java
   class Company {
     String brand = "Xiaomi";
   }

   class Display extends Company {
     String display = "AMOLED";
   }

   class Model extends Display {
     String model = "Redmi Note 13 Pro";

     public static void main(String args[]) {
      Model c = new Model();
      System.out.printf("Brand  : %s\n", c.brand);
      System.out.printf("Model  : %s\n", c.model);
      System.out.printf("Display: %s\n", c.display);
     }
   }
   ```
<br>

3. **Write a Java code to show hierarchical inheritance.**
   **solution:**
   ```java
   class Parent {
     String brand = "Xiaomi";
   }

   class Redmi extends Parent {
     String name = "Redmi";
   }

   class Poco extends Parent {
     String name = "Poco";
   }

   class Mi extends Parent {
     String name = "Mi";
   }

   class Hierarchical {

     public static void main(String args[]) {
      Redmi r = new Redmi();
      System.out.printf("Parent of %s is %s\n", r.name, r.brand);

      Poco p = new Poco();
      System.out.printf("Parent of %s is %s\n", p.name, p.brand);

      Mi m = new Mi();
      System.out.printf("Parent of %s is %s\n", m.name, m.brand);
     }
   }
   ```
<br>

4. **Write a Java code by combining Single, multilevel, and hierarchical in a single code.**
   **solution:**
   ```java
   class Mobile {
     String type = "Smartphone";
   }

   class Brand extends Mobile {
     String brand = "Xiaomi";
   }

   class Redmi extends Brand {
     String name = "Redmi";
     String founded = "July 2013";
   }

   class Poco extends Brand {
     String name = "Poco";
     String founded = "August 2018";
   }

   class Note13Pro extends Redmi {
     String model = "Note 13 Pro";
     String display = "AMOLED";
     String storage = "256GB";

     void displayInfo() {
      System.out.printf("%s (%s) released a new phone.\n", name, brand);
      System.out.printf("Model: %s ~ %S, %S\n", model, display, storage);
     }
   }

   class PocoF5 extends Poco {
     String model = "Poco F5";
     String display = "AMOLED, HDR10+";
     String storage = "512GB";

     void displayInfo() {
      System.out.printf("%s (%s) released a new phone.\n", name, brand);
      System.out.printf("Model: %s ~ %S, %S\n", model, display, storage);
     }
   }

   class InheritanceMixture {
     public static void main(String args[]) {
      PocoF5 phone1 = new PocoF5();
      phone1.displayInfo();

      System.out.println();

      Note13Pro phone2 = new Note13Pro();
      phone2.displayInfo();
     }
   }
   ```