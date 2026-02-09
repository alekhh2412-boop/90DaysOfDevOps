### Day 11 Challenge

##File Ownership Challenge

#Task 1: Understanding Ownership (10 minutes)
Run ls -l in your home directory
Identify the owner and group columns
Check who owns your files
Format: -rw-r--r-- 1 owner group size date filename
Document: What's the difference between owner and group?
<img width="1897" height="92" alt="task 1 diference btwn usr - grp" src="https://github.com/user-attachments/assets/747eb9b3-7214-4fec-bc60-69a5eea75d20" />


Task 2: Basic chown Operations (20 minutes)
Create file devops-file.txt
Check current owner: ls -l devops-file.txt
Change owner to tokyo (create user if needed)
Change owner to berlin
Verify the changes
Try:sudo chown tokyo devops-file.txt
<img width="1893" height="215" alt="task 2 basic chown opsn" src="https://github.com/user-attachments/assets/de292ccf-581e-4ac7-9824-5cb8710a303f" />


Task 3: Basic chgrp Operations (15 minutes)
Create file team-notes.txt
Check current group: ls -l team-notes.txt
Create group: sudo groupadd heist-team
Change file group to heist-team
Verify the change
<img width="1895" height="256" alt="task 3" src="https://github.com/user-attachments/assets/7801477e-aae0-453a-aa9a-0aeab09d28d3" />


Task 4: Combined Owner & Group Change (15 minutes)
Using chown you can change both owner and group together:
Create file project-config.yaml
Change owner to professor AND group to heist-team (one command)
Create directory app-logs/
Change its owner to berlin and group to heist-team
Syntax: sudo chown owner:group filename
<img width="1892" height="358" alt="task 4 combine own nd grp chng" src="https://github.com/user-attachments/assets/68c03dbe-f283-4ad7-b988-21cad0b33b6e" />


Task 5: Recursive Ownership (20 minutes)
Create directory structure:
mkdir -p heist-project/vault
mkdir -p heist-project/plans
touch heist-project/vault/gold.txt
touch heist-project/plans/strategy.conf
Create group planners: sudo groupadd planners
Change ownership of entire heist-project/ directory:
Owner: professor
Group: planners
Use recursive flag (-R)
Verify all files and subdirectories changed: ls -lR heist-project/
<img width="1892" height="277" alt="task 5" src="https://github.com/user-attachments/assets/71423eaf-e19f-4bb0-82d6-0788f073dc89" />
<img width="1897" height="626" alt="task 5 02" src="https://github.com/user-attachments/assets/3a8bc61f-7f66-43fa-9ca8-ec3e22998968" />


Task 6: Practice Challenge (20 minutes)
Create users: tokyo, berlin, nairobi (if not already created)
Create groups: vault-team, tech-team
Create directory: bank-heist/
Create 3 files inside:
touch bank-heist/access-codes.txt
touch bank-heist/blueprints.pdf
touch bank-heist/escape-plan.txt
Set different ownership:
access-codes.txt → owner: tokyo, group: vault-team
blueprints.pdf → owner: berlin, group: tech-team
escape-plan.txt → owner: nairobi, group: vault-team
Verify: ls -l bank-heist/
<img width="1890" height="637" alt="task last" src="https://github.com/user-attachments/assets/92c58c7f-2c4c-43ad-a197-8ad721b7ed93" />

## What I Learned
- Difference between file owner and group
- How to change ownership using chown & chgrp
- Why recursive ownership is critical in DevOps
[this task was callenging for me bcause at begginer level multiple user creation listing properly and creting groups thats litile bit tough but it was all good for me and i enjoued it...
happy learning]
