.PHONY : all test plain

EMACS ?= emacs
CASK ?= cask

LOAD := -Q -nw -f toggle-debug-on-error -l composable-mark.el -l composable.el

all: test

test:
	$(CASK) exec ecukes

plain:
	$(EMACS) --version
	$(EMACS) $(LOAD) -f composable-mode
