# Utility script to track athena prj files with git #

This is a simple script to initialize a [customized git repository](http://git-scm.com/book/en/Customizing-Git-Git-Attributes) which will properly diff `.prj` files for the [`athena`](http://cars9.uchicago.edu/~ravel/software/doc/Athena/html/) XAS data processing program.

To use, simply run `bash init.sh` in the directory you want the repository to be in.

You can also make a shell alias like this and add it to your `bashrc` or equivalent:

    alias 'git-init-prj'='git init; git config diff.zip.textconv zcat; echo "*.prj diff=zip" > .gitattributes'

The `.apj` files for the `artemis` program are more complicated and a simple `zcat` will not suffice, but this shouldn't be too difficult and is on the to-do list.
