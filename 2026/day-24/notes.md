
# Day 24 – Advanced Git: Merge, Rebase, Stash & Cherry Pick

This document contains my hands-on observations and answers for Day 24 of the 90DaysOfDevOps challenge.  
Today I learned how different Git workflows work in real projects and how branches come back together.

---

## Task 1: Git Merge — Hands-On

### What is a Fast-Forward Merge?
A fast-forward merge happens when the target branch (main) has no new commits since the feature branch was created.  
Git simply moves the branch pointer forward without creating a new merge commit.

---

### When does Git create a merge commit instead?
Git creates a merge commit when both branches have diverged, meaning:
- The main branch has new commits
- The feature branch also has its own commits

In this case, Git cannot fast-forward and must create a merge commit to combine histories.

---

### What is a Merge Conflict?
A merge conflict occurs when:
- The same file
- The same line
- Is modified differently in two branches

Git cannot decide which change to keep, so it asks the developer to manually resolve the conflict.

---

## Task 2: Git Rebase — Hands-On

### What does rebase actually do to your commits?
Rebase takes commits from a feature branch and replays them on top of another branch (usually main).  
This rewrites commit history and creates new commit hashes.

---

### How is the history different from a merge?
- Merge preserves full branch history and may create a merge commit.
- Rebase creates a clean, linear history without merge commits.

---

### Why should you never rebase commits that have been pushed and shared?
Rebasing changes commit hashes.  
If commits are already pushed and shared, rebasing can cause confusion, broken history, and conflicts for other team members.

---

### When would you use rebase vs merge?

**Use Rebase when:**
- Working on a local feature branch
- Commits are not pushed
- You want a clean history

**Use Merge when:**
- Branch is shared with others
- You want to preserve full commit history
- Working in a team environment

---

## Task 3: Squash Commit vs Merge Commit

### What does squash merging do?
Squash merging combines multiple commits from a feature branch into a single commit when merging into the main branch.

---

### When would you use squash merge vs regular merge?

**Squash Merge:**
- Feature branch has many small or noisy commits
- Typos, formatting, WIP commits
- Keeps main branch clean

**Regular Merge:**
- Each commit is meaningful
- Full history is important
- Easier debugging and tracking

---

### What is the trade-off of squashing?
**Pros:**
- Clean and readable history

**Cons:**
- Individual commit history is lost
- Harder to debug step-by-step
- `git blame` gives less detailed information

---

## Task 4: Git Stash — Hands-On

### What is the difference between `git stash pop` and `git stash apply`?

- `git stash apply`  
  Applies the stashed changes but keeps the stash in the stash list.

- `git stash pop`  
  Applies the stashed changes and removes the stash from the list.

---

### When would you use stash in a real-world workflow?
- When working on half-finished code
- When you need to urgently switch branches
- When fixing production issues without committing incomplete work

---

## Task 5: Cherry Picking

### What does cherry-pick do?
Cherry-pick applies a specific commit from one branch onto another branch without merging the entire branch.

---

### When would you use cherry-pick in a real project?
- Applying a hotfix to production
- Copying a bug fix without merging all feature work
- Selecting only required commits

---

### What can go wrong with cherry-picking?
- Cherry-pick can cause conflicts
- Duplicate commits may appear
- Context from previous commits may be missing

---

## Summary

- Merge preserves history
- Rebase rewrites history
- Squash cleans history
- Stash helps with context switching
- Cherry-pick applies selective commits

Today’s tasks helped me understand real-world Git workflows used in DevOps and team environments.
