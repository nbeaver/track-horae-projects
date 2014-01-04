#!/usr/bin/env bash
git init
git config diff.zip.textconv zcat
echo '*.prj diff=zip' > .gitattributes
# Reference: http://git-scm.com/book/en/Customizing-Git-Git-Attributes
