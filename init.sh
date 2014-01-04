#!/usr/bin/env bash
git init
git config diff.zip.textconv zcat
echo '*.prj diff=zip' > .gitattributes
