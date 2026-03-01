# Git Commands Reference

This document contains commonly used Git commands learned during my DevOps journey.
Each command includes a short description and an example.

##  Setup & Config

### git --version
**What it does:**  
Checks the installed Git version.

**Example:**
```bash
git --version

-  Basic Workflow 

### git config --global user.name "Alekh"
**What it does:**
set the username for git commits.

**Example:**
```bash
git config --global user.name "Alekh"
 
### git config --global user.email "your email"
**What it does:**  
 -sets the email address for Git commits.
**Example:**
```bash
git config --global user.email "alekh@email.com"

### git config --list  
**What it does:**  
- Displays all Git configuration setting

**Example:**
```bash
git config --list

Basic Workflow
### git init 
**What it does:**  
-  initializes a new Git repository in the current directory

**Example:**
```bash
git init alekh.txt

### git status 
**What it does:**  
- Shows the current status of files in repository

**Example:**
```bash
git status

### git add 
**What it does:**  
- Add files to the staging area

**Example:**
```bash
git add README.md

### git add. 
**What it does:**  
- Stages all modified and new files.

**Example:**
```bash
git add.

### git commit -m 
**What it does:**  
- saves staged changes to the repository with a message

**Example:**
```bash
 git commit -m "initial commit"

## viewing Changes

### git log 
**What it does:**  
- Shows the commit history

**Example:**
```bash
git log

### git log --oneline 
**What it does:**  
- shows commit history in short, one-line format.

**Example:**
```bash
git log --oneline

### git diff 
**What it does:**  
- shows differences between working directory and staging area

**Example:**
```bash
git diff

### git branch 
**what it does:**
-shows how many branches are there
**Example:**
git branch 
