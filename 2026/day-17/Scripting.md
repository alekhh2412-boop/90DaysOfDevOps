# Shell Scripting: Loops, Arguments & Error Handling

## Challenge Tasks

### Task 1: For Loop
1. Create `for_loop.sh` that:
   - Loops through a list of 5 fruits and prints each one
<img width="631" height="198" alt="1-for loop " src="https://github.com/user-attachments/assets/3dcb7d84-d319-4bdb-8d1d-46b6843b4ca3" />
<img width="775" height="292" alt="script of for-loop" src="https://github.com/user-attachments/assets/92797f42-cddf-41e0-9029-5cd16b1e4230" />

2. Create `count.sh` that:
   - Prints numbers 1 to 10 using a for loop
<img width="632" height="287" alt="1-nim print 10 " src="https://github.com/user-attachments/assets/a03f40fd-88d6-408f-874c-4ad6f4d4c9b1" />
<img width="511" height="191" alt="1-nim print 10 script" src="https://github.com/user-attachments/assets/da64c01c-169f-44f0-8db4-7a390997f85b" />

---

### Task 2: While Loop
1. Create `countdown.sh` that:
   - Takes a number from the user
   - Counts down to 0 using a while loop
   - Prints "Done!" at the end
<img width="657" height="361" alt="2-countdown  " src="https://github.com/user-attachments/assets/b0fab651-58c2-43d6-ac46-a0ab6668883e" />
<img width="581" height="318" alt="2-countdown script" src="https://github.com/user-attachments/assets/73d59afd-2942-4adc-89b4-71fd392801ea" />
 
---

### Task 3: Command-Line Arguments
1. Create `greet.sh` that:
   - Accepts a name as `$1`
   - Prints `Hello, <name>!`
   - If no argument is passed, prints "Usage: ./greet.sh <name>"
<img width="657" height="222" alt="3-1-greet " src="https://github.com/user-attachments/assets/c93ffa73-28bf-4a2a-b510-dca6749caecc" />
<img width="527" height="208" alt="3-1-greet script" src="https://github.com/user-attachments/assets/d5b76666-1637-4d00-92d2-337fce5dc459" />

2. Create `args_demo.sh` that:
   - Prints total number of arguments (`$#`)
   - Prints all arguments (`$@`)
   - Prints the script name (`$0`)
<img width="757" height="195" alt="3-2 argdemo " src="https://github.com/user-attachments/assets/3aa6fca8-4cb8-42cf-b84e-3cf2bf313663" />
<img width="472" height="137" alt="3-2 argdemo  script" src="https://github.com/user-attachments/assets/3795d78a-86b7-4923-9b8a-bada1ecda58a" />

---

### Task 4: Install Packages via Script
1. Create `install_packages.sh` that:
   - Defines a list of packages: `nginx`, `curl`, `wget`
   - Loops through the list
   - Checks if each package is installed (use `dpkg -s` or `rpm -q`)
   - Installs it if missing, skips if already present
   - Prints status for each package
<img width="1285" height="736" alt="4 installpackages via s" src="https://github.com/user-attachments/assets/fe4dbef6-af3d-4511-850a-4fc92d8c8118" />
<img width="822" height="371" alt="4 installpackages via script" src="https://github.com/user-attachments/assets/339b4307-2325-46f5-b0cb-15ec6903a3f8" />

> Run as root: `sudo -i` or `sudo su`

---

### Task 5: Error Handling
1. Create `safe_script.sh` that:
   - Uses `set -e` at the top (exit on error)
   - Tries to create a directory `/tmp/devops-test`
   - Tries to navigate into it
   - Creates a file inside
   - Uses `||` operator to print an error if any step fails
<img width="717" height="165" alt="5-1-error handling" src="https://github.com/user-attachments/assets/a4f1b8c6-15e4-4f0b-8ae0-e97667c4ac76" />
<img width="702" height="167" alt="5-1-error handling script" src="https://github.com/user-attachments/assets/8e45a21e-183c-4f6d-9fe7-9ba9f9374b0e" />

Example:
```bash
mkdir /tmp/devops-test || echo "Directory already exists"
```

2. Modify your `install_packages.sh` to check if the script is being run as root — exit with a message if not.
<img width="1658" height="558" alt="5-2-error handling " src="https://github.com/user-attachments/assets/931a7091-337a-4a33-b163-f92576e67ccb" />
<img width="1140" height="468" alt="5-2-error handling script " src="https://github.com/user-attachments/assets/2a3de94e-3d74-4a03-9aee-d5c5d7ecd88d" />

---
