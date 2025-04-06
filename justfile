# Default target
default: # show-easytimestamp
  @just --list

publish message: 
  git add .
  git commit -m "{{message}}"
  git push
