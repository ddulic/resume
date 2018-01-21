#!/bin/bash

if [ $# -ne 2 ]
  then
    echo "ERROR: Invalid number of arguments supplied."
    exit 1
fi

PAGE=$1
DEST=$2

echo '---
title: Damir Dulić, DevOps Engineer
date: 2018-01-04 23:23:14
---

---' > $DEST

FROM=$(grep -n "### Profile" $PAGE | awk -F':' '{print $1}')
TO=$(grep -n "### Footer" $PAGE | awk -F':' '{print $1}')
awk "FNR>=$FROM && FNR<=$(expr $TO - 1)" $PAGE >> $DEST

echo '![](/images/damir-dulic.jpg)

Here is some social media stuff ⬇️
- [Linkedin](https://www.linkedin.com/in/ddulic/)
- [Github](https://github.com/ddulic)
- [Twitter](https://twitter.com/ddulic92)
- and [Keybase](https://keybase.io/ddulic) to confirm it all 🔑

---

If you want to contact me, my email is in the pdf version of my resume which can be viewed/downloaded <a class="no-smoothstate" href="/ddulic.pdf">here</a> ( please ignore the somewhat broken links in the pdf, there seems to be an issue in the tool used to generate the pdf :/ ).' >> $DEST

sed -i '/<div style="page-break-after: always;"><\/div>/d' $DEST
sed -i 's/ {#profile}//g' $DEST
sed -i 's/ {#skills}//g' $DEST
sed -i 's/ {#experience}//g' $DEST
sed -i 's/ {#projects}//g' $DEST
sed -i 's/ {#education}//g' $DEST
