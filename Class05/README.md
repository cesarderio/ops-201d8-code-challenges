# Ops Challenge - Loops

## Overview

Loops let us repeat an operation either indefinitely or for a fixed number of repetitions in a program. There are two types of loops to be aware of: “while” loops and “for” loops.

## Objectives

* Write a script that displays running processes, asks the user for a PID, then kills the process with that PID.

* Use a loop in your script.

## Resources
* [Bash loops](https://ryanstutorials.net/bash-scripting-tutorial/bash-loops.php)

* Tutorials
  * [Bash](https://codefellows.github.io/ops-201-guide/curriculum/class-05/challenges/demo/bash.html)
  * [PowerShell](https://codefellows.github.io/ops-201-guide/curriculum/class-05/challenges/demo/powershell.html)
  * [Z shell](https://codefellows.github.io/ops-201-guide/curriculum/class-05/challenges/demo/zsh.html)

## Tasks
  * Write a script that:
    - Displays running processes
    - Asks the user for a PID
    - Kills the process with that PID
    - Starts over at step 1 and continues until the user exits with Ctrl + C

  * Use a loop so that the script will continuously start over, displaying the running processes, asking the user for input, etc.

  * For this assignment, initialize a process that won’t harm the OS’s functionality upon termination. Don’t kill essential processes required for the OS to work, such as kernel drivers.
      - Hint: you can open a second terminal in your development environment and start it pinging one of your other machines. This will be a safe process to target.

## Stretch Goals
* Include a step which asks the user if they would like to kill again, and if they indicate they do, causes the script to finish.

