#!/bin/bash
apt-get update
apt-get install -y texlive-full
apt-get install -y texmaker
apt-get install -y make
apt-get install -y latexmk
apt-get install -y texlive-latex-extra --no-install-recommends

# Latex dependencies and packages
mkdir -p ~/packages
mkdir -p ~/texmf && cd ~/texmf && mkdir -p tex && cd tex && mkdir -p latex && cd latex && mkdir -p commonstuff
cd ~/packages
# fullpage.sty
wget http://mirrors.ctan.org/macros/latex/contrib/preprint.zip
unzip preprint.zip
rm -f preprint.zip
cd preprint
latexmk fullpage.ins
cp fullpage.sty ~/texmf/tex/latex/commonstuff/
cd ..
rm -rf preprint
# placeins.sty 
wget http://mirrors.ctan.org/macros/latex/contrib/placeins.zip
unzip placeins.zip
rm -f placeins.zip
cd placeins
cp placeins.sty ~/texmf/tex/latex/commonstuff/
cd ..
rm -rf placeins
# fancyref.sty
wget http://mirrors.ctan.org/macros/latex/contrib/fancyref.zip
unzip fancyref.zip
rm -f fancyref.zip
cd fancyref
latexmk fancyref.ins
cp fancyref.sty ~/texmf/tex/latex/commonstuff/
cd ..
rm -rf fancyref
# minted.sty
wget http://mirrors.ctan.org/macros/latex/contrib/minted.zip
unzip minted.zip
rm -f minted.zip
cd minted
latexmk minted.ins
cp minted.sty ~/texmf/tex/latex/commonstuff/
cd ..
rm -rf minted
# fvextra.sty
wget http://mirrors.ctan.org/macros/latex/contrib/fvextra.zip
unzip fvextra.zip
rm -f fvextra.zip
cd fvextra
cp fvextra.sty ~/texmf/tex/latex/commonstuff/
cd ..
rm -rf fvextra
# algorithmic.sty
wget http://mirrors.ctan.org/macros/latex/contrib/algorithms.zip
unzip algorithms.zip
rm -f algorithms.zip
cd algorithms
latexmk algorithms.ins
cp algorithmic.sty ~/texmf/tex/latex/commonstuff/
cd ..
rm -rf algorithms

exit 0
