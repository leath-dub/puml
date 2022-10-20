.POSIX:

PROXY=http://www.plantuml.com/plantuml/proxy?src=

# Put your own credentials here
USERNAME=leath-dub
REPONAME=puml
BRANCH=main
GITHUB_RAW=https://raw.githubusercontent.com
URL=$(PROXY)$(GITHUB_RAW)/$(USERNAME)/$(REPONAME)/$(BRANCH)

%:
	echo "$(URL)/$*.puml" | xargs curl -o $*.png
