# Git Workflow

Please follow the instructions in this workflow to ensure that we don't have merge conflicts.

1. Clone the dev branch repository to your local hard drive.
```sh
$ git clone -b dev https://github.com/daimeonpilcher/shelter.git
```

2. Confirm you are in the development branch.       
```sh
$ git branch` *dev
```

3. Create your new branch for the task or feature you are working on.
```sh
$ git checkout -b <branch name>` Switched to a new branch <branch name>
```

4. Commit your changes early and often! And pull any merged changes from the dev branch.
```sh
$ git add .
$ git commit -m "succinct yet decriptive message"
$ git pull origin dev
```

5. After you've completed the task or feature push your completed branch up to github
```sh
$ git push -u origin <branch name>
```

6. Create a pull request by logging on to github using the link below and clicking :
    - https://github.com/daimeonpilcher/shelter/branches/yours

We'll review the changes going into the dev branch in the morning and afternoon and make a decision to push to the master.
