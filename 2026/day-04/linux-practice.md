* Short practice notes...

1.check running processes
  
  ps aux | head - cmd list all top processes
  top - it shows live runnig processes
  htop - also show us live running processe in enhancee colourfull look
  pgrep - it used to find PID
  
2.Insprect one systemd service
  systemctl status ssh -it show status of service is active /inactive/ falied
  systemctl show ssh -it show Shows all internal details (environment, paths, state)
