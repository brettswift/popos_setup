#!/usr/bin/env bash
set -x
# source common functions
. functions.sh

#TODO: this path is deprecated, use /usr/share/fonts
mkdir -p ~/.fonts
############## Font Awesome ###################
WORKDIR=workdir
mkdir -p ${WORKDIR}
pushd ${WORKDIR}

FONT_AWESOME_REPO=FortAwesome/Font-Awesome
FONT_AWESOME_VERSION=$(get_latest_release ${FONT_AWESOME_REPO})

wget --no-check-certificate "https://github.com/FortAwesome/Font-Awesome/releases/download/${FONT_AWESOME_VERSION}/fontawesome-free-${FONT_AWESOME_VERSION}-web.zip" \
	-O fontawesome.zip

unzip fontawesome.zip


############## San Francisco Font (apple) ###################
#SAN_FRAN_REPO=supermarin/YosemiteSanFranciscoFont

wget --no-check-certificate https://github.com/supermarin/YosemiteSanFranciscoFont/archive/master.zip \
	-O san-fran.zip

unzip san-fran.zip

POWERLINE_FONTS_REPO=powerline/fonts
wget --no-check-certificate https://github.com/${POWERLINE_FONTS_REPO}/archive/master.zip \
	-O powerline.zip 
unzip powerline.zip 
cd fonts-master 
./install.sh

find . -name '*.ttf' -exec mv -f {} ~/.fonts/ \;
popd
rm -rf ${WORKDIR}
