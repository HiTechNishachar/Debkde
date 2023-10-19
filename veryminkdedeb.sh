#!/bin/bash

set -x;

apt-get update -yq

packages=(
  # can I haz sandwich?
  aspell-en
  hunspell-en-us
  hyphen-en-us

  # aspell-pt-br
  # hunspell-pt-br
  # hyphen-pt-br

  # Apps
  ark
  neofetch
  dolphin
  gwenview
  kate
  kde-spectacle
  kmenuedit
  konsole
  okular
  qml-module-org-kde-newstuff
  systemsettings

  # Services
  bluedevil
  khotkeys
  kscreen
  kwalletmanager
  plasma-nm
  plasma-pa
  powerdevil
  polkit-kde-agent-1
  upower

  # DE
  kwin-x11
  plasma-desktop
  plasma-workspace
  sddm
  xorg

  # Theming
  breeze-gtk-theme
  kde-config-gtk-style
  kde-config-gtk-style-previwe
  sddm-theme-breeze

  # Libs and Plugins
  libqtspell-qt5-0
  qtvirtualkeyboard-plugin
  plasma-browser-integration
  plasma-runners-addons
  pulseaudio-module-bluetooth

  # Ark tooling
  unzip
)

arguments=(
   -y
   -q
  --no-install-recommends
)

apt-get install "${arguments[@]}" "${packages[@]}"