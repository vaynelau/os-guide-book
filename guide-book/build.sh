#!/bin/bash

# install texlive 2015 and dependencies
apt-get update && \
apt-get install -y --no-install-recommends \
    texlive-latex-extra \
    texlive-latex-recommended \
    texlive-fonts-extra \
    texlive-fonts-recommended \
    texlive-lang-chinese \
    texlive-formats-extra \
    lmodern \
    wget \
    xzdec

# intsall latex packages
tlmgr init-usertree
tlmgr install ulem

cd /guide-book
# run make

make
