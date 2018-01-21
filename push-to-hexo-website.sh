#!/bin/bash

git config --global user.email "me@damir.tech"
git config --global user.name "ddulic" 

cd && git clone --quiet --branch=master  https://ddulic:$GITHUB_API@github.com/ddulic/hexo-website hexo > /dev/null

cd && cp $HOME/build/ddulic/resume/index.md hexo/source/resume/
cp $HOME/markdown-resume/examples/output/ddulic.pdf hexo/

cd hexo
git add -f .
git commit -m "Travis: updated resume, build $TRAVIS_BUILD_NUMBER pushed."
git push -fq origin master > /dev/null
echo -e "Pushed updated resume page to Github\n"
