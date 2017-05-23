#!/bin/bash

if [ ! -d demovibes ]; then
  echo "Cloning the repository"
  git clone https://github.com/arabek/demovibes demovibes
  echo "Done."
else
  echo "Repository already cloned, maybe you want to git pull instead?"
fi

echo ""
echo "Now you can start your box by telling your terminal to:"
echo "# cd vagrant && vagrant up"
