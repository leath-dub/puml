.POSIX:

PROXY=http://www.plantuml.com/plantuml/proxy?src=
MOST_RECENT_PUML=$(shell ls -ltr *.puml | tail -1 | awk '{print $$9}')

$(MOST_RECENT_PUML:.puml=).png: $(MOST_RECENT_PUML)
	cat $(MOST_RECENT_PUML) | wgetpaste -r | sed "s|^.*:|$(PROXY)https:|" | xargs curl -o $@

%:
	cat $*.puml | wgetpaste -r | sed "s|^.*:|$(PROXY)https:|" | xargs curl -o $*.png

.PHONY: push
