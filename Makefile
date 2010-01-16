# Makefile
# 
# Installs all of my dot files, and creates empty local files if they do
# not already exist.
#
# vim: set noet ts=4:

srcdir ?= ${PWD}

SHELL = /bin/sh
SOURCES = tmux.conf vimrc zshrc inputrc

.PHONY : install

install:
	for i in $(SOURCES); do \
		cp -f ${HOME}/.$$i ${HOME}/.$$i.backup \
		cp -f ${srcdir}/_$$i ${HOME}/.$$i; \
		touch ${HOME}/.$$i.local; \
	done

