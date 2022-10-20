.POSIX:

PROXY=http://www.plantuml.com/plantuml/proxy?src=

# Put your own credentials here
USERNAME=leath-dub
REPONAME=puml
BRANCH=main
GITHUB_RAW=https://raw.githubusercontent.com
URL=$(PROXY)$(GITHUB_RAW)/$(USERNAME)/$(REPONAME)/$(BRANCH)

MOST_RECENT_PUML=$(shell ls -ltr *.puml | tail -1 | awk '{print $$9}')

$(MOST_RECENT_PUML:.puml=).png: $(MOST_RECENT_PUML)
	echo "$(URL)/$(MOST_RECENT_PUML:.puml=).puml" | xargs curl -o $@

%:
	echo "$(URL)/$*.puml" | xargs curl -o $*.png

.PHONY: push
