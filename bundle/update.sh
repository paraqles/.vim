#!/bin/sh

update() {
  cd $1
  git pull
  cd ..
}

for rep in `ls`; do
  if [ $rep != ".." -a $rep != "." -a $rep != "update.sh" ]; then
    update $rep > /dev/null &
  fi
done
echo "Running update in background."
