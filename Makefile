portdirs := $(shell find . -mindepth 1 -type d)

all: REPO index.html

REPO: $(portdirs)
	httpup-repgen

index.html: $(portdirs)
	portspage --title="CRUX ports from kp4" --date-from-file . > $@

.PHONY: all
