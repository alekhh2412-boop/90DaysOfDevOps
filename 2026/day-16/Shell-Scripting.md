# Shell Scripting Basics

 
### Challenge Tasks

### Task 1: Your First Script
1. Create a file `hello.sh`
2. Add the shebang line `#!/bin/bash` at the top
3. Print `Hello, DevOps!` using `echo`
4. Make it executable and run it

```bash
chmod +x hello.sh
./hello.sh
```
<img width="602" height="225" alt="first script" src="https://github.com/user-attachments/assets/8f4eca11-f403-4931-9568-a425ec85acba" />

**Document:** What happens if you remove the shebang line?

---

### Task 2: Variables
1. Create `variables.sh` with:
   - A variable for your `NAME`
   - A variable for your `ROLE` (e.g., "DevOps Engineer")
   - Print: `Hello, I am <NAME> and I am a <ROLE>`
2. Try using single quotes vs double quotes — what's the difference?
<img width="717" height="133" alt="variables" src="https://github.com/user-attachments/assets/df32d494-6b78-41db-8fd8-56175dcab9d5" />

---

### Task 3: User Input with read
1. Create `greet.sh` that:
   - Asks the user for their name using `read`
   - Asks for their favourite tool
   - Prints: `Hello <name>, your favourite tool is <tool>`
<img width="605" height="217" alt="usr input with read" src="https://github.com/user-attachments/assets/99485424-8651-4d69-910b-351e78c20a39" />
---


### Task 4: If-Else Conditions
1. Create `check_number.sh` that:
   - Takes a number using `read`
   - Prints whether it is **positive**, **negative**, or **zero**

2. Create `file_check.sh` that:
   - Asks for a filename
   - Checks if the file **exists** using `-f`
   - Prints appropriate message
<img width="877" height="488" alt="conditions" src="https://github.com/user-attachments/assets/5c3133a5-5b56-48a0-8db5-1388477025d3" />

---

### Task 5: Combine It All
Create `server_check.sh` that:
1. Stores a service name in a variable (e.g., `nginx`, `sshd`)
2. Asks the user: "Do you want to check the status? (y/n)"
3. If `y` — runs `systemctl status <service>` and prints whether it's **active** or **not**
4. If `n` — prints "Skipped."
<img width="677" height="290" alt="combine it all" src="https://github.com/user-attachments/assets/7db93793-b68d-4ada-a604-652bca30a748" />

---

## Documentation
- What you learned (3 key points)
- script can redused time and improve work efficiency
- How DevOps Engineers can script repitative portion
- Automate things with scriping


---
