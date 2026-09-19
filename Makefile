HUGO ?= hugo
LASTCOMMIT := $(shell git log -1 --format=%cI)
RUN := HUGO_PARAMS_LASTCOMMIT='$(LASTCOMMIT)'

.PHONY: serve build drafts clean

serve:
	$(RUN) $(HUGO) server

drafts:
	$(RUN) $(HUGO) server --buildDrafts --buildFuture

build:
	$(RUN) $(HUGO) --minify

clean:
	rm -rf public resources .hugo_build.lock
