#!/usr/bin/env bash
git init
# "Running git init in an existing repository is safe. It will not overwrite things that are already there."
# https://www.kernel.org/pub/software/scm/git/docs/git-init.html
git config diff.zip.textconv zcat
echo "*.prj diff=zip" >> .gitattributes
# Reference: http://git-scm.com/book/en/Customizing-Git-Git-Attributes
