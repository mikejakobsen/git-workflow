pull() {
  if [ $# -eq 2 ]; then
    git pull --rebase -q $2 "$(git rev-parse --abbrev-ref HEAD)"
  else
    git pull --rebase -q origin "$(git rev-parse --abbrev-ref HEAD)"
  fi
}

push() {
  if [ $# -eq 2 ]; then
    git push -q $2 "$(git rev-parse --abbrev-ref HEAD)"
  else
    git push -q origin "$(git rev-parse --abbrev-ref HEAD)"
  fi
}

git-it() {
  git add "$(git rev-parse --show-toplevel)"
  if [ $# -eq 1 ]; then
    git commit -a -m "$1"
  else
    git commit -a -m "I'm too lazy to write a commit message. [¬º-°]¬"
  fi
  pull
  push
}


