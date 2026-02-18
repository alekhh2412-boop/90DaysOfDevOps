### Networking Concepts : DNS,IP,Subnet & Ports
### Task 1: DNS – How Names Become IPs
1. when we type on search bar of browser (google.com) then the browser first initiates a DNS lookup to translate the domain name into a machine-readable IP address. It then establishes a secure, reliable TCP connection (often with TLS/SSL for HTTPS) to that IP. Once connected, the browser sends an HTTP request to the server, which processes it and sends back the HTML, CSS, and JavaScript files to render the webpage. 
2. What are these record types? Write one line each:
   - `A`, `AAAA`, `CNAME`, `MX`, `NS`
   - A (Address): Maps a domain name (e.g., example.com) directly to its IPv4 address.
   - AAAA (IPv6 Address): Maps a domain name to its IPv6 address, serving the same purpose as an A record but for 128-bit addresses.
   - CNAME (Canonical Name): Maps an alias or subdomain (e.g., www.example.com) to a different, canonical domain name rather than an IP address.
   - MX (Mail Exchange): Directs email for a domain to the appropriate mail server, specifying priority for redundancy.
   - NS (Name Server): Specifies which authoritative name servers hold the DNS records for a particular domain, effectively delegating control.
3. Run: `dig google.com` — identify the A record and TTL from the output
Running dig google.com queries the Domain Name System (DNS) for the A record (IPv4 address) of google.com. The output provides the IP address and the Time To Live (TTL) in the ANSWER SECTION. 
Example dig google.com Output (Simplified):
text
;; ANSWER SECTION:
text
google.com
text
.158 IN A  142.250.190.46
---

### Task 2: IP Addressing
1. What is an IPv4 address? How is it structured? (e.g., `192.168.1.10`)
- An IPv4 (Internet Protocol version 4) address is a 32-bit unique identifier assigned to a device on a network so it can send and receive data. IPv4 address is divided into 4 parts, called octets each octet=4bits tottal=32
2. Difference between **public** and **private** IPs — give one example of each
- Public IPs are internet-facing, while private IPs are used for internal communication within a network.
  
| Public IP                    | Private IP                         |
| ---------------------------- | ---------------------------------- |
| Accessible over the internet | Used inside a private network      |
| Assigned by ISP              | Assigned by router / local network |
| Must be globally unique      | Can be reused in many networks     |

eg.
-Public IP: 8.8.8.8
-Private IP: 192.168.1.10

3. What are the private IP ranges?
   - `10.x.x.x`, `172.16.x.x – 172.31.x.x`, `192.168.x.x`
   - Private IP Ranges internal networks and non-routable on the public internet,
     include: 10.0.0.0 – 10.255.255.255 (Class A)
172.16.0.0 – 172.31.255.255 (Class B)
192.168.0.0 – 192.168.255.255 (Class C) 
These ranges are used for local, home, and corporate networks to allow devices to communicate without requiring a unique public IP address for every single device. 
Key Details
10.x.x.x (10.0.0.0/8): Commonly used for large, enterprise networks.
172.16.x.x – 172.31.x.x (172.16.0.0/12): Often used in medium-sized networks.
192.168.x.x (192.168.0.0/16): Standard for home routers and small office networks.
IPv6: The range fc00::/7 is reserved for unique local addresses (ULAs), serving a similar private function. 
4. Run: `ip addr show` — identify which of your IPs are private
- My system has private IPs 172.30.1.2 for host networking and 172.17.0.1 for Docker internal communication.
- <img width="938" height="421" alt="image" src="https://github.com/user-attachments/assets/e2b05ee4-b005-4fae-a48a-edf6be6d8e1e" />

---

### Task 3: CIDR & Subnetting
1. What does `/24` mean in `192.168.1.0/24`?
2. How many usable hosts in a `/24`? A `/16`? A `/28`?
3. Explain in your own words: why do we subnet?
4. Quick exercise — fill in:

| CIDR | Subnet Mask | Total IPs | Usable Hosts |
|------|-------------|-----------|--------------|
| /24  |255.255.255.0|   256     |     254      |
| /16  | 255.255.0.0 |   65,563  |   65,562     |
| /28  |----255.240  |    16     |     14       |

---

### Task 4: Ports – The Doors to Services
1. What is a port? Why do we need them?
   - ip = home address
   - port= door number
   - Port identifies which service is running on a system.
   - Efficiency: They ensure data reaches the correct application by using specific, assigned port numbers. 
3. Document these common ports:

| Port | Service |
|------|---------|
| 22   | SSH     |
| 80   | HTTP    |
| 443  | HTTPS   |
| 53   | DNS     |
| 3306 | MYSQL   |
| 6379 | REDIS   |
| 27017| MONGODB |

3. Run `ss -tulpn` — match at least 2 listening ports to their services
Netid  State   Local Address:Port   Process
tcp    LISTEN  0.0.0.0:22            sshd
tcp    LISTEN  127.0.0.1:3306        mysqld

---

### Task 5: Putting It Together
Answer in 2–3 lines each:
- You run `curl http://myapp.com:8080` — what networking concepts from today are involved?
- 1️⃣ curl http://myapp.com:8080 — what concepts are involved?
DNS resolves myapp.com to an IP, TCP establishes a connection to port 8080, then an HTTP request is sent and the server returns a response.

- Your app can't reach a database at `10.0.1.50:3306` — what would you check first?
2️⃣ App can’t reach DB at 10.0.1.50:3306 — what to check first?
Check network reachability (ping / routing) and port access (firewall or security group allowing TCP 3306) between the app and the database.
---

## Documentation
- What you learned (3 key points)
DNS converts names to IPs
CIDR defines network size
Ports identify services
Most DevOps issues are networking-related
---
