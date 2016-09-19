# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
     Version control is a system that records changes to a file or set of files over time so that you can recall specific versions later.
     Version control allows you to revert files back to a previous state, revert the entire project back to a previous state, compare changes over time, see who last modified something that might be causing a problem, who introduced an issue and when, and more. Using a version control system also generally means that if you screw things up or lose files, you can easily recover.
* What is a branch and why would you use one?
    A branch in Git is simply a lightweight movable pointer to one of these commits. The default branch name in Git is master. As you initially make commits, you're given a master branch that points to the last commit you made. Every time you commit, it moves forward automatically.
    Using a branch is like the utility of "Save as..." for regular files: you tinker with multiple possibilities while keeping the original safe. Git enables this for directories, with the power to merge.
* What is a commit? What makes a good commit message?
    git commit "records changes to the repository". It commits the staged snapshot to the project history. Committed snapshots can be thought of as “safe” versions of a project.
    A good commit message should be concise and consistant. a well-crafted git commit message is the best way to communicate context about a change to fellow developers (and indeed to their future selves). A diff will tell you what changed, but only the commit message can properly tell you why.
* What is a merge conflict?
    If two people changed the same lines in the same file, or if one person decided to delete it while the other person decided to modify it, Git simply cannot know what is correct. Git will then mark the file as having a merge conflict - which you'll have to solve before you can continue your work.