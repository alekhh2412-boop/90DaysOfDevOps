# Linux Architecture Notes

## Linux Core Components
- Kernel: Manages hardware, memory, processes, and networking.
- User Space: Where users and applications run.
- systemd: Init system that manages services and startup.

## Processes
- A process is a running program.
- Created using fork() and exec() system calls.

### Process States
- Running (R)
- Sleeping (S)
- Stopped (T)
- Zombie (Z)

## systemd
- PID 1 process.
- Manages services, startup, shutdown, and logs.
- Automatically restarts failed services.

## Common Commands
- ps aux
- top
- systemctl status <service>
- journalctl -u <service>
- kill <PID>
