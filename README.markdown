# Utility script to diff athena prj files with git #

This is a simple script to initialize a [customized `git` repository](http://git-scm.com/book/en/Customizing-Git-Git-Attributes) which will properly diff `.prj` files for the [`athena`](http://cars9.uchicago.edu/~ravel/software/doc/Athena/html/) XAS data processing program.

To use, simply run `bash init.sh` in the directory you want the repository to be in.

You can also make a shell alias like this and add it to your `bashrc` or equivalent:

    alias 'git-init-prj'='git init; git config diff.zip.textconv zcat; echo "*.prj diff=zip" >> .gitattributes'

The `.apj` files for the `artemis` program are more complicated and a simple `zcat` will not suffice, but this shouldn't be too difficult and is on the to-do list.

Note that this will not reduce the amount of disk space required, since `git` still tracks the `.prj` files as binary gzipped data. However, it makes the diffs much easier to view using a command like `git log -p`.

# To-do #

1. Investigate the possibility of ignoring the `.prj` files but tracking the text for to make the repositories smaller. The downside is that it would be impossible to recreate the actual project file without gzipping the text again.
2. See if diffing `.apj` files could be similarly arranged.


