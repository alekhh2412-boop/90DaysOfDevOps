# Day 10 Challenge

Create empty file devops.txt using touch
Create notes.txt with some content using cat or echo
Create script.sh using vim with content: echo "Hello DevOps"
Verify: ls -l to see permissions
<img width="1915" height="407" alt="permissions" src="https://github.com/user-attachments/assets/abb5b966-7bb8-483f-9e68-ef9b73b1ec37" />

Read notes.txt using cat
View script.sh in vim read-only mode
Display first 5 lines of /etc/passwd using head
Display last 5 lines of /etc/passwd using tail
<img width="1865" height="307" alt="read using-tail-head" src="https://github.com/user-attachments/assets/19561ddb-9d34-4446-85f0-e8aaa4e5f05d" />

Make script.sh executable → run it with ./script.sh
<img width="1902" height="97" alt="script ko permission diya x ki" src="https://github.com/user-attachments/assets/83f221ef-ac45-4c14-b2a8-44aed990ea94" />

Set devops.txt to read-only (remove write for all)
sudo chmod 444 devops.txt
Set notes.txt to 640 (owner: rw, group: r, others: none)
sudo chmod 640 notes.txt
Create directory project/ with permissions 755
<img width="1892" height="208" alt="project wala seen" src="https://github.com/user-attachments/assets/c1d8510a-5c19-445d-a727-2effc2a9e092" />

Try writing to a read-only file - what happens?
<img width="1887" height="38" alt="after trying write in devops file" src="https://github.com/user-attachments/assets/f6e07fae-9040-42d0-9fbf-a77f2b235cf8" />
how i did fix
<img width="1895" height="92" alt="devops ko bs read ki permission diya" src="https://github.com/user-attachments/assets/9571165f-1494-4a8a-b6e9-da86480770f6" />

Try executing a file without execute permission
<img width="1892" height="42" alt="execute permission denied" src="https://github.com/user-attachments/assets/0af3ae4d-07c3-4d95-a056-1e4149164446" />
how i fix


Document the error messages
## Files Created
[list files]

## Permission Changes
[before/after for each file]

## Commands Used
[your commands]

## What I Learned
[3 key points]
