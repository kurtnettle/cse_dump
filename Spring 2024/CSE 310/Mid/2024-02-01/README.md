# Lab 04
###### 2024 February 01 

### Task 1: Print a bash script to generate the following pattern. 
```txt
Input: 5
Output:
*
**
***
****
*****
****
***
**
*
```
##### Solution:

Before proving you are stupid through your garbage code, fix your goals like how the two loops will behave.

* Firstly, count the number of lines (which is no of rows) that will be the range for the first loop.
* Secondly, count the number of characters in a line (which is no of cols) that will be the range for the second loop.

So, seeing the output from the question we can conclude that,

* outer loop will run for input 5, 9 times which is `(2n-1)`
* inner loop need to have a **dynamic range** (need to take a variable to change the range as we can see in pic that after reaching `n` it started acting backwards)

```bash
#!/bin/bash

read n

for ((i=0; i<=$((2*n-1)); i++))
do
  m=i
  for ((j=0; j<=m; j++))
  do
    echo -n "*"
    if (( i>n ));then
    m=$(( (2*n-1)-i ))
    fi
  done

  echo
done
```

Issues/Queries I personally faced while building the logics,
* `i<=$((2*n-1))` why not `i<$((2*n))` 
* starting `i` and `j` from `1` not `0` what changes are required.
* `<=` vs `<` in loop
* what if I put the `if` condition outside the second loop.


**N.B** (from me :3): Printing pattern is one of the effective way of understanding the underlining of loops and building logics. One must understand how can he play with loops. Even though it seems very silly, but you will for sure get stuck (if are honest with yourself) after getting asked how the program is printing 'X' pattern.
* Practice more patterns [here](https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/)
* One of the best [youtube video](https://www.youtube.com/watch?v=tNm_NNSB3_w) to me


### Task 2: Print the first n numbers of fibonacci series in terminal with a bash script

```txt
Input: 5
Output: 0 1 1 2 3
```

##### Solution:

**1. Iterative Approach**

```bash
#!/bin/bash

# 0 1 2 3 4  5  6  7  8  9 10  11  12  13  14  15   16   17   18 
# 0 1 1 2 3 58 13 21 34 55 89 144 233 377 610 987 1597 2584 4181

read num

prev1=1
prev2=0
curr=0

echo -n "$prev2 $prev1 "

for((i=1;i<=num;++i))
do
  curr=$(($prev2 + $prev1))
  echo -n "$curr "

  prev2=$prev1
  prev1=$curr
done
```
<br>

**2. Recursive Approach**
```bash
#!/bin/bash

fibonacci () {
  local curr=$1

  if (( $curr == 0 )); then
      echo -n 0
  elif (( $curr == 1 )); then
      echo -n 1
  else
    echo -n $(( $(fibonacci $(( curr-1 )) ) + $(fibonacci $(( curr-2 )) ) ))
  fi
}

# 0 1 2 3 4  5  6  7  8  9 10  11  12  13  14  15   16   17   18 
# 0 1 1 2 3 58 13 21 34 55 89 144 233 377 610 987 1597 2584 4181

read num

for((i=1;i<=num;++i))
do
  echo -n "$(fibonacci $i) "
done
```

### Task 3: Write a bash script to find if a year is leap year or not. (Hint: A leap year is either divisible by 400 or 4 but not by 100)

```txt
Input: 2013
Output: Not a leap year

Input: 2012
Output: Leap year
```

##### Solution:

```bash
#!/bin/bash

# 2000 2004 2008 2012 2016 2020 2024 2028 2032 2036 2040 2044 2048
isLeap() {
  local year=$1

  if (( $((year%400==0)) || $((year%4==0)) && $((year%100!=0)) )); then
    return 0
  else
    return 1
  fi
}

read year

if isLeap $year; then
  echo "Leap year"
else
  echo "Not a leap year"
fi

```

### Task 4: Write a bash script to find the nearest leap year from the current year.

```txt
Input: 2013
Output: 2012

Input: 2011
Output: 2012
```

##### Solution:

```bash
#!/bin/bash

# 2000 2004 2008 2012 2016 2020 2024 2028 2032 2036 2040 2044 2048
isLeap() {
  local year=$1

  if (( $((year%400==0)) || $((year%4==0)) && $((year%100!=0)) )); then
    return 0
  else
    return 1
  fi
}

abs_diff(){
  res=$(($1-$2))

  if (($res < 0 )); then 
    echo $((res*-1))
  else
    echo $res
  fi
}

main() {

read year

for((i=$((year+1));;++i))
do
  if isLeap $i;then
    year_a=$i 
    break
  fi
done

for((i=$((year-1));;--i))
do
  if isLeap $i;then
    year_b=$i 
    break
  fi
done

if (( $(abs_diff year year_a) > $(abs_diff year year_b) )); then
  echo $year_b
else
  echo $year_a
fi

}

main
```