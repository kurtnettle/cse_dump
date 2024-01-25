# Lab 03 
###### 2024 January 25

### Task 1:

1. Create a bash script named `Intro.sh`
   ```shell
   touch Intro.sh
   ```

2. Ask the user for his/her name by echoing “What is your name?”
   
3. Store the name in a variable using read command
   
4. Similarly ask for Intake number, section, id separately.
   
5. Print the stored variable in the following way:
   ```shell
   Name: John Doe
   ID: 20214039587
   Intake: 48
   Section: 2
   ```
#### Script:


```bash
#! /bin/bash

read -p "What is your name?" name
read -p "What is your Intake number?" intake
read -p "What is your section?" section
read -p "What is your id?" std_id

echo "Name: $name"
echo "ID: $std_id"
echo "Intake: $intake"
echo "Section: $section"
```

or

```bash
#! /bin/bash

echo "What is your name?"
read name

echo "What is your Intake number?"
read intake

echo "What is your section?"
read section

echo "What is your id?"
read std_id
```


### Task 2:

1. Create a sh file named `Operator.sh`
   ```shell
   touch Operator.sh
   ```
2. Take input 2 numbers while invoking the script file.
3. Print the addition, subtraction, multiplication and division operation of the 2 numbers.


#### Script:

```bash
#! /bin/bash
# echo "Enter two number: "
# read a b
read -p "Enter two number: " a b

echo "Addition       : $((a+b))"
echo "Subtraction    : $((a-b))"
echo "Multiplication : $((a*b))"
echo "Division       : $((a/b))"
```


### Task 3:

1. Create a sh file named `Greater.sh`
   ```shell
   touch Operator.sh
   ```
2. Take input a number while invoking the script file.
3. If the number if greater than `100`, print `CENTURY`
4. Else print `Getting There`


#### Script:

```bash
#!/bin/bash
read -p "Enter a number: " num

#if ((num >= 100)); then
if [[ $num -gt 100 ]]; 
then
     echo "CENTURY"
else
     echo "Getting There"
fi
```