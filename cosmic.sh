#!/usr/bin/env bash

##################################################################################################################################
# Author    : Dan Cihon 
# Website   : https://www.dccwebsite.com
# Youtube   : https://youtube.com/future
##################################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################################

set -Euo pipefail
shopt -s nullglob

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
COMMON_DIR="$(cd -- "${SCRIPT_DIR}/../common" && pwd)"

source "${COMMON_DIR}/common.sh"

echo
tput setaf 2
echo "########################################################################"
echo "################### Install Cosmic"
echo "########################################################################"
tput sgr0
echo

list=(
cosmic
cosmic-applets
cosmic-applibrary
cosmic-bg
cosmic-comp
cosmic-edit
cosmic-files
cosmic-greeter
cosmic-icons
cosmic-idle
cosmic-initial-setup
cosmic-launcher
cosmic-notifications
cosmic-osd
cosmic-panel
cosmic-player
cosmic-randr
cosmic-screenshot
cosmic-session
cosmic-settings
cosmic-settings-daemon
cosmic-store
cosmic-term
cosmic-theme-editor
cosmic-workspaces-epoch
xdg-desktop-portal-cosmic
pop-launcher
)

count=0

for name in "${list[@]}" ; do
    count=$[count+1]
    tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
    install_packages $name
done

echo
tput setaf 3
echo "########################################################################"
echo "SKEL"
echo "Copying all files and folders from /etc/skel/ to ~"
echo "########################################################################"
tput sgr0
echo

echo
tput setaf 6
echo "##############################################################"
echo "###################  $(basename $0) done"
echo "##############################################################"
tput sgr0
echo
