#!/bin/bash

# install texlive-full
apt-get update && \
apt-get install -y --no-install-recommends \
    texlive-full \
    python-pygments \
    make

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

# install minted.sty
wget https://raw.githubusercontent.com/gpoore/minted/master/source/minted.sty
wget https://raw.githubusercontent.com/gpoore/minted/master/source/minted1.sty
mkdir -p /usr/share/texlive/texmf-dist/tex/latex/minted
cp minted.sty minted1.sty /usr/share/texlive/texmf-dist/tex/latex/minted 

#install fvextra.sty
wget https://raw.githubusercontent.com/gpoore/fvextra/master/fvextra/fvextra.sty
mkdir -p /usr/share/texlive/texmf-dist/tex/latex/fvextra
cp fvextra.sty /usr/share/texlive/texmf-dist/tex/latex/fvextra

# run make
cd guide-book
make
