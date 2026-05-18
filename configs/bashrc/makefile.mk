SCH := $(HOME)/DotQuest/configs/bashrc
TO := $(HOME)

bashrc:
	cp $(SCH)/.bashrc $(TO)

.PHONY: bashrc