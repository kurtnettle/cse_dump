# Lab 03 Activities
###### 2024 January 30

### Evaluation Task: Create a class named `People` with two constructors and one method. The constructors should be named `People()`, `People(int age, String name)` and `String Hello(String x)`. All variable names in this class should be similar to parameter variable names. The null constructor will call the second one. The `Hello` method will return and print a message to the main method.


**solution:**

```java
class People {

  String name;
  Integer age;

  People() {
     this(0, "Null");
  }

  People(int age, String name) {
    this.name = name;
    this.age = age;
  }

  String Hello(String x) {
    return x;
  }

  public static void main(String[] args) {
    People obj1 = new People();
    String msg1 = obj1.Hello("Hello");
    System.out.printf("%s, %s (%d)\n", msg1, obj1.name, obj1.age);
  }
}
```


### Task 01
```java
class Constructor1 {
  int id;

  Constructor1() {
    id = 10;
  }

  void increment() {
    id++;
  }

  void decrement() {
    id--;
  }

  int getId() {
    return id;
  }

  public static void main(String[] args) {
    Constructor1 c1 = new Constructor1();

    c1.increment();
    System.out.printf("%s\n", c1.getId());

    c1.decrement();
    System.out.printf("%s\n", c1.getId());
  }
}
```

### Task 02
```java
class ParameterCon {
  int age;
  String name;

  ParameterCon(int x, String y) {
    age = x;
    name = y;
  }

  void message() {
    System.out.printf("Age: %f\nName: %s", age, name);
  }

  public static void main(String[] args) {
    ParameterCon obj1 = new ParameterCon(24, "AAA");
    ParameterCon obj2 = new ParameterCon(25, "BBB");

    obj1.message();
    obj2.message();
  }
}
```
### Task 03

```java
class CopyCon {
  int age;
  String name;

  CopyCon(int x, String y) {
    age = x;
    name = y;
  }

  CopyCon(CopyCon con) {
    age = con.age;
    name = con.name;
  }

  void message() {
    System.out.printf("Age: %d\nName: %s\n", age, name);
  }

  public static void main(String[] args) {
    CopyCon obj1 = new CopyCon(24, "AAA");
    CopyCon obj2 = new CopyCon(obj1);

    obj1.message();
    obj2.message();
  }
}
```