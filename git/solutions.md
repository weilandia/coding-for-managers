# Solutions

## Try Git
```
Press enter to submit commands

> git init

$ git status

$ git status

$ git add octocat.txt

$ git status

$ git commit -m "Add cute octocat story"

$ git add '*.txt`

$ git add .

$ git commit -m "Add all the octocat txt files"

$ git log

$ git remote add origin https://github.com/try-git/try_git.git

$ git push -u origin master

$ git pull origin master

$ git diff HEAD

$ git add octofamily/octodog.txt

$ git diff --staged

$ git reset octofamily/octodog.txt

$ git checkout --octocat.txt

$ git checkout -- octocat.txt

$ git branch clean_up

$ git checkout clean_up

$ git rm .

$ git commit -m "Remove all the cats"

$ git checkout master

$ git merge clean_up

$ git branch -d clean_up

$ git push

>
```
## Introduction to Git Exercises
Note you can either do it on Cloud9 or on your local terminal


### Exercise 1
```
antoinekrajnc:~/workspace (master) $ mkdir new-directory
antoinekrajnc:~/workspace (master) $ cd new-directory
antoinekrajnc:~/workspace/new-directory (master) $ git init
Initialized empty Git repository in /home/ubuntu/workspace/new-directory/.git/
antoinekrajnc:~/workspace/new-directory (master) $ touch README.md
antoinekrajnc:~/workspace/new-directory (master) $ git status
On branch master

Initial commit

Untracked files:
  (use "git add <file>..." to include in what will be committed)

        README.md

nothing added to commit but untracked files present (use "git add" to track)
antoinekrajnc:~/workspace/new-directory (master) $ add .
bash: add: command not found
antoinekrajnc:~/workspace/new-directory (master) $ git add .
antoinekrajnc:~/workspace/new-directory (master) $ git commit -m "initial commit"
[master (root-commit) 65fb908] initial commit
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 README.md
antoinekrajnc:~/workspace/new-directory (master) $ mkdir src
antoinekrajnc:~/workspace/new-directory (master) $ add .
bash: add: command not found
antoinekrajnc:~/workspace/new-directory (master) $ git add .
antoinekrajnc:~/workspace/new-directory (master) $ git status
On branch master
nothing to commit, working tree clean
antoinekrajnc:~/workspace/new-directory (master) $ touch file-1.html file-2.rb
antoinekrajnc:~/workspace/new-directory (master) $ git add .
antoinekrajnc:~/workspace/new-directory (master) $ git status
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

        new file:   file-1.html
        new file:   file-2.rb

antoinekrajnc:~/workspace/new-directory (master) $ git diff
antoinekrajnc:~/workspace/new-directory (master) $ git diff
diff --git a/file-1.html b/file-1.html
index e69de29..06688ef 100644
--- a/file-1.html
+++ b/file-1.html
@@ -0,0 +1 @@
+Hello world
\ No newline at end of file
antoinekrajnc:~/workspace/new-directory (master) $ git add file-1.html
antoinekrajnc:~/workspace/new-directory (master) $ git status
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

        new file:   file-1.html
        new file:   file-2.rb

antoinekrajnc:~/workspace/new-directory (master) $ git commit -m "new commit"
[master 4a8ee57] new commit
 2 files changed, 1 insertion(+)
 create mode 100644 file-1.html
 create mode 100644 file-2.rb
antoinekrajnc:~/workspace/new-directory (master) $ git log
commit 4a8ee57c3e9d0bb41674bd97b19a2ee7b8153dfb
Author: Antoine Krajnc <antoine@productschool.com>
Date:   Wed Feb 22 22:22:55 2017 +0000

    new commit

commit 65fb9080651bf9ee5888316e0c906af70cb2dc5b
Author: Antoine Krajnc <antoine@productschool.com>
Date:   Wed Feb 22 22:18:08 2017 +0000

    initial commit
antoinekrajnc:~/workspace/new-directory (master) $ git show
commit 4a8ee57c3e9d0bb41674bd97b19a2ee7b8153dfb
Author: Antoine Krajnc <antoine@productschool.com>
commit 4a8ee57c3e9d0bb41674bd97b19a2ee7b8153dfb
Author: Antoine Krajnc <antoine@productschool.com>
commit 4a8ee57c3e9d0bb41674bd97b19a2ee7b8153dfb
Author: Antoine Krajnc <antoine@productschool.com>
commit 4a8ee57c3e9d0bb41674bd97b19a2ee7b8153dfb
Author: Antoine Krajnc <antoine@productschool.com>
commit 4a8ee57c3e9d0bb41674bd97b19a2ee7b8153dfb
Author: Antoine Krajnc <antoine@productschool.com>
Date:   Wed Feb 22 22:22:55 2017 +0000

    new commit

diff --git a/file-1.html b/file-1.html
new file mode 100644
index 0000000..06688ef
--- /dev/null
+++ b/file-1.html
@@ -0,0 +1 @@
+Hello world
\ No newline at end of file
diff --git a/file-2.rb b/file-2.rb
antoinekrajnc:~/workspace/new-directory (master) $
```
