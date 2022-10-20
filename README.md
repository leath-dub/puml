# UML diagrams in markdown
  This repository uses puml proxy to generate uml diagrams from plain text.
This is also where I keep all of my uml diagrams(feel free to use as reference)

## USAGE
``<<query>>`` represents the un-suffixed name of your .puml file you wish to
convert
```sh
$ make <<query>>
```
alternatively you can run
```sh
$ make
```
which will operate on the most recently modified .puml file
possible variables(to edit in Makefile or directly in commandline)
```makefile
USERNAME=leath-dub
REPONAME=puml
BRANCH=main
GITHUB_RAW=https://raw.githubusercontent.com
```
