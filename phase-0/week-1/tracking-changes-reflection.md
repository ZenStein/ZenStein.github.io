
###How does tracking and adding changes make developers' lives easier?
this is useful as it allows you to add functionality to your code, without the fear of breaking code that is working.  It also allows you to ‘go back’ if you decide to get rid of an idea that you THOUGHT would be good.
###What is a commit?
a commit is a 'checkpoint' in your code. It can be thought of as a 'marker' for where your code is currently at.
###What are the best practices for commit messages?
a commit message should be a short (generally less than 50 words), descriptive paragraph, using the imperative tense, describing what adding this commit to your code will do
###What does the HEAD^ argument mean?
The HEAD^ argument will refer you to to commit before the one you are currently on.
###What are the 3 stages of a git change and how do you move a file from one stage to the other?
first create a new branch, do work. Then git add, git commit, git push, go to master branch, then pull/merge. Using the command line, switching branches, and various git commands would be a general description on how you would accomplish a 'git change'
###Write a handy cheatsheet of the commands you need to commit your changes?
great cheatsheet link http://www.git-tower.com/blog/git-cheat-sheet/
###What is a pull request and how do you create and merge one?
Pull requests let you tell others about changes you've pushed to a GitHub repository. Once a pull request is sent, interested parties can review the set of changes, discuss potential modifications, and even push follow-up commits if necessary. the commands used are git push, git merge, used with appropiate variables
###Why are pull requests preferred when working with teams?
It allows your changes to be reviewed by others, insuring that the code is headed in th right direction, it also allows others to expand on the code base at the same time as others.
