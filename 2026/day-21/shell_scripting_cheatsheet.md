# Day 21 – Shell Scripting Cheat Sheet: Build Your Own Reference Guide

---

## Challenge Tasks

### Task 1: Basics
Document the following with short descriptions and examples:
1. Shebang (`#!/bin/bash`) — what it does and why it matters
   - Tells the system which shell should execute the script.
   - Ensures the script always runs using Bash, even if the default shell is different.
3. Running a script —
   `chmod +x`,- make this script executable
   `./script.sh`,- Run this script from currunt directory
   `bash script.sh` - runs the script using Bash directly
5. Comments — single line (`#`) and inline
   - hash This is a single-line comment
   -echo "Hello" # This is an inline comment 
7. Variables — declaring, using, and quoting
   `$VAR` - is use to access the value
   `"$VAR"` - variable is expanded
   `'$VAR'` - printed as literal text     
9. Reading user input — `read`
   Used to take input from the user during script execution.
11. Command-line arguments — `$0`, `$1`, `$#`, `$@`, `$?`
    $0  - script name
    $1  - first argument
    $2  - second argument
    $#  - total number of arguments
    $@  - all arguments
    $?  - exit status of last command

---

### Task 2: Operators and Conditionals
Document with examples:
1. String comparisons — `=`, `!=`, `-z`, `-n`
   use to comare text (sring)
   [ "$A" = "$B" ]    # true if strings are equal
   [ "$A" != "$B" ]  # true if strings are not equal
   [ -z "$A" ]       # true if string is empty
   [ -n "$A" ]       # true if string is not empty
3. Integer comparisons — `-eq`, `-ne`, `-lt`, `-gt`, `-le`, `-ge`
   use to compare number
   [ $A -eq $B ]  # equal
   [ $A -ne $B ]  # not equal
   [ $A -lt $B ]  # less than
   [ $A -gt $B ]  # greater than
   [ $A -le $B ]  # less than or equal
   [ $A -ge $B ]  # greater than or equal
5. File test operators — `-f`, `-d`, `-e`, `-r`, `-w`, `-x`, `-s`
   use to check file & directory
   [ -f file.txt ]   # regular file exists
   [ -d mydir ]      # directory exists
   [ -e file.txt ]   # file or directory exists
   [ -r file.txt ]   # readable
   [ -w file.txt ]   # writable
   [ -x file.sh ]    # executable
   [ -s file.txt ]   # file is not empty
7. `if`, `elif`, `else` syntax
   use to make desicions in script
   if [ condition ]; then
   code
   elif [ another_condition ]; then
   code
   else
   code
   fi
9. Logical operators — `&&`, `||`, `!`
    cmd1 && cmd2   # run cmd2 if cmd1 succeeds
    cmd1 || cmd2   # run cmd2 if cmd1 fails
    ! condition    # logical NOT
    
10. Case statements — `case ... esac`
    use when there are multiple choices (cleaner than many if-else)
    case $1 in
  start)
    echo "Starting service"
    ;;
  stop)
    echo "Stopping service"
    ;;
  restart)
    echo "Restarting service"
    ;;
  *)
    echo "Usage: start | stop | restart"
    ;;
  esac
---

### Task 3: Loops
Document with examples:
1. `for` loop — list-based and C-style
   used to loop over a list of values
   for i in 1 2 3 4; do
  echo "Number: $i"
done
   for ((i=1; i<=5; i++)); do
  echo "Count: $i"
done
3. `while` loop
   runs as long as a conditon is true
   COUNT=1

while [ $COUNT -le 5 ]; do
  echo "Count: $COUNT"
  COUNT=$((COUNT+1))
done1
5. `until` loop
   Runs until condition becomes true.
7. Loop control — `break`, `continue`
   break → exit loop
   continue → skip iteration
8. Looping over files — `for file in *.log`
  used to process multiple files
  for file in *.log; do
  echo "Processing $file"
done
9. Looping over command output — `while read line`
   used to process output line by line 
   
   grep ERROR app.log | while read line; do
  echo "Error found: $line"
done
---

### Task 4: Functions
Document with examples:
1. Defining a function — `function_name() { ... }`
   A function is a reusable block of code.
greet() {
  echo "Hello DevOps"
}
3. Calling a function
   Call a function by using its name.
greet
5. Passing arguments to functions — `$1`, `$2` inside functions
   Functions can receive arguments just like scripts.
welcome() {
  echo "Welcome $1"
}
welcome Alekh
7. Return values — `return` vs `echo`
🔹 return

Used to send an exit status (0–255)

Mainly for success/failure

check_file() {
  [ -f "$1" ]
  return $?
}

check_file test.txt
echo "Exit code: $?"
🔹 echo

Used to return actual output/data

Commonly captured using command substitution

add() {
  echo $(( $1 + $2 ))
}

RESULT=$(add 5 3)
echo "Sum: $RESULT"
9. Local variables — `local`
   local variables exist only inside the function.

print_name() {
  local NAME="DevOps"
  echo "$NAME"
}

print_name
echo "$NAME"   # empty or undefined

---

### Task 5: Text Processing Commands
Document the most useful flags/patterns for each:
1. `grep` — search patterns, `-i`, `-r`, `-c`, `-n`, `-v`, `-E`
   Used to search for words or patterns in files or command output.
   grep "error" app.log
   Common Flags
   -i → ignore case
   -r → recursive search
   -c → count matches
   -n → show line numbers
   -v → invert match (NOT)
   -E → extended regex
3. `awk` — print columns, field separator, patterns, `BEGIN/END`
   Best for structured text (space/CSV files).
   Print Columns
awk '{print $1, $3}' file.txt
   Field Separator
awk -F: '{print $1, $7}' /etc/passwd
   Pattern Matching
awk '/error/ {print $0}' app.log
   BEGIN & END
awk 'BEGIN {print "START"} {print $1} END {print "END"}' file.txt
5. `sed` — substitution, delete lines, in-place edit
   Used to modify text.
   Substitution
sed 's/old/new/' file.txt
sed 's/error/ERROR/g' app.log
   Delete Lines
sed '3d' file.txt        # delete line 3
sed '/error/d' app.log   # delete lines with "error"
   In-place Edit
sed -i 's/8080/80/g' config.conf
7. `cut` — extract columns by delimiter
   Extract specific fields from text.
cut -d: -f1 /etc/passwd
cut -d, -f2 file.csv
-d → delimiter
-f → field number
9. `sort` — alphabetical, numerical, reverse, unique
    Sorts lines in a file.
sort names.txt
sort -n numbers.txt
sort -r names.txt
sort -u names.txt
Flags:
-n → numeric sort
-r → reverse
-u → unique
11. `uniq` — deduplicate, count
    Works only on sorted data.
sort file.txt | uniq
sort file.txt | uniq -c
Flags:
-c → count duplicates
13. `tr` — translate/delete characters
    Convert lowercase → uppercase
echo "devops" | tr 'a-z' 'A-Z'
Delete characters
echo "abc123" | tr -d '0-9'
15. `wc` — line/word/char count
    wc — Count Lines, Words, Characters
wc file.txt
wc -l file.txt   # lines
wc -w file.txt   # words
wc -c file.txt   # characters
17. `head` / `tail` — first/last N lines, follow mode
    View top or bottom lines of a file.
head file.txt
head -n 5 file.txt
tail file.txt
tail -n 10 file.txt
Follow Mode (Live Logs )
tail -f /var/log/syslog  

---

### Task 6: Useful Patterns and One-Liners
Include at least 5 real-world one-liners you find useful. Examples:
- Find and delete files older than N days
- Useful for log cleanup and saving disk space.
Find files older than 7 days
find /var/log -type f -mtime +7
Delete files older than 7 days
find /var/log -type f -mtime +7 -delete
📌 -mtime +7 → files modified more than 7 days ago
📌 -type f → only files (not folders)
- Count lines in all `.log` files
- Useful to check log size and volume.
wc -l *.log
Total lines in all log files
wc -l *.log | tail -n 1
📌 wc -l → counts lines
📌 *.log → all log files in current directory
- Replace a string across multiple files
-Very common for config changes.
Replace localhost with 127.0.0.1 in all .conf files
sed -i 's/localhost/127.0.0.1/g' *.conf
📌 -i → edit file in-place
📌 g → replace all occurrences in a line
⚠️ Tip: Take backup before using -i in production. 
- Check if a service is running
- Useful during troubleshooting.
Using systemctl
systemctl status nginx
One-liner check
systemctl is-active nginx
Using ps + grep
ps -ef | grep nginx | grep -v grep
📌 If output exists → service is running
- Monitor disk usage with alerts
-Useful to avoid disk full issues.
Check disk usage
df -h
Alert if disk usage > 80%
df -h | awk '$5 > 80 {print $0}'
📌 $5 → usage percentage column
📌 Can be added to cron for automation 
- Parse CSV or JSON from command line
-Useful for reports and data files.
Print name and email columns
cut -d, -f1,3 users.csv
Using awk
awk -F, '{print $1, $3}' users.csv 
- Tail a log and filter for errors in real time
- 

---

### Task 7: Error Handling and Debugging
Document with examples:
1. Exit codes — `$?`, `exit 0`, `exit 1`
   Every Linux command returns an exit code.
0 → success
Non-zero → failure
Check exit code of last command
ls /etc
echo $?
Example: success and failure
#!/bin/bash
ls /wrong/path
echo $?
Manually exit from script
exit 0   # success
exit 1   # failure
📌 $? always stores the exit code of the last executed command
3. `set -e` — exit on error
   Stops the script immediately if any command fails.
#!/bin/bash
set -e
echo "Start"
ls /wrong/path
echo "This line will NOT run"
📌 Useful in automation and CI/CD
📌 Prevents scripts from continuing in a broken state
5. `set -u` — treat unset variables as error
   Treats undefined variables as errors.
#!/bin/bash
set -u
echo $USERNAME
❌ If USERNAME is not defined → script exits with error
📌 Helps catch typos and missing variables
7. `set -o pipefail` — catch errors in pipes
   By default, pipelines return the exit code of the last command only.
Without pipefail (bad)
false | true
echo $?   # returns 0 (wrong)
With pipefail (good)
set -o pipefail
false | true
echo $?   # returns non-zero
📌 Very important when using grep, awk, sed in pipelines
9. `set -x` — debug mode (trace execution)
    Prints each command before executing it.
#!/bin/bash
set -x
name="DevOps"
echo "Hello $name"
Output:
+ name=DevOps
+ echo 'Hello DevOps'
📌 Best for debugging complex scripts
📌 Turn off using set +x
11. Trap — `trap 'cleanup' EXIT`
  Runs a command or function when the script exits (success or failure).
Example: cleanup temporary file
#!/bin/bash
cleanup() {
  echo "Cleaning up..."
  rm -f /tmp/testfile
}
trap cleanup EXIT
touch /tmp/testfile
echo "Script running"
📌 Ensures cleanup even if script fails
📌 Commonly used for temp files, locks, services
---

### Task 8: Bonus — Quick Reference Table|

| Topic          | Key Syntax               | Example                            |          |
| -------------- | ------------------------ | ---------------------------------- | -------- |
| Shebang        | `#!/bin/bash`            | `#!/bin/bash`                      |          |
| Variable       | `VAR="value"`            | `NAME="DevOps"`                    |          |
| Use Variable   | `$VAR`                   | `echo $NAME`                       |          |
| User Input     | `read VAR`               | `read username`                    |          |
| Argument       | `$1`, `$2`               | `./script.sh arg1 arg2`            |          |
| Argument Count | `$#`                     | `echo $#`                          |          |
| All Arguments  | `$@`                     | `echo "$@"`                        |          |
| Exit Code      | `$?`                     | `echo $?`                          |          |
| If Condition   | `if [ condition ]; then` | `if [ -f file ]; then`             |          |
| If-Else        | `if ... else`            | `if [ $a -gt 5 ]; then`            |          |
| Case           | `case ... esac`          | `case $os in Linux)`               |          |
| For Loop       | `for i in list; do`      | `for i in 1 2 3; do`               |          |
| While Loop     | `while condition; do`    | `while true; do`                   |          |
| Break Loop     | `break`                  | `break`                            |          |
| Continue Loop  | `continue`               | `continue`                         |          |
| Function       | `name() { ... }`         | `greet() { echo "Hi"; }`           |          |
| Function Args  | `$1` inside function     | `echo $1`                          |          |
| Local Variable | `local VAR`              | `local count=1`                    |          |
| Grep           | `grep pattern file`      | `grep -i "error" log.txt`          |          |
| Awk            | `awk '{print $1}' file`  | `awk -F: '{print $1}' /etc/passwd` |          |
| Sed            | `sed 's/old/new/g'`      | `sed -i 's/foo/bar/g' file.txt`    |          |
| Cut            | `cut -d -f`              | `cut -d: -f1 file.txt`             |          |
| Sort           | `sort -n -r`             | `sort -nr data.txt`                |          |
| Uniq           | `uniq -c`                | `sort f                            | uniq -c` |
| Word Count     | `wc -l`                  | `wc -l file.txt`                   |          |
| Head           | `head -n`                | `head -5 file.txt`                 |          |
| Tail           | `tail -f`                | `tail -f app.log`                  |          |
| Debug Mode     | `set -x`                 | `set -x`                           |          |
| Safe Script    | `set -euo pipefail`      | `set -euo pipefail`                |          |
| Trap           | `trap 'cmd' EXIT`        | `trap cleanup EXIT`                |          |


---
