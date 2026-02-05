##Linux works in 3 layers:
1. Kernel – talks to hardware
2. User space – commands & apps
3. systemd – starts and manages services

A process is a running program.
Each process has a PID and state.

Process states:
R – Running  - process is using CPU
S – Sleeping  - waiting for inputi
T – Stopped - pause manually
Z – Zombie (Process finished but parent didn’t clean it.
            Just remember concept – no need to create now)

systemd manages services like ssh, nginx.
DevOps use it to start, stop, restart services.  

  These are some cmd devops engineers daily use-
  **1️⃣ ps aux
→ Shows all running processes

2️⃣ top
→ Live view of CPU, memory usage

3️⃣ systemctl status <service>
→ Check service health

4️⃣ journalctl -xe
→ View system logs/check debug issue

5️⃣ kill <PID>
→ Stop a bad process**
 
---


1.The core components of Linux (kernel, user space, init/systemd)

-There are 4-5 types of linux architecture -
1.hardware (monitor, CPU,...)
2.kernel (core of linux ,processes run in background)
3.shell (it is a interface between user and machine ,Terminal)
4.utilities/applcations (eg.Netfix)
5.user (The one who manage)

2.How processes are created and managed

ps - ps is the command that is commonly use in linux for chacking process
top - top is also cmd which shows us running processes
hrop - it is same as top cmd but htop shows colourful and good looking runing processes
Kill - using kill cmd we can kill process 

3.What systemd does and why it matters

systemd manage services
systemctl - system control
eg.systemctl status nginx
it shows status of this service
