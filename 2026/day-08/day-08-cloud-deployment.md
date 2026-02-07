# Day 08 – Cloud Server Setup & Web Deployment

launch a cloud instance (EC2)
<img width="1918" height="516" alt="instance" src="https://github.com/user-attachments/assets/ed92462d-fd4a-4494-ad92-add4e96749a6" />

Connect viaa ssh

<img width="1901" height="1020" alt="ssh-connection md" src="https://github.com/user-attachments/assets/67d3b2c9-41bb-4a78-8199-7681897262fc" />

Install Nginx - i installed but i forget to screenshot

Test Web Access to Nginx-
<img width="1917" height="1033" alt="mm" src="https://github.com/user-attachments/assets/06be4565-ecff-419d-a247-33f530603574" />

Configure security groups for web access (port 80 by default for nginx)
Extract and save logs to a file
<img width="1883" height="97" alt="logfile downll+oad" src="https://github.com/user-attachments/assets/fb429f54-cee1-4981-820b-e9e50ab08e1e" />

## Commands Used
- ssh -i key.pem ubuntu@<ip>
- sudo apt update
- sudo apt install nginx -y
- systemctl status nginx
- tail -n 50 /var/log/nginx/access.log
- scp nginx-logs.txt

## Challenges Faced
- Initially forgot to open port 80 in security group.
- Fixed by updating inbound rules.

## What I Learned
- How to launch and access a cloud VM.
- How Nginx serves web traffic.
- Importance of security group configuration.
- How to extract and download logs from a server, and more.
 
