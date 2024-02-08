# Lab 05
###### 2024 February 08 

### Task 1: Finding the nearest leap year
Write a bash function called **isLeapYear** that determines whether the year is a leap
year or not.

```txt
Input: isLeapYear 2012
Output: Leap Year
Input: isLeapYear 2013
Output: Not Leap Year
```

##### Solution:
```bash
isLeapYear() {
  local year=$1

  if (( $((year%400==0)) || $((year%4==0)) && $((year%100!=0)) )); then
    echo "Leap Year"
  else
    echo "Not Leap Year"
  fi
}
```

### Task 2: Prime Numbers Function
Create a bash function named is_prime that takes an integer as input and returns whether the number is prime or not. The function should use a proper algorithm to efficiently determine if the number is prime.

```
Input: is_prime 71
Output: Prime Number
Input: is_prime 72
Output: Not a Prime Number
```

##### Solution:
```bash
#!/bin/bash
sqrt() {
  echo "sqrt($1)" | bc
}

isPrime() {
  local flag=1
  local num=$1
  local range=$(sqrt $num)

  for ((i=2;i <= range; ++i )) {
    if (( $((num%i==0 ))  ));then
    flag=0
    break
    fi
  }

  if ((flag));then
    echo "Prime Number"
  else
    echo "Not a Prime Number"
  fi
```

> [!NOTE]
> Save the code in a file then `source` the file and call the function from terminal.[^1][^2]

[^1]: https://www.fosslinux.com/113830/understanding-and-using-the-source-command-in-linux.htm

[^2]: https://linuxhint.com/linux-source-command-examples/
