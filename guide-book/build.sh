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

# install the fonts
mkdir -p /usr/share/fonts/opentype/
cp /guide-book/fonts/AdobeFangsongStd-Regular.otf /usr/share/fonts/opentype/
cp /guide-book/fonts/AdobeHeitiStd-Regular\ \(v5.010\).otf /usr/share/fonts/opentype/
cp /guide-book/fonts/AdobeKaitiStd-Regular\ \(v5.010\).otf /usr/share/fonts/opentype/
cp /guide-book/fonts/AdobeSongStd-Light\ \(v5.010\).otf /usr/share/fonts/opentype/
mkfontscale
mkfontdir
fc-cache -fv
fc-list :lang=zh

# install the minted
wget http://mirrors.ctan.org/macros/latex/contrib/minted.zip
unzip minted.zip
cd minted/
make
mv minted.sty /usr/share/texlive/texmf-dist/tex/latex/minted
mv minted1.sty /usr/share/texlive/texmf-dist/tex/latex/minted
cd ..
apt-get install -y --no-install-recommends python-pygments

# intsall latex packages
tlmgr init-usertree
tlmgr install ulem

# run make
cd guide-book
make
