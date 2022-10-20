# UML diagrams in markdown
  This repository uses puml proxy to generate uml diagrams from plain text.
This is also where I keep all of my uml diagrams(feel free to use as reference)

  This depends on ``wgetpaste`` to work.  It basically uses a pastebin to
upload uml files and convert via the proxy

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
