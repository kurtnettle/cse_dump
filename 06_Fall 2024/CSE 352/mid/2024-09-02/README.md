# Lab 01
###### 2024 September 02

## Tasks: 

#### 1. While Loop
Write a Python function `count_down(n)` that takes a positive integer `n` and prints the  numbers from `n` down to 1, each on a new line. Use a while loop to accomplish this.

#### solution:
```py
def count_down(n):
    while n:
        print(n)
        n-=1
    
n = int(input())
count_down(n)
```
#### 2. Array & For Loop

Write a Python program that creates a list of numbers from 1 to `n`. Use a for loop to iterate through the list and print the summation of the cubes of numbers from 1 to a given number,

#### solution:
```py
n = int(input())

num_list=[]
for i in range(1,n+1):
    num_list.append(i)

ans=0
for i in num_list:
    ans += i*i*i

print(ans)
```

#### alternate solution:
```py
n = int(input())

num_list=[i**3 for i in range(1,n+1)]
ans = sum(num_list)

print(ans)
```

#### 3. Function

Write a Python function `is_prime(n)` that takes a positive integer `n` and returns `True` if `n` is a prime number and `False` otherwise. A prime number is a number greater than 1 that has no positive divisors other than 1 and itself.


#### solution:
```py
def is_prime(n):
    for i in range(2,n):
        if n%i==0:
            return False
    return True

print(is_prime(97))
```

#### 4. Recursion

Write a recursive Python function `factorial(n)` that takes a non-negative integer `n` and returns the factorial of `n` (denoted as n!). The factorial of a number n is the product of all positive integers less than or equal to `n`.


#### solution:
```py
def factorial(n):
    if n==0:
        return 1
    else:
        return n * factorial(n-1)

n = int(input())
print(factorial(n))
```

(*incase if you are looking for one-liner ver.*)
```py
def factorial(n):
    return 1 if n==0 else n * factorial(n-1)

n = int(input())
print(factorial(n))
```


#### 5. Lambda Function

Write a function definition that takes one argument, and that argument will be multiplied with an unknown number. Use that function definition to make a function that always doubles the number you send in.

#### solution:
```py
def a_func_def(arg):
    return lamda x: arg*x

double = a_func_def(2)
print(double(108))
```