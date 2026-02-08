# Day 09 – Linux User & Group Management Challenge

## Users & Groups Created
- Users: tom, jerry, professor, nairobi
- Groups: developers, admins, project-team

## Group Assignments
- tom → developers, project-team
- jerry → developers, admins
- professor → admins
- nairobi → project-team

## Directories Created
- /opt/dev-project → group: developers, permissions: 775
- /opt/team-workspace → group: project-team, permissions: 775

## Commands Used
- useradd, passwd
- groupadd
- usermod -aG
- mkdir
- chgrp
- chmod
- groups
- ls -ld
- sudo -u

## What I Learned
- How to manage users and groups in Linux
- How group permissions work for shared directories
- How DevOps teams collaborate securely using groups

  ##screenshot of hands-on
  create urs & verify
  <img width="1902" height="1018" alt="add-usersgroup" src="https://github.com/user-attachments/assets/a4413a9f-7d8b-412d-9e41-8e718d3cba59" />
  create gro & verify
  <img width="1902" height="276" alt="create grp nd verify" src="https://github.com/user-attachments/assets/bfaa960f-41d0-4a12-9aea-169e5157277d" />
  assign usr to grp
  <img width="1895" height="313" alt="assign to grp" src="https://github.com/user-attachments/assets/62f3499f-f14c-47e5-a2a3-297f3de474ab" />
  create directory ,set grp & permission & verify
  <img width="1902" height="276" alt="create grp nd verify" src="https://github.com/user-attachments/assets/931f2508-08f6-49f3-b543-dd3d0d7178f9" />
  <img width="1882" height="251" alt="part2" src="https://github.com/user-attachments/assets/a23ef2eb-e362-4a48-a652-05e773d2146c" />

  


  
