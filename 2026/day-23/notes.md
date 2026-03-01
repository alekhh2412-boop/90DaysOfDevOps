# Day 23 – Git Branching & Working with GitHub

## Task 1: Understanding Branches

### 1. What is a branch in Git?
A branch is a separate line of development in Git.  
It allows you to work on new features, bug fixes, or experiments without affecting the main codebase.

---

### 2. Why do we use branches instead of committing everything to main?
- Keeps the main branch stable
- Allows parallel work by multiple developers
- Makes testing and experimentation safe
- Easier to review and merge changes

---

### 3. What is HEAD in Git?
HEAD is a pointer that shows:
- Which branch you are currently on
- Which commit is currently checked out

---

### 4. What happens to your files when you switch branches?
- Git updates your working directory
- Files change to match the snapshot of the target branch
- Uncommitted changes may block switching (to avoid data loss)

---

## Task 2: Branching Commands

### Branch Commands Used
- `git branch`
- `git branch feature-1`
- `git checkout feature-1`
- `git checkout -b feature-2`
- `git switch feature-1`
- `git branch -d feature-2`

### git switch vs git checkout
- `git switch` is only for branches (clean & safe)
- `git checkout` does many things (branches + files)
- Modern Git recommends `git switch` for branch operations

---

## Task 3: origin vs upstream

### What is origin?
- `origin` points to **your fork or your repo**
- Default remote when you clone a repo

### What is upstream?
- `upstream` points to the **original repository**
- Used to sync changes from the main source

---

## Task 4: git fetch vs git pull

### git fetch
- Downloads changes from remote
- Does NOT merge automatically
- Safe way to check updates

### git pull
- git fetch + git merge
- Downloads and applies changes
- Can cause conflicts

---

## Task 5: Clone vs Fork

### Difference between clone and fork

Clone:
- Creates a local copy of a repository
- No GitHub ownership
- Cannot push without permission

Fork:
- Creates a copy under your GitHub account
- Full control to push changes
- Used for open-source contribution

---

### When to use clone vs fork?
- Clone → when you have access or just want to learn
- Fork → when contributing to open-source projects

---

### How to keep fork in sync with original repo?
1. Add upstream remote  
   `git remote add upstream <original-repo-url>`

2. Fetch updates  
   `git fetch upstream`

3. Merge updates  
   `git merge upstream/main`

4. Push to your fork  
   `git push origin main`
