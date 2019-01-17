# Damir Dulic's Resume

[![Build Status](https://travis-ci.org/ddulic/resume.svg?branch=master)](https://travis-ci.org/ddulic/resume)

Used for the resume located @ https://damir.tech/resume

## Pipeline

Triggers Travis-Ci on commit and uses [markdown-resume](https://github.com/there4/markdown-resume) to generate the PDF.

Once the PDF is generated also generate the [hexo-website](https://github.com/ddulic/hexo-website) Resume Markdown with `generate-resume-page.sh` and pushed the PDF and `.md` to [hexo-website](https://github.com/ddulic/hexo-website) repo with `push-to-hexo-website.sh`, which has its own CI.

## Usage

```bash
docker run -v ${PWD}:/resume there4/markdown-resume md2resume pdf -t readable ddulic.md output/
```
