#!/bin/bash

git config --global user.email "me@damir.tech"
git config --global user.name "ddulic"

cd && git clone --quiet --branch=master  https://ddulic:$GITHUB_API@github.com/ddulic/damir.tech hugo > /dev/null

cd && cp $HOME/build/ddulic/resume/index.md hugo/content/
cp $HOME/build/ddulic/resume/output/ddulic.pdf hugo/static/

cd hugo
git add -f .
git commit -m "Travis: updated resume, build $TRAVIS_BUILD_NUMBER pushed."
git push -fq origin master > /dev/null
echo -e "Pushed updated resume page to Github\n"
