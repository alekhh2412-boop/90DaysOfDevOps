#  Shell Scripting: Functions & Slightly Advanced Concepts
 
## Challenge Tasks

### Task 1: Basic Functions
1. Create `functions.sh` with:
   - A function `greet` that takes a name as argument and prints `Hello, <name>!`
<img width="710" height="147" alt="1-1 basic futn" src="https://github.com/user-attachments/assets/c460fd5c-beb5-4a04-af49-d081cf37797e" />
<img width="573" height="302" alt="1-1 basic futn s" src="https://github.com/user-attachments/assets/73bb3fe6-ef88-4894-adcb-01353f68d00c" />
- A function `add` that takes two numbers and prints their sum
<img width="893" height="243" alt="1-2 futn with return value" src="https://github.com/user-attachments/assets/6d2d957e-6ed0-496e-ac7b-ef850bfb947a" />
<img width="560" height="366" alt="1-2 futn with return value s" src="https://github.com/user-attachments/assets/2bdbd82a-60c2-425e-bbee-9f1cfd4158fc" />
- Call both functions from the script
                                                    

---

### Task 2: Functions with Return Values
1. Create `disk_check.sh` with:
   - A function `check_disk` that checks disk usage of `/` using `df -h`
   - A function `check_memory` that checks free memory using `free -h`
   - A main section that calls both and prints the results
<img width="802" height="187" alt="2" src="https://github.com/user-attachments/assets/05ee8396-6b49-4340-a969-913aabda49af" />
<img width="601" height="275" alt="2 s" src="https://github.com/user-attachments/assets/77744c63-e16a-48b0-ab02-d03d6a027408" />

---


### Task 3: Strict Mode — `set -euo pipefail`
1. Create `strict_demo.sh` with `set -euo pipefail` at the top
2. Try using an **undefined variable** — what happens with `set -u`?
3. Try a command that **fails** — what happens with `set -e`?
4. Try a **piped command** where one part fails — what happens with `set -o pipefail`?
<img width="702" height="271" alt="3-1" src="https://github.com/user-attachments/assets/8e2ff89e-af71-4cce-a359-640dfc30f6a9" />
<img width="622" height="327" alt="3-1 s" src="https://github.com/user-attachments/assets/4207c74c-8998-451e-bfb3-96fb00c94afd" />

---


### Task 4: Local Variables
1. Create `local_demo.sh` with:
   - A function that uses `local` keyword for variables
   - Show that `local` variables don't leak outside the function
   - Compare with a function that uses regular variables
<img width="635" height="310" alt="4-1 " src="https://github.com/user-attachments/assets/9727fb6c-164a-456c-8156-41cffc5b308a" />
<img width="852" height="567" alt="4-1  s" src="https://github.com/user-attachments/assets/12e84096-105d-4a1d-8d34-503b295ba675" />

---

### Task 5: Build a Script — System Info Reporter
Create `system_info.sh` that uses functions for everything:
1. A function to print **hostname and OS info**
2. A function to print **uptime**
3. A function to print **disk usage** (top 5 by size)
4. A function to print **memory usage**
5. A function to print **top 5 CPU-consuming processes**
6. A `main` function that calls all of the above with section headers
7. Use `set -euo pipefail` at the top

Output should ok clean and readable.
<img width="1457" height="686" alt="5-1" src="https://github.com/user-attachments/assets/f0fc0044-e97f-4e76-8bb5-0db2ab84cce4" />
<img width="1687" height="972" alt="5-1 s" src="https://github.com/user-attachments/assets/474fbbdf-e7fc-4db0-92e8-ee27cbe9af35" />

---
What I learned
- Functions , How to call functions understandind functions
-  set -ueo pipeline error detection and quit
-  use of variabler into functions return value
---
**Document:** What does each flag do?
- `set -e` → undefined variable = STOP
- `set -u` → command fail = STOP
- `set -o pipefail` → pipeline ka koi bhi part fail = STOP
---
