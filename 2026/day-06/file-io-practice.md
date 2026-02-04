# practice basic file read/write using only fundamental commands

1. I created a ampty file it name is notes.txt
   cmd-touch notes.txt
  
2. then I printed 3 lines "my name is alekhh" ,"I am learning DevOps"  
  "DevOps is a methodology" | tee -a notes.txt
   using echo , tee & overwirte cmd ,in the 3rd line i use tee for  write and display text
   
4. I checked inside of file content using "cat cmd"
   
5. last I read top and tail lines using head & tail cmd

touch (create an empty file)
cat (read full file)
head and tail (read parts of a file)
tee (write and display at the same time)
---
