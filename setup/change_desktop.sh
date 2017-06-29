#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
	echo "This script needs root privileges" >&2
	exit 1
fi

INPUT="no"
echo -n "Really uninstall Unity desktop and install Lxde (Lubuntu desktop)? (y) "
read -r INPUT
if [ "${INPUT,,}" != "y" ]; then
	echo "Aborted"
	exit 0
fi

echo -e "\n========================================"
echo      "  Uninstalling unity desktop and tools"
echo -e   "========================================\n"
apt-get autoremove --purge unity unity-common unity-services unity-lens-\* unity-scope-\* unity-webapps-\* gnome-control-center-unity hud libunity-core-6\* libunity-misc4 libunity-webapps\* appmenu-gtk appmenu-gtk3 appmenu-qt\* overlay-scrollbar\* activity-log-manager-control-center firefox-globalmenu thunderbird-globalmenu libufe-xidgetter0 xul-ext-unity xul-ext-webaccounts webaccounts-extension-common xul-ext-websites-integration gnome-control-center gnome-session

echo -e "\n========================================"
echo      "       Installing Lubuntu desktop"
echo -e   "========================================\n"
apt-get install lubuntu-desktop

echo -e "\n========================================"
echo      "                  DONE"
echo -e   "========================================\n"

exit 0
