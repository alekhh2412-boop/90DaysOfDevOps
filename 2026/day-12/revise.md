# Day 12 – Revision (Days 01–11)

## What I Reviewed Today
- Linux basics and command-line confidence
- Processes and services (ps, systemctl, journalctl)
- File operations, permissions, and ownership
- User and group management concepts

## Commands Re-run
- ps aux
- systemctl status ssh
- journalctl -u ssh -n 10
- chmod 644 notes.txt
- chown tokyo:developers ownership-check.txt

## Observations
- SSH service is active and running without errors
- journalctl helps quickly check service-related logs
- File permissions directly control access
- Ownership is critical for shared directories and apps

## Mini Self-Check

### 1. Three commands that save me the most time
- ls -l → quickly checks permissions & ownership
- systemctl status → fastest way to check service health
- journalctl -u → immediate access to service logs

### 2. How I check if a service is healthy
- systemctl status <service>
- ps aux | grep <service>
- journalctl -u <service> -n 20

### 3. Safe way to change ownership & permissions
Example:
- sudo chown appuser:appgroup /opt/app
- sudo chmod 755 /opt/app

Always verify using ls -l.

### 4. Focus for next 3 days
- Stronger grip on permissions & ownership
- More troubleshooting practice
- Start thinking like “what will break in production?”

## Key Takeaways
- Linux fundamentals are the base of DevOps
- Logs first, restart later
- Permissions and ownership prevent most production issues
