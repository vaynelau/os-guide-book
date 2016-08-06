#!/bin/bash

# install texlive-full
apt-get update && \
apt-get install -y --no-install-recommends \
    texlive-full \
    python-pygments \
    make \
    wget \
    unzip

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

# install the extra packages
cp -rf /guide-book/extraPackage/* /usr/share/texlive/texmf-dist/tex/latex/

# run make
cd guide-book
make
