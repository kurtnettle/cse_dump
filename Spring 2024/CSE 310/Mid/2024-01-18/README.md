# Lab 02 
###### 2024 January 18

### Task 1:

1. In a directory named `oslab2`, create a file `permissions.txt`
    ```shell
    mkdir oslab2;
    cd oslab2;
    touch permissions.txt
    ```

2. Add some text to the file.
    ```shell
    echo "some text" > permissions.txt
    ```

3. Check the default permissions.
    ```shell
    ls -l permissions.txt
    ```

4. Remove read and write permission by the user using symbols (+, -).
    ```shell
    chmod u-rw permissions.txt
    ```
    
    or

    ```shell
    chmod 000 permissions.txt
    ```
    
5. Check if you can still edit the file
    ```shell
    nano permissions.txt
    ```
    or

    ```shell
    cat permissions.txt; echo 'no' > permissions.txt
    ```

6. Add back the permissions using numbers.
    ```shell
    chmod u+rw permissions.txt
    ```
    
    or

    ```shell
    chmod 644 permissions.txt
    ```

7. Check if you can edit the file
    ```shell
    nano permissions.txt
    ```
    
    or

    ```shell
    cat permissions.txt; echo 'yes' > permissions.txt;
    ```

### Task 2:

1. In a directory named `oslab2`, Create a file called `sample.txt` and add some content to it.
   ```shell
   mkdir oslab2;cd oslab2; touch sample.txt
   ```
   * Ways of Filling dummy data

     ```python
     python -c "for i in range(0, 100): print(i)" > sample.txt
     ```
     or
     ```shell
     echo -e "1\n2\n3\n4\n5\n6\n7" > sample.txt (why -e?)
     ```
     or
     ```shell
     nano sample.txt # a text editor will open then let your cat run over your keyboard.
     ```

2. Use the `head` command to display the first 10 lines of `sample.txt`.
   ```shell
   head -n 10 sample.txt
   ```

3. Use the `tail` command to display the last 5 lines of `sample.txt`.
   ```shell
   tail -n 5 sample.txt
   ```

4. Count the number of lines, words, and characters in `sample.txt` using the `wc` command.
   ```shell
   wc -lmc sample.txt
   ```

### Task 3:

1. Create a new user named `testuser`.
   ```shell
   sudo useradd "testuser"
   ```

2. Set a password for `testuser` using the `passwd` command.
   ```shell
   sudo passwd "testuser"
   ```

3. Check if the user exits.
   ```
   id testuser
   ```
   or
   ```shell
   grep testuser /etc/passwd
   ```
   or
   ```shell
   getent passwd testuser
   ```

4. Similarly, delete the user with `userdel` and check.
   ```shell
   sudo userdel "testuser"
   ```