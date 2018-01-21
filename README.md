# Damir Dulic's Resume

[![Build Status](https://travis-ci.org/ddulic/resume.svg?branch=master)](https://travis-ci.org/ddulic/resume)

Used for the resume located @ https://damir.tech/resume

## Pipeline

Triggers Travis-Ci on commit, which in turn builds a Docker Image from https://github.com/ddulic/markdown-resume/blob/master/Dockerfile which is used to generate the PDF

Once the PDF is generated also generate the [hexo-website](https://github.com/ddulic/hexo-website) Resume Markdown with `generate-resume-page.sh` and pushed the PDF and .md to [hexo-website](https://github.com/ddulic/hexo-website) repo with `push-to-hexo-website.sh`, which has its own CI.
