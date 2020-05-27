
Debian
====================
This directory contains files used to package aiasd/aias-qt
for Debian-based Linux systems. If you compile aiasd/aias-qt yourself, there are some useful files here.

## aias: URI support ##


aias-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install aias-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your aiasqt binary to `/usr/bin`
and the `../../share/pixmaps/aias128.png` to `/usr/share/pixmaps`

aias-qt.protocol (KDE)

